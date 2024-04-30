

import 'package:car_rental_for_travel/Car_data_calss.dart';
import 'package:car_rental_for_travel/cars.dart';
import 'package:car_rental_for_travel/category.dart';
import 'package:flutter/material.dart';

Widget Rent(Size size, ThemeData themeData) {
  return Column(
    children: [
      Category('Rent', size, themeData),
      Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.015,
          left: size.width * 0.03,
          right: size.width * 0.03,
        ),
        child:
        SizedBox(
          height: size.width * 0.55,
          width: cars.length * size.width * 0.5 * 1.03,
          child: ListView.builder(
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: cars.length,
            itemBuilder: (context, i) {
              return Car(
                i,
                size,
                themeData,
              );
            },
          ),
        ),
      ),
    ],
  );
}