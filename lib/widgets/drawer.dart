import 'package:flutter/material.dart';

class MyNewDrawer extends StatelessWidget {
  const MyNewDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageURL =
        'https://www.iplcricketmatch.com/wp-content/uploads/2024/02/Virat-Kohli-IPL-Stats-Salary-860x484.jpg';
    return Drawer(
      // backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.grey),
              accountName: Text("Harry Potter"),
              accountEmail: Text('abc@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageURL),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.inbox_rounded),
            title: Text('Gallary'),
          ),
          ListTile(
            leading: Icon(Icons.account_box_rounded),
            title: Text('Account'),
          ),
          ListTile(
            leading: Icon(Icons.email_rounded),
            title: Text('Email'),
          )
        ],
      ),
    );
  }
}
