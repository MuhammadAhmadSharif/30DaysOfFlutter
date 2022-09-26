import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImageURl =
        "https://scontent.flyp2-1.fna.fbcdn.net/v/t39.30808-1/280027777_3319873901580819_9177313232296953435_n.jpg?stp=cp0_dst-jpg_e15_p120x120_q65&_nc_cat=108&ccb=1-7&_nc_sid=dbb9e7&_nc_ohc=I9K0bf6SXW4AX86V5Xp&_nc_ht=scontent.flyp2-1.fna&oh=00_AT_16TjJUx3xYt1BVLDWJJ45z66fx68HEFB9kpRqYAiDwA&oe=63372599";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountEmail: Text("ahmad@gmail.com"),
                accountName: Text("Muhammad Ahmad Sharif"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(ImageURl),
                ),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.alarm),
            title: Text("Alaram"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.wifi),
            title: Text("WiFi"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.device_laptop),
            title: Text("Laptop"),
          ),
        ],
      ),
    );
  }
}
