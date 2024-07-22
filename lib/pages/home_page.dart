import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:palette_generator/palette_generator.dart';

import 'package:stck_site/store/featured_posts.dart';
import 'package:stck_site/models/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/search');
        },
      ),
      body: ChangeNotifierProvider(
          create: (context) => FeaturedPosts(), child: const ListContainer()),
    );
  }
}

class ListContainer extends StatefulWidget {
  const ListContainer({super.key});

  @override
  State<ListContainer> createState() => _ListContainerState();
}

class _ListContainerState extends State<ListContainer> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<FeaturedPosts>(context, listen: false).getPosts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FeaturedPosts>(builder: (context, featuredPosts, child) {
      return PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: featuredPosts.posts.length,
        itemBuilder: (context, index) {
          return PostTile(post: featuredPosts.posts[index]);
        },
      );
    });
  }
}

class PostTile extends StatefulWidget {
  final Post post;
  const PostTile({super.key, required this.post});

  @override
  State<PostTile> createState() => _PostTileState();
}

class _PostTileState extends State<PostTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  PaletteGenerator? paletteGenerator;

  ImageSrc imageSrc = const ImageSrc();

  Future<void> _updatePaletteGenerator() async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      NetworkImage(imageSrc.fallback ?? ''),
      size: Size(imageSrc.meta?.height.toDouble() ?? 0,
          imageSrc.meta?.width.toDouble() ?? 0),
      maximumColorCount: 20,
    );
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
    _animation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, 0.05),
    ).animate(_controller);

    if (widget.post.meta.cover.src is ImageSrc) {
      imageSrc = widget.post.meta.cover.src as ImageSrc;
    }
    _updatePaletteGenerator();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              paletteGenerator?.lightVibrantColor?.color ?? Colors.grey,
              paletteGenerator?.lightMutedColor?.color ?? Colors.grey,
            ]),
      ),
      child: Column(
        children: [
          const Text(
            'stck.me',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SlideTransition(
              position: _animation,
              child: Image.network(
                imageSrc.fallback ?? '',
                height: 200,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            widget.post.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                widget.post.author.avatar?.fallback ?? '',
              ),
            ),
            title: Text(widget.post.author.name),
          ),
          const SizedBox(height: 10),
          Text(
            widget.post.summary,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const SizedBox(height: 10),
          Text('PRICE ₹ ${widget.post.pricing?['INR']}'),
        ],
      ),
    );
  }
}
