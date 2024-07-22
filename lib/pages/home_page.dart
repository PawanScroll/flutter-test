import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      return ListView.builder(
          itemCount: featuredPosts.posts.length,
          itemBuilder: (context, index) {
            return ListTile(post: featuredPosts.posts[index]);
          });
    });
  }
}

class ListTile extends StatefulWidget {
  final Post post;
  const ListTile({super.key, required this.post});

  @override
  State<ListTile> createState() => _ListTileState();
}

class _ListTileState extends State<ListTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

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
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ImageSrc imageSrc = const ImageSrc();
    if (widget.post.meta.cover.src is ImageSrc) {
      imageSrc = widget.post.meta.cover.src as ImageSrc;
    }
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: 10,
            child: Center(
              child: Text(
                'stck.me',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              ),
            ),
          ),
          Column(
            children: [
              SlideTransition(
                position: _animation,
                child: Image.network(
                  imageSrc.fallback ?? '',
                  height: 200,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.post.author.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                widget.post.title,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text('PRICE \$${widget.post.pricing?['USD']}'),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Buy'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
