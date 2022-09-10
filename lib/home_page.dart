import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget followsAvatarCreator(String followAvatar, int sequenceNumber) {
    return Stack(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor:
              (sequenceNumber != 0) ? Colors.yellow : const Color(0xffffffff),
          child: CircleAvatar(
            radius: 38,
            backgroundColor: const Color(0xffffffff),
            child: (followAvatar.isNotEmpty)
                ? CircleAvatar(
                    radius: 36,
                    backgroundImage: AssetImage(followAvatar),
                  )
                : Icon(
                    CupertinoIcons.person_crop_circle_fill,
                    size: 80,
                    color: Color(0xffcccccc),
                  ),
          ),
        ),
        Positioned(
          bottom: 1,
          right: 1,
          child: Container(
            child: Icon(
              Icons.add,
              color: Color(0xffffffff),
              size: 20,
            ),
            decoration: BoxDecoration(
              color: Color(0xff0095f6),
              border: Border.all(
                color: Color(0xffffffff),
                width: 3.5,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(115),
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
                bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.transparent,
                  isScrollable: true,
                  tabs: [
                    followsAvatarCreator("", 0),
                    // CircleAvatar(
                    //   radius: 40,
                    //   backgroundColor: Colors.yellow,
                    //   child: CircleAvatar(
                    //     radius: 38,
                    //     backgroundColor: Color(0xffffffff),
                    //     child: CircleAvatar(
                    //       radius: 36,
                    //       backgroundImage: AssetImage(""),
                    //     ),
                    //   ),
                    // ),
                    followsAvatarCreator("assets/images/first_avatar.jpeg", 1),
                    followsAvatarCreator("assets/images/second_avatar.jpeg", 2),
                    followsAvatarCreator("assets/images/third_avatar.jpeg", 3),
                    followsAvatarCreator("assets/images/fourth_avatar.jpeg", 4),
                    followsAvatarCreator("assets/images/fifth_avatar.jpeg", 5),
                    followsAvatarCreator("assets/images/sixth_avatar.jpeg", 6),
                    followsAvatarCreator(
                        "assets/images/seventh_avatar.jpeg", 7),
                    followsAvatarCreator("assets/images/eigth_avatar.jpeg", 8),
                    followsAvatarCreator("assets/images/ninth_avatar.jpeg", 9),
                    // CircleAvatar(
                    //   radius: 40,
                    //   backgroundColor: Colors.green,
                    // ),
                    // CircleAvatar(
                    //   radius: 40,
                    //   backgroundColor: Colors.red,
                    // ),
                    // CircleAvatar(
                    //   radius: 40,
                    //   backgroundColor: Colors.red,
                    // ),
                    // CircleAvatar(
                    //   radius: 40,
                    //   backgroundColor: Colors.red,
                    // ),
                    // CircleAvatar(
                    //   radius: 40,
                    //   backgroundColor: Colors.red,
                    // ),
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
