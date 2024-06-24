import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.pink,
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/appbar_img.png",
                fit: BoxFit.fill,
              ),
              title: Text(
                "Payer Time",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu_book,
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings, color: Colors.white)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.comment, color: Colors.white)),
            ],
          ),

          //Sliver Widgets
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                        leading: Text("$index"),
                        title: Text("Fazar Prayer"),
                        subtitle: Text("01:00 p.m to 4:30p.m"),
                      ),
                  childCount: 50))
        ],
      )),
    );
  }
}
