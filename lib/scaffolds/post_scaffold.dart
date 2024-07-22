import 'dart:async';
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
        height: 132,
        child: Column(
          children: [
            const CommentsEngagementBar(),
            ActionBar(
              sid: widget.sid,
              pid: widget.pid,
            ),
          ],
        ),
      ),
      body: widget.body,
    );
  }
}

class CommentsEngagementBar extends StatefulWidget {
  const CommentsEngagementBar({super.key});

  @override
  State<CommentsEngagementBar> createState() => _CommentsEngagementBarState();
}

class _CommentsEngagementBarState extends State<CommentsEngagementBar> {
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    final activePost = Provider.of<ActivePost>(context, listen: false);
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        if (activePost.comments.isNotEmpty) {
          _currentIndex = (_currentIndex + 1) % activePost.comments.length;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ActivePost>(
      builder: (context, activePost, child) {
        if (activePost.comments.isEmpty) {
          return const SizedBox();
        }

        return Container(
          height: 60,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
            child: Text(
              activePost.comments[_currentIndex].content,
              key: ValueKey<int>(_currentIndex),
            ),
          ),
        );
      },
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
              icon: const Icon(Icons.share_outlined),
              onPressed: () {},
            )
          ],
        );
      },
    );
  }
}
