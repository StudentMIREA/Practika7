import 'package:flutter/material.dart';
import 'package:pr7/pages/HomePage.dart';
import 'package:pr7/pages/ShopCartPage.dart';
import 'package:pr7/pages/UserPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  void onTab(int i) {
    setState(() {
      selectedIndex = i;
    });
  }

  static List<Widget> widgetOptions = <Widget>[
    HomePage(),
    ShopCartPage(),
    UserPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: SizedBox(
        height: 88.0,
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Image.asset(
                    selectedIndex == 0
                        ? 'lib/images/SelHome.png'
                        : 'lib/images/Home.png',
                    width: 23.61,
                    height: 21.37),
                label: 'Главная',
                backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
            BottomNavigationBarItem(
                icon: Image.asset(
                    selectedIndex == 1
                        ? 'lib/images/SelCart.png'
                        : 'lib/images/Cart.png',
                    width: 22.92,
                    height: 22.25),
                label: 'Корзина',
                backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
            BottomNavigationBarItem(
                icon: Image.asset(
                    selectedIndex == 2
                        ? 'lib/images/SelUser.png'
                        : 'lib/images/User.png',
                    width: 24,
                    height: 24),
                label: 'Профиль',
                backgroundColor: const Color.fromARGB(255, 255, 255, 255))
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Color.fromARGB(255, 26, 111, 238),
          selectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w300),
          unselectedItemColor: Color.fromARGB(255, 137, 138, 141),
          unselectedLabelStyle: const TextStyle(
              color: Color.fromARGB(255, 137, 138, 141),
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w300),
          onTap: onTab,
        ),
      ),
    );
  }
}
