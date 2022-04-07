import 'package:flutter/material.dart';

class dashBoard extends StatefulWidget {
  const dashBoard({Key? key}) : super(key: key);

  @override
  State<dashBoard> createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard>
    with SingleTickerProviderStateMixin {
  late final TabController t;
  @override
  void initState() {
    t = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        bottom: TabBar(
          controller: t,
          tabs: [
            Tab(text: "New Conversations", icon: Icon(Icons.mic)),
            Tab(text: "History", icon: Icon(Icons.history)),
          ],
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("DashBoard"),
        ),
      ),
      body: TabBarView(
        controller: t,
        children: [
          Container(
            color: Colors.blue,
            child: Text("pafge1"),
          ),
          Container(
            color: Colors.yellow,
            child: Text("page 2"),
          )
        ],
      ),
    );
  }
}
