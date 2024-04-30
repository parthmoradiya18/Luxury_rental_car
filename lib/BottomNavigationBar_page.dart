

import 'package:car_rental_for_travel/BottomNavigationBarItem_page.dart';
import 'package:car_rental_for_travel/Car_Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

Widget BottomNavigationBar_page(int currIndex, Size size, ThemeData themeData) {
  return BottomNavigationBar(
    iconSize: size.width * 0.07,
    elevation: 0,
    selectedLabelStyle: const TextStyle(fontSize: 0),
    unselectedLabelStyle: const TextStyle(fontSize: 0),
    currentIndex: currIndex,
    backgroundColor: const Color(0x00ffffff),
    type: BottomNavigationBarType.fixed,
    selectedItemColor: themeData.brightness == Brightness.dark
        ? Colors.indigoAccent
        : Colors.black,
    unselectedItemColor: const Color(0xff3b22a1),
    onTap: (value) {
      if (value != currIndex) {
        if (value == 1) {
          Get.off(const HomePage());
        }
      }
    },
    items: [
      buildBottomNavItem(
        UniconsLine.incoming_call,
        themeData,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.map_marker,
        themeData,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.user,
        themeData,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.camera_plus,
        themeData,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.car,
        themeData,
        size,
      ),
    ],
  );
}