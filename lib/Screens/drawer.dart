import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      width: MediaQuery.of(context).size.width - 50,
      child: Drawer(
        elevation: 0,
        child: ListView(
          children: [
            ///*Close button
            Container(
              padding: const EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    //Close drawer
                    Navigator.of(context).pop();
                  }),
            ),

            ///*User Account Area
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: ClipOval(
                      child: Image(image: AssetImage('assets/pic.png')))),
              accountName: Text(
                "Destiny Ed",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              accountEmail: Text(
                "dikeachaeze@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ////!List
            ///
            ///*Categories
            listTiles(
                title: "Categories",
                subtitle: "See all categories",
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onTap: () {}),
            //*Carts
            listTiles(
                title: "Cart",
                subtitle: "See all cart items",
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onTap: () {}),
            //*Payment Card
            listTiles(
                title: "Payment Card",
                subtitle: "See or add your payment card",
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onTap: () {}),
            //*push notification
            listTiles(
              title: "Push Notifications",
              subtitle: "Set up push notification",
              trailing: Switch(
                activeColor: Colors.redAccent,
                value: isActive,
                onChanged: (value) {
                  setState(() => isActive = value);
                },
              ),
            ),

            //*LogOut
            listTiles(
                title: "Logout",
                subtitle: "Take a break",
                trailing: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
                onTap: () {}),

            //*Bottom Icon and app version
            Container(
              alignment: Alignment.centerLeft,
              child: ListTile(
                title: const Image(
                  image: AssetImage("assets/logo.png"),
                  width: 90,
                  height: 90,
                ),
                subtitle: const Text("Version 0.0.1"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget listTiles(
    {String title, String subtitle, Widget trailing, Function onTap}) {
  return ListTile(
    title: Text(
      title,
      style: TextStyle(fontSize: 18),
    ),
    subtitle: Text(subtitle),
    trailing: trailing,
    onTap: onTap,
  );
}
