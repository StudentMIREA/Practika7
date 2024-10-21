import 'package:flutter/material.dart';
import 'package:pr7/model/item.dart';
import 'package:pr7/pages/components/ItemsList.dart';

class ListOfItemShop extends StatefulWidget {
  const ListOfItemShop(
      {super.key,
      required this.item,
      required this.DeleteShopItem,
      required this.AddPerson,
      required this.DeletePerson});

  final Item item;
  final Function(int i) DeleteShopItem;
  final Function(int i) AddPerson;
  final Function(int i) DeletePerson;

  @override
  State<ListOfItemShop> createState() => _ListOfItemShopState();
}

class _ListOfItemShopState extends State<ListOfItemShop> {
  //проверка склонения
  String SclWordPeople(int i) {
    final list1 = ['2', '3', '4'];
    final day = (i % 10).toString();
    if (list1.contains(day)) {
      return '${i} человека';
    } else {
      return '${i} человек';
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
        child: Column(
          children: [
// Заголовок услуги
            Padding(
              padding:
                  const EdgeInsets.only(right: 16.0, left: 16.0, top: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 275,
                    child: Text(
                      widget.item.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 20 / 16,
                        letterSpacing: -0.32,
                      ),
                      textAlign: TextAlign.left,
                      softWrap: true,
                    ),
                  ),
// Иконка удаления услуги из корзины
                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                          onTap: () {
                            widget.DeleteShopItem(widget.item.id);
                          },
                          child: Container(
                            color: const Color.fromRGBO(255, 0, 0, 0),
                            height: 20.0,
                            width: 20.0,
                            child: const Icon(Icons.close,
                                color: Color.fromARGB(255, 126, 126, 154)),
                          )),
                    ),
                  ),
                ],
              ),
            ),
// Цена и количество человек

            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 6.0, left: 16.0, bottom: 16.0),
                  child: SizedBox(
                    child: Row(
                      children: [
                        Text(
                            '${widget.item.cost * ShopList.elementAt(ShopList.indexWhere((element) => element.index == widget.item.id)).people} ₽',
                            style: const TextStyle(
                                fontSize: 17.0,
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 24 / 17,
                                letterSpacing: 0)),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                  SclWordPeople(ShopList.elementAt(
                                          ShopList.indexWhere((element) =>
                                              element.index == widget.item.id))
                                      .people),
                                  style: const TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w300,
                                      height: 20 / 15,
                                      letterSpacing: 0)),
                              const SizedBox(
                                width: 16.0,
                              ),
                              Container(
                                height: 32,
                                width: 64,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 245, 245, 249),
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
// Уменьшение количества человек
                                      ShopList.elementAt(ShopList.indexWhere(
                                                  (element) =>
                                                      element.index ==
                                                      widget.item.id)).people ==
                                              1
                                          ? Center(
                                              child: Container(
                                                color: const Color.fromRGBO(
                                                    255, 0, 0, 0),
                                                height: 20.0,
                                                width: 20.0,
                                                child: const Icon(
                                                  Icons.remove,
                                                  color: Color.fromARGB(
                                                      255, 184, 193, 204),
                                                ),
                                              ),
                                            )
                                          : GestureDetector(
                                              onTap: () {
                                                widget.DeletePerson(
                                                    widget.item.id);
                                              },
                                              child: Center(
                                                child: Container(
                                                  color: const Color.fromRGBO(
                                                      255, 0, 0, 0),
                                                  height: 20.0,
                                                  width: 20.0,
                                                  child: const Icon(
                                                    Icons.remove,
                                                    color: Color.fromARGB(
                                                        255, 147, 147, 150),
                                                  ),
                                                ),
                                              )),
                                      Container(
                                        width: 12.0,
                                        child: Center(
                                          child: Container(
                                            height: 16.0,
                                            width: 1.0,
                                            color: Color.fromARGB(
                                                255, 235, 235, 235),
                                          ),
                                        ),
                                      ),
// Увеличение количества человек
                                      GestureDetector(
                                          onTap: () {
                                            widget.AddPerson(widget.item.id);
                                          },
                                          child: Center(
                                            child: Container(
                                              color: const Color.fromRGBO(
                                                  255, 0, 0, 0),
                                              height: 20.0,
                                              width: 20.0,
                                              child: const Icon(
                                                Icons.add,
                                                color: Color.fromARGB(
                                                    255, 147, 147, 150),
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
