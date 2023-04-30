
import 'package:flutter/material.dart';
import 'package:flutter_batch2/classOne.dart';
import 'package:flutter_batch2/classTwo.dart';

class ClassThree extends StatefulWidget {
  const ClassThree({super.key});

  @override
  State<ClassThree> createState() => _ClassThreeState();
}

class _ClassThreeState extends State<ClassThree> {
  int index = 0;
  List screens = [
    const ClassOne(),
    const ClassTwo(),
    const ClassOne(),

    /*    const Center(child: Text("Home")),
    const Text("Settings"),
    const Text("Fav"), */
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/login.webp"),
                ),
                accountName: Text("Hira kiran"),
                accountEmail: Text("hira12@gmail.com")),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ClassTwo())));
              },
              leading: const Icon(Icons.home),
              title: const Text("home"),
            ),
            const ListTile(
                trailing: Icon(Icons.arrow_back),
                leading: Icon(Icons.settings),
                title: Text("Settings")),
            const ListTile(
                leading: Icon(Icons.favorite), title: Text("Favorite")),
            const Divider(
              thickness: 2,
              color: Colors.black,
              indent: 20,
              endIndent: 20,
            ),
            const ListTile(leading: Icon(Icons.logout), title: Text("Logout")),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Class Three"),
      ),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
          onTap: ((value) {
            setState(() {
              index = value;
            });
          }),
          currentIndex: index,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.red,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "favorite")
          ]),
    );
  }
}


// LEC 6:
// •	Drawer
// •	Divider
// LEC 7:
// •	Bottom navigation
// •	Sizebox widget

//Assignment
// Make drawer screen
// Make UI using Bottom Navigation Bar
