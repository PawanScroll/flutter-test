import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stck_site/scaffolds/base_scaffold.dart';

import 'package:stck_site/store/site_content.dart';
import 'package:stck_site/store/active_site.dart';
import 'package:stck_site/components/post_tile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => SiteContent()),
        ],
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
      final activeSiteStore = Provider.of<ActiveSite>(context, listen: false);

      siteContentStore.getPosts(activeSiteStore.site?.id ?? 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<SiteContent, ActiveSite>(
      builder: (context, siteContent, activeSite, child) {
        return siteContent.isLoading
            ? const Center(child: Text('Loading'))
            : siteContent.posts.isNotEmpty
                ? ListView.builder(
                    itemCount: siteContent.posts.length,
                    itemBuilder: (context, index) {
                      return PostTile(post: siteContent.posts[index]);
                    },
                  )
                : const Center(
                    child: Text(
                      'No Blog Posts',
                      style: TextStyle(fontSize: 32),
                    ),
                  );
      },
    );
  }
}
