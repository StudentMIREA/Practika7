import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 92.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 22.0, left: 27.0),
              child: Text(
                'Рябова Екатерина',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 28 / 24,
                    wordSpacing: 0.33),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0, left: 27.0),
              child: Text('+7 900 800-55-33',
                  style: TextStyle(
                      color: Color.fromARGB(255, 137, 138, 141),
                      fontSize: 15.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 16 / 15,
                      wordSpacing: 0.33),
                  textAlign: TextAlign.left),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 48.0, left: 27.0),
              child: Text('email@gmail.com',
                  style: TextStyle(
                      color: Color.fromARGB(255, 137, 138, 141),
                      fontSize: 15.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 16 / 15,
                      wordSpacing: 0.33),
                  textAlign: TextAlign.left),
            ),
// Опции
            Padding(
              padding: const EdgeInsets.only(left: 27.0),
              child: Container(
                height: 256,
                child: Column(
                  children: [
                    Container(
                      height: 64.0,
                      child: Row(
                        children: [
                          Image.asset('lib/images/order.png',
                              width: 32, height: 32),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Text(
                            'Мои заказы',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 1.4,
                                wordSpacing: 0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 64.0,
                      child: Row(
                        children: [
                          Image.asset('lib/images/cards.png',
                              width: 32, height: 32),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Text(
                            'Медицинские карты',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 24 / 17,
                                wordSpacing: 0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 64.0,
                      child: Row(
                        children: [
                          Image.asset('lib/images/adress.png',
                              width: 32, height: 32),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Text(
                            'Мои адреса',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 24 / 17,
                                wordSpacing: 0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 64.0,
                      child: Row(
                        children: [
                          Image.asset('lib/images/settings.png',
                              width: 32, height: 32),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Text(
                            'Настройки',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 24 / 17,
                                wordSpacing: 0),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            Center(
                child: Container(
                    child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 20,
                  child: Text(
                    'Ответы на вопросы',
                    style: TextStyle(
                        color: Color.fromARGB(255, 147, 147, 150),
                        fontSize: 15.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                        height: 20 / 15,
                        wordSpacing: 0),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                SizedBox(
                  height: 20,
                  child: Text(
                    'Политика конфиденциальности',
                    style: TextStyle(
                        color: Color.fromARGB(255, 147, 147, 150),
                        fontSize: 15.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                        height: 20 / 15,
                        wordSpacing: 0),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                SizedBox(
                  height: 20,
                  child: Text(
                    'Пользовательское соглашение',
                    style: TextStyle(
                        color: Color.fromARGB(255, 147, 147, 150),
                        fontSize: 15.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                        height: 20 / 15,
                        wordSpacing: 0),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                SizedBox(
                  height: 20,
                  child: Text(
                    'Выход',
                    style: TextStyle(
                        color: Color.fromARGB(255, 253, 53, 53),
                        fontSize: 15.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                        height: 20 / 15,
                        wordSpacing: 0),
                  ),
                ),
              ],
            )))
          ],
        ),
      ),
    );
  }
}
