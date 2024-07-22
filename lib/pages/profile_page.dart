import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stck_site/scaffolds/base_scaffold.dart';
import 'package:stck_site/store/user_content.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ActiveUser()),
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
    return Consumer<ActiveUser>(
      builder: (context, activeSite, child) {
        return const Column(
          children: [
            Text('sdd')
        
          ],
        );
      },
    );
  }
}
