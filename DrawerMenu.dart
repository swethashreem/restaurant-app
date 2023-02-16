// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'colors.dart';

class DrawerMenu extends StatefulWidget {
  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue, primaryColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Material(
        color: Colors.transparent,
        child: ListView(
          children: [
            InkWell(
              onTap: () {},
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  ),
                  decoration: BoxDecoration(color: Colors.transparent),
                  accountName: Text("Swetha"),
                  accountEmail: Text("swe@gmail.com")),
            ),
            MenuList(title: "Orders", iconName: Icons.border_color,),
            MenuList(iconName: Icons.bookmark, title: "Address",),
            MenuList(iconName: Icons.notifications, title: "Notification"),
            MenuList(iconName: Icons.help, title: "Help",),
            MenuList(iconName: Icons.account_box, title: "About",),
            MenuList(iconName: Icons.star_half, title: "Rate Us"),
            MenuList(iconName: Icons.exit_to_app, title: "Log Out"),
          ],
        ),
      ),
    );
  }
}

class MenuList extends StatefulWidget {
  final String title;
  final IconData iconName;
  MenuList({
    //required Key key,
    required this.title,
    required this.iconName,
  }) ;

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white24, borderRadius: BorderRadius.circular(10)),
          child: Icon(
            widget.iconName,
            color: Colors.white,
          )),
      title: Text(
        widget.title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
