import 'package:flutter/material.dart';
import 'package:pr7/model/item.dart';
import 'package:pr7/pages/components/ItemsList.dart';
import 'package:pr7/pages/components/ListOfItemsShop';

class ShopCartPage extends StatefulWidget {
  const ShopCartPage({super.key});

  @override
  State<ShopCartPage> createState() => _ShopCartPageState();
}

class _ShopCartPageState extends State<ShopCartPage> {
  List<Item> ShopCartList = ItemsList.where(
      (item) => ShopList.any((element) => element.index == item.id)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: ShopCartList.length + 2,
            itemBuilder: (BuildContext context, int index) {
// заголовок
              return index == 0
                  ? const Padding(
                      padding:
                          EdgeInsets.only(top: 48.0, left: 27.0, bottom: 22.0),
                      child: Text(
                        'Корзина',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500),
                      ),
                    )
// сумма товаров в корзине
                  : index == ShopCartList.length + 1
                      ? const Padding(
                          padding: EdgeInsets.only(
                              top: 48.0, left: 27.0, bottom: 22.0),
                          child: Row(
                            children: [
                              Text(
                                'Сумма',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500),
                              ),
                              Text('cost')
                            ],
                          ),
                        )
// Список услуг
                      : ListOfItemShop(item: ShopCartList.elementAt(index - 1));
            }));
  }
}
