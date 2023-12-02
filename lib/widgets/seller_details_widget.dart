import 'package:flutter/material.dart';

class SellerDetailsWidget extends StatelessWidget {
  final IconData icon;
  final String infoText;
  final String communicationMethodText;
 SellerDetailsWidget({
    required this.icon,
    required this.infoText,
    required this.communicationMethodText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
      
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(59, 183, 233, 1),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              icon,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                infoText,
                style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Color.fromRGBO(153, 153, 153, 1),
                      fontFamily: 'Montserrat',
                    ),
              ),
              Text(
                communicationMethodText,
                style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color.fromRGBO(90, 89, 88, 1),
                      fontFamily: 'Montserrat',
                    ),
              ),
            ]
          ),
        ],
      ),
    );
  }
}
