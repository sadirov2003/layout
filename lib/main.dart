import 'package:flutter/material.dart';
import 'package:flutter_layout_app/icons/my_flutter_app_icons.dart';
import 'package:flutter_layout_app/pages/orders_page.dart';
import 'package:flutter_layout_app/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Revyline'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(60, 183, 233, 1),
                    fontFamily: 'Montserrat',
                  ),
                ),
                const Text(
                  'главный секрет вашей улыбки',
                  style: TextStyle(
                    fontSize: 11,
                    color: Color.fromRGBO(90, 89, 88, 1),
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    IconApp.message_open,
                    color: Color.fromRGBO(59, 183, 233, 1),
                    size: 35,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    IconApp.phone,
                    size: 25,
                    color: Color.fromRGBO(59, 183, 233, 1),
                  ),
                )
              ],
            ),
          ]),
          elevation: 0,
        ),
        backgroundColor: Colors.white70,
        body: OrdersPage(),
      ),
    );
  }
}
