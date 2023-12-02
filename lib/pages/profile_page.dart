import 'package:flutter/material.dart';
import 'package:flutter_layout_app/widgets/button_widget.dart';
import 'package:flutter_layout_app/widgets/favorite_and_comparison_buttom_widget.dart';
import 'package:flutter_layout_app/widgets/seller_details_widget.dart';

import '../icons/my_flutter_app_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
        child: Column(
          children: [
            Container(
              //color: Colors.black38,
              height: 197,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 19, top: 38),
                    height: 159,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(161, 228, 255, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 11,
                          left: 88,
                          child: Icon(IconApp.vector,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        Positioned(
                          left: 117,
                          top: 14,
                          child: Text(
                            'бонусов на вашем счету',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                        Positioned(
                            left: 305,
                            top: 12,
                            child: Icon(IconApp.question,
                                color: Color.fromRGBO(90, 89, 88, 1))),
                        Positioned(
                          left: 31,
                          top: 77,
                          child: Text(
                            '%',
                            style: TextStyle(
                              fontSize: 96,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 108,
                          left: 230,
                          child: Container(
                            width: 97,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'QR - код',
                                style: TextStyle(
                                  color: Color.fromRGBO(90, 89, 88, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/ellipse_image.jpg',
                      height: 94,
                      width: 94,
                    ),
                  ),
                  const Positioned(
                    top: 7,
                    left: 106,
                    child: Icon(IconApp.vector),
                  ),
                  Positioned(
                    left: 135,
                    top: 10,
                    child: Text(
                      '0 бонусов',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color.fromRGBO(90, 89, 88, 1),
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(children: [
                const ButtonWidget(textButton: 'Россия, Москва'),
                const ButtonWidget(textButton: 'Мои заказы'),
              ]),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(children: [
                const FavoriteAndComparisonButtonWidget(
                    buttonText: 'Избранное', countText: '2'),
                const FavoriteAndComparisonButtonWidget(
                    buttonText: 'Сравнение', countText: '2'),
              ]),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ButtonWidget(textButton: 'Акции'),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const ButtonWidget(textButton: 'Уведомления'),
                  const ButtonWidget(textButton: 'О нас'),
                  const ButtonWidget(textButton: 'Доставка и оплата'),
                  const ButtonWidget(textButton: 'Контакты'),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ButtonWidget(textButton: 'Подписки'),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ButtonWidget(textButton: 'Возврат, обмен, гарантия'),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  SellerDetailsWidget(
                      icon: Icons.sms_outlined,
                      infoText: 'Есть вопросы?',
                      communicationMethodText: 'Чат с консультаном'),
                  const SizedBox(height: 10),
                  SellerDetailsWidget(
                      icon: IconApp.phone,
                      infoText: 'Служба поддержки с 8:00 до 23:00',
                      communicationMethodText: '8(495)181-20-00'),
                  const SizedBox(height: 10),
                  SellerDetailsWidget(
                    icon: IconApp.message_open,
                    infoText: 'Электронная почта',
                    communicationMethodText: 'sale@revyline.ru',
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 29),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Условия использования приложения',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color.fromRGBO(59, 183, 233, 1),
                ),
              ),
            ),
            const SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
