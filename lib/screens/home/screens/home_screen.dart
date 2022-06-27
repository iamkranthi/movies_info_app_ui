import 'package:flutter/material.dart';
import 'package:movies_info_app_ui/components/card_widget.dart';
import 'package:movies_info_app_ui/utils/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(height: 70),
          CustomAppBar(
            lefticon: Icons.menu,
            righticon: Icons.search_sharp,
          ),
          SizedBox(height: 10),
          RollingAppBar(
            title1: 'Trending movies',
            title2: 'Box office',
            title3: 'Comming soon',
          ),
          SizedBox(height: 70),
          SizedBox(height: 50),
          CardWidget(),
        ],
      ),
    );
  }
}
