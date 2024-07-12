import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:stck_site/store/site_content.dart';
import 'package:stck_site/components/post_tile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Some'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => SiteContent(),
        child: const PostsList(),
      ),
    );
  }
}

class PostsList extends StatefulWidget {
  const PostsList({super.key});

  @override
  State<PostsList> createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final siteContentStore = Provider.of<SiteContent>(context, listen: false);
      if (siteContentStore.posts.isEmpty) {
        siteContentStore.getPosts();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SiteContent>(
      builder: (context, siteContent, child) {
        return siteContent.isLoading
            ? const Center(child: Text('Loading'))
            : ListView.builder(
                itemCount: siteContent.posts.length,
                itemBuilder: (context, index) {
                  return PostTile(post: siteContent.posts[index]);
                },
              );
      },
    );
  }
}
