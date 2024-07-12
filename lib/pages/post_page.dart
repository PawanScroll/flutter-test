import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import 'package:stck_site/store/active_post.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key, required this.id});

  final int? id;

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Post id: ${widget.id}'),
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () => {context.go('/')},
          ),
        ),
        body: ChangeNotifierProvider(
          create: (context) => ActivePost(),
          child: Center(
            child: widget.id != null
                ? PostContainer(
                    id: widget.id,
                  )
                : const Text(
                    '404',
                    style: TextStyle(fontSize: 24),
                  ),
          ),
        ));
  }
}

class PostContainer extends StatefulWidget {
  const PostContainer({super.key, required this.id});

  final int? id;

  @override
  State<PostContainer> createState() => _PostContainerState();
}

class _PostContainerState extends State<PostContainer> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ActivePost>(context, listen: false).getPost(widget.id ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ActivePost>(
      builder: (context, activePost, child) {
        return SingleChildScrollView(
          child: Column(
            children: [
              // Top section
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    activePost.post?.author.avatar['url'] ?? '',
                  ),
                ),
                title: Text(activePost.post?.author.name ?? ''),
                subtitle: Text(activePost.post?.author.bio ?? ''),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              // Content section
              HtmlWidget(
                activePost.post?.content ?? '',
              ),
              // Bottom section
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.favorite_border),
                        const SizedBox(width: 4),
                        Text('${activePost.post?.likes ?? 0}'),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.comment),
                        const SizedBox(width: 4),
                        Text('${activePost.post?.commentsCount ?? 0}'),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(Icons.share),
                        SizedBox(width: 4),
                        Text('Share'),
                      ],
                    ),
                    const Icon(Icons.more_vert),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
