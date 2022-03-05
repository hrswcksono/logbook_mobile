import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 110,
            child: DrawerHeader(
              child: Row(
                children: [
                  Image.asset('assets/icons/logo_logbook.png'),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  Text(
                    'Logbook App',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1.0, color: Colors.blue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
