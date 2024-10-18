import 'package:flutter/material.dart';
import 'package:pr7/model/item.dart';

class ListOfItems extends StatefulWidget {
  const ListOfItems({super.key, required this.item});

  final Item item;

  @override
  State<ListOfItems> createState() => _ListOfItemsState();
}

class _ListOfItemsState extends State<ListOfItems> {
  //проверка склонения
  String SclWordDays(int i) {
    final list1 = ['2', '3', '4'];
    final list2 = ['0', '5', '6', '7', '8', '9'];
    final day = (i % 10).toString();
    if (list1.contains(day)) {
      return '${i} дня';
    } else if (list2.contains(day)) {
      return '${i} дней';
    } else {
      return '${i} день';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 28.0, left: 28.0),
      child: Container(
        width: double.infinity,
        height: 136.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
                color: const Color.fromARGB(255, 224, 224, 224), width: 1)),
        child: Padding(
          padding: const EdgeInsets.only(
              right: 16.0, left: 16.0, top: 16.0, bottom: 16.0),
          child: Column(
            children: [
// Заголовок услуги
              Text(
                widget.item.name,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 1.25,
                  letterSpacing: -0.32,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    children: [
// Дни и стоимость
                      SizedBox(
                        height: 48.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                SclWordDays(widget.item.days),
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 147, 147, 150),
                                  fontSize: 14.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  height: 1.4,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '${widget.item.cost} ₽',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  height: 1.4,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
// Кнопка добавления
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            height: 40.0,
                            width: 96.0,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                backgroundColor: WidgetStateProperty.all(
                                    const Color.fromARGB(255, 26, 111, 238)),
                                foregroundColor:
                                    WidgetStateProperty.all(Colors.white),
                                padding: WidgetStateProperty.all(
                                    const EdgeInsets.all(0)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Добавить',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    height: 1.4,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
