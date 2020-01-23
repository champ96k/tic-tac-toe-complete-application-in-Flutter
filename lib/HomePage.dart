import 'package:flutter/material.dart';
import 'package:tic_tac_toe/SinglePlayer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                child: Text("A"),
              ),
              title: Text("Tushar Nikam"),
              subtitle: Text("Flutter Dev"),
              trailing: Icon(Icons.arrow_drop_down),
            ),
            Divider(
              height: 2,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.account_circle),
              title: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.assignment_ind),
              title: Text(
                "About Us",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.rate_review),
              title: Text(
                "Rate US",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.share),
              title: Text(
                "Share",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Divider(
              height: 58.0,
              thickness: 3,
              endIndent: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.cancel),
              title: Text(
                "Cancel",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 80, vertical: 200),
              child: Text("Created by Champ"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Tic Tac Toe"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
            height: 35,
            minWidth: 230,
            color: Colors.purple,
            elevation: 45,
            focusElevation: 20,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SinglePlayer()));
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Text(
              "Start Game",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
