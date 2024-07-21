import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:stck_site/store/active_post.dart';

class PostScaffold extends StatefulWidget {
  final Widget body;
  final int? sid;
  final int? pid;

  const PostScaffold({
    super.key,
    required this.body,
    required this.sid,
    required this.pid,
  });

  @override
  State<PostScaffold> createState() => _PostScaffoldState();
}

class _PostScaffoldState extends State<PostScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post page')),
      bottomNavigationBar: BottomAppBar(
        height: 120,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 25),
                  child: Text('comments floating animation'),
                )
              ],
            ),
            ChangeNotifierProvider(
              create: (context) => ActivePost(),
              child: ActionBar(
                sid: widget.sid,
                pid: widget.pid,
              ),
            ),
          ],
        ),
      ),
      body: widget.body,
    );
  }
}

class ActionBar extends StatelessWidget {
  final int? sid;
  final int? pid;

  const ActionBar({
    super.key,
    required this.sid,
    required this.pid,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ActivePost>(
      builder: (context, activePost, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                activePost.likePost(sid, pid);
              },
              icon: const Icon(Icons.favorite_border_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.comment),
            ),
            IconButton(
              icon: Icon(Icons.share_outlined),
              onPressed: () {},
            )
          ],
        );
      },
    );
  }
}
