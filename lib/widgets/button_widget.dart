import 'package:flutter/material.dart';

import '../icons/my_flutter_app_icons.dart';

class ButtonWidget extends StatelessWidget {
  final String textButton;
  const ButtonWidget({
    required this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textButton,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: textButton == 'Россия, Москва' ? Color.fromRGBO(59, 183, 233, 1) : Color.fromRGBO(90, 89, 88, 1),
              fontFamily: 'Montserrat',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconApp.arrow_back,
              size: 18,
              color: Color.fromRGBO(90, 89, 88, 1),
            ),
          )
        ],
      ),
    );
  }
}
