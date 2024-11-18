import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              titleTextStyle: const TextStyle(color: Colors.white),
              stretch: true,
              backgroundColor: Colors.deepPurple,
              expandedHeight: 300,
              floating: true,
              pinned: true,
              flexibleSpace: Center(
                child: FlexibleSpaceBar(
                  stretchModes: const [
                    StretchMode.zoomBackground,
                    StretchMode.blurBackground,
                    StretchMode.fadeTitle,
                  ],
                  title: const Text(
                    'S L I V E R A P P B A R',
                    //style: TextStyle(color: Colors.black),
                  ),
                  centerTitle: true,

                  titlePadding: const EdgeInsets.all(10),
                  //titleTextStyle: TextStyle(),
                  background: Container(
                    color: const Color.fromARGB(255, 118, 90, 6),
                  ),
                ),
              ),
            ),
            // sliver items
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 400,
                    color: Colors.deepPurple[300],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 400,
                    color: Colors.deepPurple[300],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 400,
                    color: Colors.deepPurple[300],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
