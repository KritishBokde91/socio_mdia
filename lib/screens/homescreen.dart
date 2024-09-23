import 'package:flutter/material.dart';
import 'package:socio_mdia/widgets/card_view.dart';
import 'package:socio_mdia/widgets/recommend_view.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Socio Mdia',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.category_outlined))
        ],
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Trending Photos',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )),
            SizedBox(
              height: 8,
            ),
            CardView(),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Recommended for you',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
            ),
            SizedBox(height: 8,),
            RecommendView(),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('assets/images/app_icon.png')),
            ListTile(
              leading: const Icon(Icons.explore),
              title: const Text('Explore'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.trending_up),
              title: const Text('Trending'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.align_vertical_top_outlined),
              title: const Text('Top Images'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.new_releases_rounded),
              title: const Text("What's New"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
