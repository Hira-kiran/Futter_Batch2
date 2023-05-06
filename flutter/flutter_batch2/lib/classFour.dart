import 'package:flutter/material.dart';

class ClassFour extends StatelessWidget {
  const ClassFour({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Class Four"),
              bottom: const TabBar(
                indicatorColor: Colors.amber,
                indicatorWeight: 5,
                tabs: [
                  Tab(
                    // icon: Icon(Icons.camera),
                    text: "Camera",
                  ),
                  Tab(
                    // icon: Icon(Icons.home),
                    text: "Home",
                  ),
                  Tab(
                    // icon: Icon(Icons.settings),
                    text: "Settings",
                  )
                ],
              ),
            ),
            body: ListView(
              children: [
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            action: SnackBarAction(
                              label: "Undo",
                              textColor: Colors.blue,
                              disabledTextColor: Colors.grey,
                              onPressed: () {},
                            ),
                            content:
                                const Text("your message has been deleted")));
                      },
                      child: const Text("Button")),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      color: Colors.deepOrangeAccent,
                      child: const Center(child: Text("Container 1")),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.green,
                      child: const Center(child: Text("Container 1")),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey,
                      child: const Center(child: Text("Container 1")),
                    ),
                  ],
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 20,
                  child: const ListTile(
                    title: Text("Title"),
                    leading: Icon(Icons.star),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

// ********************* Tabbar view ***********************
// TabBarView(children: [
//           const Center(child: Text("Camera")),
//           Column(
//             children: [
//               const ListTile(
//                 title: Text("Chat"),
//               )
//             ],
//           ),
//           const Text("Settings")
//         ]),


// ************************ Stack Widget *****************************

  // Stack(
  //                 alignment: Alignment.bottomCenter,
  //                 children: [
  //                   Container(
  //                     height: 300,
  //                     width: 300,
  //                     color: Colors.deepOrangeAccent,
  //                     child: const Center(child: Text("Container 1")),
  //                   ),
  //                   Container(
  //                     height: 200,
  //                     width: 200,
  //                     color: Colors.green,
  //                     child: const Center(child: Text("Container 1")),
  //                   ),
  //                   Container(
  //                     height: 100,
  //                     width: 100,
  //                     color: Colors.grey,
  //                     child: const Center(child: Text("Container 1")),
  //                   ),
  //                 ],
  //               ),




// ********************* Card Widget **********************
  //  Card(
  //                 shape: RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.circular(20)),
  //                 elevation: 20,
  //                 child: const ListTile(
  //                   title: Text("Title"),
  //                   leading: Icon(Icons.star),
  //                 ),
  //               )


// ******************* Elevated button & Snackbar ***********************

    // Center(
    //               child: ElevatedButton(
    //                   style: ElevatedButton.styleFrom(
    //                       backgroundColor: Colors.black,
    //                       shape: RoundedRectangleBorder(
    //                           borderRadius: BorderRadius.circular(20))),
    //                   onPressed: () {
      // ************* snackbar ******************
    //                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //                         action: SnackBarAction(
    //                           label: "Undo",
    //                           textColor: Colors.blue,
    //                           disabledTextColor: Colors.grey,
    //                           onPressed: () {},
    //                         ),
    //                         content:
    //                             const Text("your message has been deleted")));
    //                   },
    //                   child: const Text("Button")),
    //             ),






//*********** lectures ************
// LEC 8:
// •	Tab bar widget
// •	Elevated Button
// •	Snack bar widget
// LEC 9:
// •	List view widget
// •	Stack widget
// •	Card Widget
// •	Safe area
