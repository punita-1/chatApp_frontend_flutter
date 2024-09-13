import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black26),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle the onTap event here
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle the onTap event here
              },
            ),
            // Add more ListTile widgets as needed
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black26,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Messages',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Online',
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Group',
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'More',
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'More',
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 25, right: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Favourite Contacts',
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        UserAvatar(
                          imagePath: 'assets/images/myimage.png',
                          name: 'Punita',
                        ),
                        UserAvatar(
                          imagePath: 'assets/images/myimage.png',
                          name: 'Muskan',
                        ),
                        UserAvatar(
                          imagePath: 'assets/images/myimage.png',
                          name: 'Kritika',
                        ),
                        UserAvatar(
                          imagePath: 'assets/images/myimage.png',
                          name: 'Punita',
                        ),
                        UserAvatar(
                          imagePath: 'assets/images/myimage.png',
                          name: 'Punita',
                        ),
                        // Add more UserAvatar widgets as needed
                      ],
                    ),
                  ),
                ],
              ),
              height: 220,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
          ),
          Positioned(
            top: 325,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  // bottomLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.only(left: 25),
                children: [
                  UserChat(
                    imagePath: 'assets/images/myimage.png',
                    name: 'Kritika',
                    time: '02:20',
                    mymgs: 'hey shopping?',
                    messageCount: 1, // Adjust the value as needed
                  ),
                  UserChat(
                    imagePath: 'assets/images/myimage.png',
                    name: 'Punita',
                    time: '02:20',
                    mymgs: 'let"s study',
                    messageCount: 0, // Adjust the value as needed
                  ),
                  UserChat(
                    imagePath: 'assets/images/myimage.png',
                    name: 'Muskan',
                    time: '02:20',
                    mymgs: 'let"s study',
                    messageCount: 6, // Adjust the value as needed
                  ),
                  UserChat(
                    imagePath: 'assets/images/myimage.png',
                    name: 'Punita',
                    time: '02:20',
                    mymgs: 'hello! welcome',
                    messageCount: 1, // Adjust the value as needed
                  ),
                  UserChat(
                    imagePath: 'assets/images/myimage.png',
                    name: 'Kritika',
                    time: '02:20',
                    mymgs: 'let"s study',
                    messageCount: 9, // Adjust the value as needed
                  ),
                  UserChat(
                    imagePath: 'assets/images/myimage.png',
                    name: 'Kritika',
                    time: '02:20',
                    mymgs: 'let"s study',
                    messageCount: 1, // Adjust the value as needed
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.endFloat,
      floatingActionButton: SizedBox(

        height: 65,
        width: 65,
        child: FloatingActionButton(
          shape: CircleBorder(),
          child: Icon(Icons.edit_outlined, size: 30,),
          onPressed: (){},
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String imagePath;
  final String name;

  const UserAvatar({
    Key? key,
    required this.imagePath,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 32,
            child: CircleAvatar(
              radius: 29,
              backgroundImage: AssetImage(imagePath),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
class UserChat extends StatelessWidget {
  final String imagePath;
  final String name;
  final String time;
  final int messageCount;
  final String mymgs;

  const UserChat({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.time,
    required this.messageCount,
    required this.mymgs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  UserAvatar(
                    imagePath: imagePath,
                    name: name,
                  ),
                  SizedBox(width: 10), // Add some spacing between the avatar and the text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name),
                      Text(mymgs),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(time),
                  if (messageCount > 0)
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 9,
                      child: Text(
                        messageCount.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                ],
              ),
              // SizedBox(width: 1,)
            ],
          ),
          Divider(
            height: 10,
          ),
        ],
      ),
    );
  }
}