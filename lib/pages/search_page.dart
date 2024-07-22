import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'package:stck_site/models/site.dart';
import 'package:stck_site/store/search.dart';
import 'package:stck_site/store/active_site.dart';
import 'package:stck_site/scaffolds/base_scaffold.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => SearchStore()),
        ],
        child: const SearchContainer(),
      ),
    );
  }
}

class SearchContainer extends StatefulWidget {
  const SearchContainer({super.key});

  @override
  State<SearchContainer> createState() => _SearchContainerState();
}

class _SearchContainerState extends State<SearchContainer> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<SearchStore>(context, listen: false).search('');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<SearchStore, ActiveSite>(
      builder: (context, searchStore, activeSite, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Search storytellers',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                onChanged: (value) => {
                  searchStore.search(value),
                },
                decoration: InputDecoration(
                  hintText: 'Search by username or their name',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: searchStore.sites.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async => {
                        activeSite.setSite(searchStore.sites[index]),
                        context.push('/site')
                      },
                      child: SearchTile(
                        site: searchStore.sites[index],
                      ),
                    );
                  }),
            )
          ],
        );
      },
    );
  }
}

class SearchTile extends StatelessWidget {
  final Site site;

  const SearchTile({super.key, required this.site});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage:
            site.avatar.image != null ? NetworkImage(site.avatar.image!) : null,
        child: site.avatar.image == null ? const Icon(Icons.person) : null,
      ),
      title: Text(
        site.name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text('@${site.domain.split('.')[0]}'),
      trailing: const Icon(Icons.arrow_forward),
    );
  }
}
