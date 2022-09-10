import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget followsAvatarCreator(String followAvatar, int sequenceNumber) {
    return CircleAvatar(
      radius: 40,
      backgroundColor:
          (sequenceNumber != 0) ? Colors.yellow : Color(0xffffffff),
      child: CircleAvatar(
        radius: 38,
        backgroundColor: Color(0xffffffff),
        child: CircleAvatar(
          radius: 36,
          backgroundImage: AssetImage(followAvatar),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(115),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 0,
                vertical: 15,
              ),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xffe4e4e4),
                  ),
                  bottom: BorderSide(
                    color: Color(0xffe4e4e4),
                  ),
                ),
              ),
              child: AppBar(
                shadowColor: Colors.transparent,
                backgroundColor: const Color(0xfffafafa),
                bottom: const TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.transparent,
                  isScrollable: true,
                  tabs: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.yellow,
                      child: CircleAvatar(
                        radius: 38,
                        backgroundColor: Color(0xffffffff),
                        child: CircleAvatar(
                          radius: 36,
                          backgroundImage: AssetImage(""),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.green,
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.red,
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.red,
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.red,
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.red,
                    ),
                  ],
                  padding: EdgeInsets.zero,
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                ),
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 100,
                ),
              ),
              Center(
                child: Text("second tab"),
              ),
              Center(
                child: Text("third tab"),
              ),
              Center(
                child: Text("third tab"),
              ),
              Center(
                child: Text("third tab"),
              ),
              Center(
                child: Text("third tab"),
              ),
            ],
          )),
    );
  }
}
