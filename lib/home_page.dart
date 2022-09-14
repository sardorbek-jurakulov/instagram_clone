import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/utility_functions/post_creator_function.dart';
import 'package:instagram_clone/data_base/posts_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String profileOwnerUsername = "sardorbek_jurakulov";
  List<Map<String, String>> accountesInfo = <Map<String, String>>[
    {
      "username": "sardorbek_jurakulov",
      "avatarPath": "",
    },
    {
      "username": "her_Aslanov",
      "avatarPath": "assets/images/first_avatar.jpeg",
    },
    {
      "username": "shakhnoza_ibragimova",
      "avatarPath": "assets/images/second_avatar.jpeg",
    },
    {
      "username": "zarifaka",
      "avatarPath": "assets/images/third_avatar.jpeg",
    },
    {
      "username": "iSystem_learning_center",
      "avatarPath": "assets/images/fourth_avatar.jpeg",
    },
    {
      "username": "vuejs_uzbekistan",
      "avatarPath": "assets/images/fifth_avatar.jpeg",
    },
    {
      "username": "nodejs_uzbekistan",
      "avatarPath": "assets/images/sixth_avatar.jpeg",
    },
    {
      "username": "python_uzbekistan",
      "avatarPath": "assets/images/seventh_avatar.jpeg",
    },
    {
      "username": "Anvar-Abduqayum",
      "avatarPath": "assets/images/eigth_avatar.jpeg",
    },
    {
      "username": "Cambridge International University",
      "avatarPath": "assets/images/ninth_avatar.jpeg",
    },
  ];
  Widget followsAvatarCreator(String? profileUsername, String? followAvatar) {
    return Container(
      width: 80,
      child: Column(
        children: [
          (profileUsername != profileOwnerUsername)
              ? Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFF405DE6),
                        Color(0xFF5B51D8),
                        Color(0xFF833AB4),
                        Color(0xFFC13584),
                        Color(0xFFE1306C),
                        Color(0xFFFD1D1D),
                        Color(0xFFF56040),
                        Color(0xFFF77737),
                        Color(0xFFFCAF45),
                        Color(0xFFFFDC80),
                      ],
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: const Color(0xffffffff),
                    child: ((followAvatar as String).isNotEmpty)
                        ? CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(followAvatar),
                          )
                        : Icon(
                            CupertinoIcons.person_crop_circle_fill,
                            size: 80,
                            color: Color(0xffcccccc),
                          ),
                  ),
                )
              : Stack(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  children: [
                    ((followAvatar as String).isNotEmpty)
                        ? CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(followAvatar),
                          )
                        : Icon(
                            CupertinoIcons.person_crop_circle_fill,
                            size: 86,
                            color: Color(0xffcccccc),
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
                ),
          SizedBox(
            height: 10,
          ),
          Text(
            profileUsername ?? "username",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xff222222),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(141),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 0,
                vertical: 12,
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
                    followsAvatarCreator(
                      accountesInfo[0]["username"],
                      accountesInfo[0]["avatarPath"],
                    ),
                    followsAvatarCreator(
                      accountesInfo[1]["username"],
                      accountesInfo[1]["avatarPath"],
                    ),
                    followsAvatarCreator(
                      accountesInfo[2]["username"],
                      accountesInfo[2]["avatarPath"],
                    ),
                    followsAvatarCreator(
                      accountesInfo[3]["username"],
                      accountesInfo[3]["avatarPath"],
                    ),
                    followsAvatarCreator(
                      accountesInfo[4]["username"],
                      accountesInfo[4]["avatarPath"],
                    ),
                    followsAvatarCreator(
                      accountesInfo[5]["username"],
                      accountesInfo[5]["avatarPath"],
                    ),
                    followsAvatarCreator(
                      accountesInfo[6]["username"],
                      accountesInfo[6]["avatarPath"],
                    ),
                    followsAvatarCreator(
                      accountesInfo[7]["username"],
                      accountesInfo[7]["avatarPath"],
                    ),
                    followsAvatarCreator(
                      accountesInfo[8]["username"],
                      accountesInfo[8]["avatarPath"],
                    ),
                    followsAvatarCreator(
                      accountesInfo[9]["username"],
                      accountesInfo[9]["avatarPath"],
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
              ListView.builder(itemCount: ),
              PostCreator(),
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
