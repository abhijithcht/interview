import 'package:flutter/material.dart';
import 'package:interview/pages/base.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          DefaultTabController(
            length: 1,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                leading: const Icon(Icons.menu),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(50.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                    width: 100,
                    child: TabBar(
                      indicatorColor: Colors.transparent,
                      indicator: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      tabs: const [
                        Tab(text: 'Details'),
                      ],
                    ),
                  ),
                ),
              ),
              body: TabBarView(
                children: [
                  BasePage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
