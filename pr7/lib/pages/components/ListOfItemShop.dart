import 'package:flutter/material.dart';
import 'package:pr7/model/item.dart';
import 'package:pr7/pages/components/ItemsList.dart';

class ListOfItemShop extends StatefulWidget {
  const ListOfItemShop(
      {super.key, required this.item, required this.DeleteShopItem});

  final Item item;
  final Function(int i) DeleteShopItem;

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
              child: IntrinsicWidth(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          widget.item.name,
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 1.25,
                            letterSpacing: -0.32,
                          ),
                          softWrap: true,
                        ),
                      ),
                    ),
// Иконка удаления услуги из корзины
                    Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        height: 10.0,
                        width: 10.0,
                        child: Transform.rotate(
                            angle: 3.14 / 4,
                            child: IconButton(
                              onPressed: () => {
                                setState(() {
                                  print('Ну хотя бы сюда попал');
                                  widget.DeleteShopItem(widget.item.id);
                                })
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Color.fromARGB(255, 126, 126, 154),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
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
                        Text('${widget.item.cost} ₽',
                            style: const TextStyle(
                                fontSize: 17.0,
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 1.4,
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
                                      height: 1.4,
                                      letterSpacing: 0)),
                              const SizedBox(
                                width: 16.0,
                              ),
                              Container(
                                height: 32,
                                width: 64,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 245, 245, 249),
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 12,
                                        width: 12,
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.remove,
                                              color: Color.fromARGB(
                                                  255, 184, 193, 204),
                                            )),
                                      ),
                                      SizedBox(
                                        height: 12,
                                        width: 12,
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.add,
                                              color: Color.fromARGB(
                                                  255, 184, 193, 204),
                                            )),
                                      ),
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
