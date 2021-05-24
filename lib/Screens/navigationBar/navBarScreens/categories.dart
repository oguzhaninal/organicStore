import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:organic_store/config/colors.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int selectedIndex = 0;

  onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  whichScreen() {
    Widget retVal;

    switch (selectedIndex) {
      case 0:
        retVal = Center(child: Text("Kategori 1"));
        break;
      case 1:
        retVal = Center(child: Text("Kategori 2"));
        break;
      case 2:
        retVal = Center(child: Text("Kategori 3"));
        break;
      default:
    }
    return retVal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        NavigationRail(
          destinations: <NavigationRailDestination>[
            NavigationRailDestination(
              icon: Icon(FlutterIcons.favorite_border_mdi),
              selectedIcon: Icon(Icons.favorite),
              label: Text("Kategori 1"),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.bookmark_border),
              selectedIcon: Icon(Icons.bookmark),
              label: Text("Kategori 2"),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.star_border),
              selectedIcon: Icon(Icons.star),
              label: Text("Kategori 3"),
            ),
          ],
          selectedIndex: selectedIndex,
          onDestinationSelected: onItemTapped,
          labelType: NavigationRailLabelType.all,
          unselectedLabelTextStyle: TextStyle(color: MainColors.activeColor),
          unselectedIconTheme: IconThemeData(color: Colors.grey[800]),
          selectedIconTheme: IconThemeData(color: Colors.red),
          selectedLabelTextStyle: TextStyle(color: Colors.red),
          backgroundColor: Colors.white,
        ),
        // VerticalDivider(
        //   thickness: 1,
        //   width: 1,
        // ),
        Expanded(
          child: whichScreen(),
        )
      ],
    ));
  }
}
