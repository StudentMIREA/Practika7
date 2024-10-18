import 'package:flutter/material.dart';
import 'package:pr7/pages/components/ItemsList.dart';
import 'package:pr7/pages/components/ListOfItems.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: ItemsList.length + 1,
            itemBuilder: (BuildContext context, int index) {
// Заголовок
              return index == 0
                  ? const Padding(
                      padding:
                          EdgeInsets.only(top: 48.0, left: 27.0, bottom: 22.0),
                      child: Text(
                        'Каталог услуг',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500),
                      ),
                    )
// Список услуг
                  : ListOfItems(item: ItemsList[index - 1]);
            }));
  }
}
