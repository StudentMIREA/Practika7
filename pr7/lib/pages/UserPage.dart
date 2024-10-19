import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 92.0, left: 27.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 22.0),
              child: Text(
                'Рябова Екатерина',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                    wordSpacing: 0.33),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                '+7 900 800-55-33',
                style: TextStyle(
                    color: Color.fromARGB(255, 137, 138, 141),
                    fontSize: 15.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 1,
                    wordSpacing: 0.33),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 48.0),
              child: Text(
                'email@gmail.com',
                style: TextStyle(
                    color: Color.fromARGB(255, 137, 138, 141),
                    fontSize: 15.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 1,
                    wordSpacing: 0.33),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
