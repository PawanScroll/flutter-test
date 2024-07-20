import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'package:stck_site/models/comment.dart';
import 'package:stck_site/store/active_post.dart';

class CommentsSection extends StatelessWidget {
  const CommentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ActivePost>(
      builder: (context, activePost, child) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 223, 220, 220),
                constraints: const BoxConstraints(
                  minHeight: 0.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children:
                        List.generate(activePost.comments.length, (index) {
                      return CommentWidget(
                        comment: activePost.comments[index],
                      );
                    }),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Write a comment ...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        maxLines: 3,
                        minLines: 1,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.send),
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

class CommentWidget extends StatelessWidget {
  final Comment comment;

  const CommentWidget({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    var created = DateTime.parse(comment.created);
    var timeText = timeago.format(created);
    return Column(children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 251, 249, 249)),
        child: Padding(
          // padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage(comment.commenter.avatar?.fallback ?? ''),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    comment.commenter.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    comment.commenter.tags?[0] ?? '',
                    style: const TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    timeText,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(comment.content),
              const SizedBox(height: 5),
              Row(
                children: [
                  const SizedBox(width: 20),
                  const Icon(Icons.reply, size: 16),
                  const SizedBox(width: 5),
                  Text(
                    'Reply',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      if (comment.replies != null)
        Container(
          margin: const EdgeInsets.only(left: 20, top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: comment.replies!.map((reply) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: CommentWidget(comment: reply),
              );
            }).toList(),
          ),
        ),
    ]);
  }
}
