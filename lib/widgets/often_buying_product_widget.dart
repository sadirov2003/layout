import 'package:flutter/material.dart';

class OftenBuyingProductWidget extends StatelessWidget {
  const OftenBuyingProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = ((MediaQuery.of(context).size.width) - 240) / 2;
    return Container(
      height: 332,
      child: Stack(
        children: [
          Container(height: 123, color: Color.fromRGBO(59, 183, 233, 1)),
          Positioned(
            top: 23,
            left: width,
            child: Text(
              'Часто покупают',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 77),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 255,
                      width: 151,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 13, 13, 9),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/product_image.jpg',
                              height: 86,
                              width: 110,
                            ),
                            const SizedBox(height: 6),
                            Container(
                              width: 103,
                              height: 45,
                              child: Text(
                                'Набор Revyline RL 010 черная+ белая',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              '11 790 р.',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            Text(
                              '11 490 р.',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              height: 38,
                              width: 128,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(59, 61, 200, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'в карзину'.toUpperCase(),
                                  style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Montserrat',
                                ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
