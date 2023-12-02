import 'package:flutter/material.dart';

import '../icons/my_flutter_app_icons.dart';

class FavoriteAndComparisonButtonWidget extends StatelessWidget {
  final String buttonText;
  final String countText;
  const FavoriteAndComparisonButtonWidget({
    required this.buttonText,
    required this.countText,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                buttonText,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color.fromRGBO(90, 89, 88, 1),
                  fontFamily: 'Montserrat',
                ),
              ),
              const SizedBox(width: 13),
              Container(
                height: 16,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromRGBO(59, 183, 233, 1),
                ),
                child: Center(
                  child: Text(
                    countText,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
            ],
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
