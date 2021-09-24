import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {

  bool isOpen= false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://benefitss.net/wp-content/uploads/2018/05/2072.jpg'),
              ),
              accountEmail: Text('ayham.ayham909@gmail.com'),
              accountName: Text(
                'Ayham alkhalaf',
                style: TextStyle(fontSize: 24.0),
              ),
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
            ),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Profile"),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey,
            ),
            Container(
              color: Colors.grey,
              child: const ListTile(
                  leading: Icon(Icons.phone_android,color: Colors.white,),
                  title: Text("phones",style: TextStyle(
                    color: Colors.white,
                  ),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,)
              ),
            ),
            const ListTile(
              leading: Icon(Icons.message),
              title: Text("Messages"),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey,
            ),

            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey,
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey,
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text("Connect Us"),
            )
          ],
        ),
      ),
    );
  }
}



