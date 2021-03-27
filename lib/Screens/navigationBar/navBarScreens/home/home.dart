import 'package:flutter/material.dart';
import 'package:organic_store/Screens/navigationBar/navBarScreens/home/homeScreens/homeCatOne/categoryOne.dart';
import 'package:organic_store/config/colors.dart';
import 'package:animated_search_bar/animated_search_bar.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TabController tabController;

  String searchText;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MainColors.activeColor,
          title: AnimatedSearchBar(
            label: "Organic Store",
            labelStyle: TextStyle(fontSize: 20),
            searchStyle: TextStyle(color: MainColors.textColor1),
            cursorColor: MainColors.backgroundColor,
            searchDecoration: InputDecoration(
              hintText: "Bir şeyler arayın",
              alignLabelWithHint: true,
              fillColor: Colors.white,
              focusColor: Colors.white,
              hintStyle: TextStyle(color: Colors.white),
              border: InputBorder.none,
            ),
            onChanged: (value) {
              print("change");
              setState(() {
                searchText = value;
              });
            },
          ),
        ),
        body: Column(
          children: [
            Container(
              child: TabBar(
                indicatorColor: MainColors.activeColor,
                labelColor: MainColors.activeColor,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.tab,
                isScrollable: true,
                controller: tabController,
                tabs: [
                  Tab(
                    text: "Kategori 1",
                  ),
                  Tab(
                    text: "Kategori 2",
                  ),
                  Tab(
                    text: "Kategori 3",
                  ),
                  Tab(
                    text: "Kategori 4",
                  ),
                  Tab(
                    text: "Kategori 5",
                  ),
                  Tab(
                    text: "Kategori 6",
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: TabBarView(children: [
                HomeCategoryOne(),
                Center(child: Text("kategori 2")),
                Center(child: Text("Kategori 3")),
                Center(child: Text("kategori 4")),
                Center(child: Text("kategori 5")),
                Center(child: Text("kategori 6")),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
