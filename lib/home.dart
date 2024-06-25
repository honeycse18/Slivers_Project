// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';

// class MyHomePage extends StatelessWidget {
//   MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             backgroundColor: Colors.pink,
//             pinned: true,
//             floating: true,
//             snap: true,
//             expandedHeight: 250,
//             collapsedHeight: 60,
//             flexibleSpace: LayoutBuilder(
//               builder: (BuildContext context, BoxConstraints constraints) {
//                 var isCollapsed = true;
//                 return FlexibleSpaceBar(
//                   title: isCollapsed
//                       ? Column(
//                           children: [
//                             SizedBox(height: 4),
//                             Row(
//                               children: [
//                                 CircleAvatar(
//                                   radius: 20,
//                                   backgroundColor: Colors.black,
//                                   child: Image.asset(
//                                     "assets/images/appbar_img.png",
//                                     height: 25,
//                                     width: 25,
//                                     fit: BoxFit.contain,
//                                   ),
//                                 ),
//                                 SizedBox(width: 8),
//                                 Text('Prayer Time✨'),
//                               ],
//                             ),
//                           ],
//                         )
//                       : Text(''),
//                   background: Image.asset(
//                     "assets/images/appbar_img.png",
//                     fit: BoxFit.fill,
//                   ),
//                 );
//               },
//             ),
//             leading: IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.menu_book,
//                 color: Colors.white,
//               ),
//             ),
//             actions: [
//               IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.settings, color: Colors.white)),
//               IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.comment, color: Colors.white)),
//             ],
//           ),

//           //Sliver Widgets
//           SliverList(
//               delegate: SliverChildBuilderDelegate(
//                   (context, index) => ListTile(
//                         leading: Text("$index"),
//                         title: Text("Fazar Prayer"),
//                         subtitle: Text("01:00 p.m to 4:30p.m"),
//                       ),
//                   childCount: 50))
//         ],
//       )),
//     );
//   }
// }
