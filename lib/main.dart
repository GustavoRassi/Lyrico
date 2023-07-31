import 'package:flutter/material.dart';
import 'package:spotify_app/Pages/home_page.dart';
import 'package:spotify_app/Pages/search_page.dart';
import 'package:spotify_app/Pages/yourlibrary_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // Variable to assign which screen is displayed to the user.
  int selected_index = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      home: BottomNavBarProvider(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavBarProvider extends StatefulWidget {
  const BottomNavBarProvider({super.key});

  @override
  State<BottomNavBarProvider> createState() => _BottomNavBarProviderState();
}

class _BottomNavBarProviderState extends State<BottomNavBarProvider> {
  /* ⁡⁢⁢⁢Area for setting variables that could be used by the user⁡ */
  int selected_index = 0;

  // List of screens that are navigated with the bottom navigation bar
  List<Widget> _screen = [
    Home_page(),
    Search_page(),
    YourLibrary_page()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Body will show the selected screen from the list
      body: _screen[selected_index],
      //=========================================
      // ⁡⁢⁢⁢BOTTOM NAVIGATION BAR⁡
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_index,
        unselectedItemColor: Colors.white,
        
        // Selected item will turn font to bold.
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold
        ),
        selectedItemColor: Colors.white,

        // ⁡⁢⁢List of the items of the navigation bar⁡.
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Your Library",
          )
        ],

        // This block of code executes when the user taps on any of the items
        // on the navigation bar. '⁡⁣⁢onTap' assigns the input value to '_index' as
        // the parameter and it's used in the inner code to set the value of⁡
        // '⁡⁣⁢selected_index⁡', which will be later set to the selected index.
        onTap: (index_) {
          setState(() {
            selected_index = index_;
          });
        },
        
        // ⁡⁢⁢⁢Navigation bar background color⁡
        backgroundColor: Colors.grey[900],
        //=========================================
      ),
      
    );
  }
}