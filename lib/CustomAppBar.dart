import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomBarItems = [];
  CustomAppBar() {
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(Icons.home, color: Colors.black,),
        title: Text("Expore")
      )
    );
    bottomBarItems.add(
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite, color: Colors.black,),
          title: Text("Watchlist")
        )
    );
    bottomBarItems.add(
        BottomNavigationBarItem(
          icon: Icon(Icons.filter_vintage, color: Colors.black,),
          title: Text("Deals")
        )
    );
     bottomBarItems.add(
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, color: Colors.black,),
          title: Text("Notifications")
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomBarItems,
      type: BottomNavigationBarType.fixed,
    );
  }
}
