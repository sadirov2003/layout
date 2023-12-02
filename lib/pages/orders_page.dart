import 'package:flutter/material.dart';

import '../widgets/often_buying_product_widget.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = ((MediaQuery.of(context).size.width) - 240) / 2;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 0),
      child: Column(
        children: [
          Container(
            height: 59,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              const SizedBox(width: 11),
              Icon(Icons.arrow_back_ios,
                  color: Color.fromRGBO(96, 141, 220, 1)),
              SizedBox(width: width),
              const Text(
                'ЗАКАЗЫ',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  color: Color.fromRGBO(96, 141, 220, 1),
                  fontFamily: 'Montserrat',
                ),
              ),
            ]),
          ),
          const SizedBox(height: 15),
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Container(
                height: 51,
                width: 245,
                child: Text(
                  'У вас пока нет ни одного заказа. Вы можете посмотреть что-то в каталоге товаров.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromRGBO(153, 153, 153, 1),
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 59,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(59, 183, 233, 1))),
                  onPressed: () {},
                  child: Text(
                    'Перейти в каталог'.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          OftenBuyingProductWidget(),
        ],
      ),
    );
  }
}
