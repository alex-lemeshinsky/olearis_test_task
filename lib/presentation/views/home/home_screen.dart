import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "HomeScreenRoute")
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        reverse: true,
        slivers: [
          SliverFillRemaining(
            child: Text("data"),
          )
        ],
      ),
    );
  }
}
