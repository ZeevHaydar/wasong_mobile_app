import 'package:flutter/material.dart';
import 'package:wasong_mobile_app/components/menu_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String user = "Toper";
  String searchQuery = "";
  int _selectedIndex = 0;

  // Daftar widget untuk setiap tab
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Search'),
    Text('Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Welcome, $user",
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
          backgroundColor: const Color(0xfffdf8ee),
          foregroundColor: const Color(0xff333333),
          shadowColor: const Color.fromARGB(63, 51, 51, 51),
          elevation: 3.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 42,
                // alignment: Alignment.bottomCenter,
                child: TextField(
                  onChanged: (text) {
                    setState(() {
                      searchQuery = text;
                    });
                  },
                  decoration: InputDecoration(
                      // labelText: 'Search Classes',
                      // labelStyle: const TextStyle(color: Color(0xfff1f1f1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: const Color(0xff333333),
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Seach Classes',
                      prefixIconColor: const Color(0xfff1f1f1),
                      hintStyle: const TextStyle(color: Color(0xfff1f1f1))),
                  textAlignVertical: TextAlignVertical.bottom,
                  style: const TextStyle(color: Color(0xfff1f1f1)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Classes For You",
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: MenuNavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ));
  }
}