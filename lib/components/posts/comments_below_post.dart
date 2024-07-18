import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:stck_site/models/comment.dart';
import 'package:stck_site/store/active_post.dart';

class CommentsSection extends StatelessWidget {
  const CommentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ActivePost>(
      builder: (context, activePost, child) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: activePost.comments.length,
                itemBuilder: (context, index) {
                  return CommentWidget(
                    comment: activePost.comments[index],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a comment ...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class CommentWidget extends StatelessWidget {
  final Comment comment;

  const CommentWidget({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage:
                NetworkImage(comment.commenter.avatar.fallback ?? ''),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      comment.commenter.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'Creator',
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10),
                    // Text(
                    //   comment.timeAgo,
                    //   style: const TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(comment.content),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(Icons.reply, size: 16),
                    const SizedBox(width: 5),
                    Text('Reply',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
