import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseScaffold extends StatefulWidget {
  final Widget body;
  const BaseScaffold({super.key, required this.body});

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.handyman),
        backgroundColor: Colors.amber,
        title: const Text('Under construction'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_circle_left_outlined),
            label: 'Back',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_sharp), label: 'Search')
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              context.pop();
              break;
            case 1:
              context.push('/search');
              break;
          }
        },
      ),
      body: widget.body,
    );
  }
}
