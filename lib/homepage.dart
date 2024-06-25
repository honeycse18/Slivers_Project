import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: NestedScrollView(
              headerSliverBuilder: (context, _) {
                return [
                  SliverAppBar(
                    leading: Icon(Icons.menu),
                    actions: [
                      Icon(Icons.notifications),
                      Icon(Icons.search),
                    ],
                    title: Text("Sliver persistent Header"),
                  ),
                  SliverPersistentHeader(
                      pinned: true, floating: true, delegate: MyTab())
                ];
              },
              body: TabBarView(children: [
                Container(
                  color: Colors.cyan,
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: List.generate(
                        100,
                        (index) => Card(
                              color: index % 3 == 0
                                  ? Colors.grey
                                  : index % 3 == 1
                                      ? Colors.pink
                                      : index % 3 == 2
                                          ? Colors.orange
                                          : Colors.black,
                              child: ListTile(
                                title: Text('Grid$index'),
                              ),
                            )),
                  ),
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.black,
                ),
              ])),
        ));
  }
}

class MyTab extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Colors.blue, Colors.black])),
      child: TabBar(tabs: [
        Tab(
          text: "Sehri",
          height: 100,
        ),
        Tab(
          text: "Iftar",
        ),
        Tab(
          text: "Tarabi",
        ),
        Tab(
          text: "Tahajjud",
        ),
      ]),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  double maxExtent = 100;
  @override
  double minExtent = 50;
}
