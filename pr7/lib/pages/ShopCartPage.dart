import 'package:flutter/material.dart';
import 'package:pr7/model/item.dart';
import 'package:pr7/pages/components/ItemsList.dart';
import 'package:pr7/pages/components/ListOfItemShop.dart';

class ShopCartPage extends StatefulWidget {
  const ShopCartPage({super.key});

  @override
  State<ShopCartPage> createState() => _ShopCartPageState();
}

class _ShopCartPageState extends State<ShopCartPage> {
  List<Item> ShopCartList = ItemsList.where(
      (item) => ShopList.any((element) => element.index == item.id)).toList();

  void AddShopList(int i) {
    setState(() {
      if (ShopList.any((item) => item.index == i)) {
        ShopList.removeAt(ShopList.indexWhere((item) => item.index == i));
        ShopCartList = ItemsList.where(
                (item) => ShopList.any((element) => element.index == item.id))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ShopList.length == 0
            ? const Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 48.0, left: 27.0, bottom: 22.0),
                    child: Text(
                      'Корзина',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                          wordSpacing: 0.33),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Нет товаров в корзине',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 1.25,
                        letterSpacing: -0.32,
                      ),
                    ),
                  )
                ],
              )
            : ListView.builder(
                itemCount: ShopCartList.length + 2,
                itemBuilder: (BuildContext context, int index) {
// заголовок
                  return index == 0
                      ? const Padding(
                          padding: EdgeInsets.only(
                              top: 48.0, left: 27.0, bottom: 22.0),
                          child: Text(
                            'Корзина',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 1.2,
                                wordSpacing: 0.33),
                          ),
                        )
// сумма товаров в корзине
                      : index == ShopCartList.length + 1
                          ? const Padding(
                              padding: EdgeInsets.only(
                                  top: 24.0,
                                  left: 28.0,
                                  right: 28.0,
                                  bottom: 20.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Сумма',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        height: 1.4,
                                        letterSpacing: 0.38),
                                  ),
                                  Expanded(
                                      child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            'cost',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20.0,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w500,
                                                height: 1.4,
                                                letterSpacing: 0.38),
                                          )))
                                ],
                              ),
                            )
// Список услуг
                          : ListOfItemShop(
                              item: ShopCartList.elementAt(index - 1),
                              DeleteShopItem: (int i) => AddShopList(i));
                }));
  }
}
