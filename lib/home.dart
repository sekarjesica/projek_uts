import 'package:flutter/material.dart';
import 'inbox.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.move_to_inbox,
              text: 'Inbox',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Inbox()),
                );
              }),
          _drawerItem(
              icon: Icons.send,
              text: 'Outbox',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.access_time_rounded,
              text: 'Spam',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.forum_outlined,
              text: 'Forums',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(3);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.feedback,
              text: 'Promos',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(4);
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage("asset/image/jejes.jpg"), fit: BoxFit.cover),
    ),
    accountName: Text('Sekar Ananta Putri Jesica'),
    accountEmail: Text('sekaranantapj@gmail.com'),
  );
}

Widget _drawerItem({IconData? icon, required String text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
