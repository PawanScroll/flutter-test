import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stck_site/scaffolds/base_scaffold.dart';
import 'package:stck_site/store/site_content.dart';
import 'package:stck_site/store/active_site.dart';
import 'package:stck_site/components/post_tile.dart';

class SitePage extends StatefulWidget {
  const SitePage({super.key});

  @override
  State<SitePage> createState() => _SitePageState();
}

class _SitePageState extends State<SitePage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => SiteContent()),
        ],
        child: const UserProfile(),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ActiveSite>(
      builder: (context, activeSite, child) {
        return const Column(
          children: [
            UserInfoSection(),
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(text: 'POSTS 84'),
                        Tab(text: 'STORIES 3'),
                        Tab(text: 'ABOUT'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          PostsList(),
                          Center(child: Text('Stories')),
                          Center(child: Text('About')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class UserInfoSection extends StatelessWidget {
  const UserInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ActiveSite>(builder: (context, activeSite, child) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                activeSite.site?.avatar.fallback ?? '',
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '${activeSite.site?.name}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('23 Followers'),
                SizedBox(width: 16),
                Text('85 Following'),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('+ Follow'),
            ),
          ],
        ),
      );
    });
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
