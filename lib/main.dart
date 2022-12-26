// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:finance_grid_theme/components/infoContainer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance Grid Theme',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.percent_rounded, color: Colors.white,),
            label: "Sales"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white,),
            label: "Account"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined, color: Colors.white,),
            label: "Analytics"
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.play_arrow_rounded,color: Colors.grey,size: 40,),
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                      child: Icon(Icons.person,color: Colors.grey,),
                    )
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello Tashyn",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white
                          ), 
                        ),
                        SizedBox(height: 8,),
                        Text("Welcome Back !", 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Icon(Icons.settings, color: Colors.grey,),
                    )
                  ],
                ),
                SizedBox(height: 40,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.search, color: Colors.grey[700],),
                      SizedBox(width: 8,),
                      Text("Search",
                        style: TextStyle(
                          color: Colors.grey[700]
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InfoContainer(
                      backgroundColor: Colors.green[200],
                      amount: "230k",
                      infoIcon: Icons.graphic_eq_outlined,
                      title: "Sales",
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InfoContainer(
                      backgroundColor: Colors.purple[100],
                      amount: "8.549k",
                      infoIcon: Icons.person_outlined,
                      title: "Customers",
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InfoContainer(
                      backgroundColor: Colors.pink[50],
                      amount: "1.423k",
                      infoIcon: Icons.newspaper_outlined,
                      title: "Products",
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InfoContainer(
                      backgroundColor: Colors.orange[50],
                      amount: "\$9745",
                      infoIcon: Icons.attach_money,
                      title: "Revenue",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
