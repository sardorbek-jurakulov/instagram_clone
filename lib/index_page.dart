import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_page.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List<Widget> pagesList = [
    HomePage(),
    Center(child: Text("second page")),
    Center(child: Text("third page")),
    Center(child: Text("fourth page")),
    Center(child: Text("fifth page")),
  ];

  int currentPage = 0;
  int previousPageIndex = 0;

  Map<int, bool> activeItem = {
    0: true,
    1: false,
    2: false,
    3: false,
    4: false,
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 120,
          leading: Container(
            margin: EdgeInsets.only(
              left: 10,
            ),
            child: Image.asset(
              "assets/images/instagram_text_logo.png",
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.plus_app, color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.heart, color: Color(0xff222222)),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            ),
          ],
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        body: pagesList[currentPage],
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  (activeItem[0] == true) ? Icons.home : Icons.home_outlined,
                  color: Color(0xff222222),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Text(
                  String.fromCharCode(CupertinoIcons.search.codePoint),
                  style: TextStyle(
                    inherit: false,
                    color: Color(0xff222222),
                    fontSize: 24.0,
                    fontWeight: (activeItem[1] == true)
                        ? FontWeight.w700
                        : FontWeight.w500,
                    fontFamily:
                        CupertinoIcons.exclamationmark_circle.fontFamily,
                    package: CupertinoIcons.exclamationmark_circle.fontPackage,
                  ),
                ),
                label: "",
              ),
              const BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.plus_app, color: Color(0xff222222)),
                  label: ""),
              BottomNavigationBarItem(
                icon: Icon(
                  (activeItem[3] == true)
                      ? CupertinoIcons.heart_fill
                      : CupertinoIcons.heart,
                  color: Color(0xff222222),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        width: 1,
                        color: (activeItem[4] == true)
                            ? Color(0xff222222)
                            : Colors.transparent),
                  ),
                  child: Icon(
                    CupertinoIcons.person_crop_circle_fill,
                    color: Color(0xffcccccc),
                  ),
                ),
                label: "",
              ),
            ],
            selectedItemColor: Color(0xff222222),
            onTap: (int index) {
              setState(() {
                activeItem[previousPageIndex] = false;
                activeItem[index] = true;
                currentPage = index;
                previousPageIndex = index;
              });
            }),
      ),
    );
  }
}
