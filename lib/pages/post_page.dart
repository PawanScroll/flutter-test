import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import 'package:stck_site/store/active_post.dart';
import 'package:stck_site/scaffolds/post_scaffold.dart';
import 'package:stck_site/components/posts/comments_below_post.dart';

class PostPage extends StatefulWidget {
  final int? id;
  final int? siteId;

  const PostPage({super.key, required this.id, required this.siteId});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return PostScaffold(
      sid: widget.siteId,
      pid: widget.id,
      body: ChangeNotifierProvider(
        create: (context) => ActivePost(),
        child: Center(
          child: widget.id != null
              ? PostContainer(
                  id: widget.id,
                  siteId: widget.siteId,
                )
              : const Text(
                  '404',
                  style: TextStyle(fontSize: 24),
                ),
        ),
      ),
    );
  }
}

class PostContainer extends StatefulWidget {
  final int? id;
  final int? siteId;

  const PostContainer({super.key, required this.id, required this.siteId});

  @override
  State<PostContainer> createState() => _PostContainerState();
}

class _PostContainerState extends State<PostContainer> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final activePostStore = Provider.of<ActivePost>(context, listen: false);
      activePostStore.getPost(widget.siteId ?? 1, widget.id ?? 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ActivePost>(
      builder: (context, activePost, child) {
        return ListView(
          children: [
            // Top section
            const PostHeader(),

            // Content section
            Padding(
              padding: const EdgeInsets.all(20),
              child: HtmlWidget(
                activePost.post?.content ?? '',
              ),
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

            // Comments section
            const Padding(
              padding: EdgeInsets.all(20),
              child: CommentsSection(),
            ),
          ],
        );
      },
    );
  }
}

class PostHeader extends StatefulWidget {
  const PostHeader({super.key});

  @override
  State<PostHeader> createState() => _PostHeaderState();
}

class _PostHeaderState extends State<PostHeader> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ActivePost>(
      builder: (context, activePost, child) {
        final publishedDate = activePost.post?.published != null
            ? DateFormat('dd MMM, yyyy')
                .format(DateTime.parse(activePost.post!.published))
            : '';
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                activePost.post?.title ?? '',
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                publishedDate,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const Divider(height: 20, thickness: 1),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    activePost.post?.author.avatar?.fallback ?? '',
                  ),
                ),
                title: Text(activePost.post?.author.name ?? ''),
                subtitle: Text(activePost.post?.author.bio ?? ''),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
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
