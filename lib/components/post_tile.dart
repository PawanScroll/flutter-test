import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stck_site/models/post.dart';

class PostTile extends StatefulWidget {
  const PostTile({super.key, required this.post});

  final Post post;

  @override
  State<PostTile> createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/post/${widget.post.id}');
      },
      child: SizedBox(
        height: 500,
        child: Card(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                height: 350,
                width: double.infinity,
                child: widget.post.meta.cover.src?.fallback != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          widget.post.meta.cover.src?.fallback ?? '',
                        ),
                      )
                    : const Text('no image'),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ListTile(
                        title: Text(widget.post.title),
                        subtitle: Text(widget.post.author.name),
                      ),
                      const ButtonBar(
                        alignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Icon(Icons.favorite_border),
                            onPressed: null,
                          ),
                          IconButton(
                            icon: Icon(Icons.comment),
                            onPressed: null,
                          ),
                          IconButton(
                            icon: Icon(Icons.share),
                            onPressed: null,
                          ),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: null,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
