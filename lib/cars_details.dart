import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:unicons/unicons.dart';

class DetailsPage extends StatefulWidget {
  final String carImage;
  final String carClass;
  final String carName;
  final int carPower;
  final String people;
  final String bags;
  final int carPrice;
  final String carRating;
  final bool isRotated;

  const DetailsPage({
    Key? key,
    required this.carImage,
    required this.carClass,
    required this.carName,
    required this.carPower,
    required this.people,
    required this.bags,
    required this.carPrice,
    required this.carRating,
    required this.isRotated,
  }) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //check the size of device
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0), //appbar size
        child: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          shadowColor: Colors.transparent,
          backgroundColor: themeData.backgroundColor,
          leading: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
            ),
            child: SizedBox(
              height: size.width * 0.1,
              width: size.width * 0.1,
              child: InkWell(
                onTap: () {
                  Get.back(); //go back to home page
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: themeData.cardColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Icon(
                    UniconsLine.multiply,
                    color: themeData.secondaryHeaderColor,
                    size: size.height * 0.025,
                  ),
                ),
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          leadingWidth: size.width * 0.15,
          title:
          Text("Carwale",style: TextStyle(color: Colors.deepPurple.shade700,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 0.5),),

          centerTitle: true,
        ),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Center(
        child: Container(
          height: size.height,
          width: size.height,
          decoration: BoxDecoration(
            color: themeData.backgroundColor,
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
              ),
              child: Stack(
                children: [
                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      widget.isRotated
                          ? Image.asset(
                        widget.carImage,
                        height: size.width * 0.5,
                        width: size.width * 0.8,
                        fit: BoxFit.contain,
                      )
                          : Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(pi),
                        child: Image.asset(
                          widget.carImage,
                          height: size.width * 0.5,
                          width: size.width * 0.8,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.carClass,
                            textAlign: TextAlign.center,

                          ),
                          const Spacer(),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                            size: size.width * 0.06,
                          ),
                          Text(
                            widget.carRating,
                            textAlign: TextAlign.center,

                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            widget.carName,
                            textAlign: TextAlign.left,

                          ),
                          const Spacer(),
                          Text(
                            '${widget.carPrice}\$',

                          ),
                          Text(
                            '/per day',

                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.03,
                        ),
                        child: Text(
                          'Select Location',

                        ),
                      ),
                      Center(
                        child: SizedBox(
                          height: size.height * 0.15,
                          width: size.width * 0.9,
                          child: Container(
                            decoration: BoxDecoration(
                              color: themeData.cardColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.05,
                                    vertical: size.height * 0.015,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        UniconsLine.map_marker,
                                        color: const Color(0xff3b22a1),
                                        size: size.height * 0.05,
                                      ),
                                      Text(
                                        'Cycling track',
                                        textAlign: TextAlign.center,

                                      ),
                                      Text(
                                        '4PJV+GC4, Dumas Road, Gaviyer,surat.',
                                        textAlign: TextAlign.center,

                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.02,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buildStat(
                              UniconsLine.dashboard,
                              '${widget.carPower} KM',
                              'Power',
                              size,
                              themeData,
                            ),
                            buildStat(
                              UniconsLine.users_alt,
                              'People',
                              '( ${widget.people} )',
                              size,
                              themeData,
                            ),
                            buildStat(
                              UniconsLine.briefcase,
                              'Bags',
                              '( ${widget.bags} )',
                              size,
                              themeData,
                            ),
                          ],
                        ),
                      ),




                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.03,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width * 0.025,
                            ),
                            child: Container(
                              height: size.height * 0.06,
                              width: size.width * 0.14,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Color(0xff3b22a1), //filters bg color
                              ),
                              child: Icon(
                                UniconsLine.music,
                                color: Colors.white,
                                size: size.height * 0.032,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width * 0.025,
                            ),
                            child: Container(
                              height: size.height * 0.06,
                              width: size.width * 0.14,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Color(0xff3b22a1), //filters bg color
                              ),
                              child: Icon(
                                UniconsLine.medical_drip,
                                color: Colors.white,
                                size: size.height * 0.032,
                              ),
                            ),
                          ),
                            Padding(
                            padding: EdgeInsets.only(
                              left: size.width * 0.025,
                            ),
                            child: Container(
                              height: size.height * 0.06,
                              width: size.width * 0.14,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Color(0xff3b22a1), //filters bg color
                              ),
                              child: Icon(
                                UniconsLine.search,
                                color: Colors.white,
                                size: size.height * 0.032,
                              ),
                            ),
                          ), Padding(
                            padding: EdgeInsets.only(
                              left: size.width * 0.025,
                            ),
                            child: Container(
                              height: size.height * 0.06,
                              width: size.width * 0.14,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Color(0xff3b22a1), //filters bg color
                              ),
                              child: Icon(
                                UniconsLine.wifi,
                                color: Colors.white,
                                size: size.height * 0.032,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width * 0.025,
                            ),
                            child: Container(
                              height: size.height * 0.06,
                              width: size.width * 0.14,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Color(0xff3b22a1), //filters bg color
                              ),
                              child: Icon(
                                UniconsLine.location_point,
                                color: Colors.white,
                                size: size.height * 0.032,
                              ),
                            ),
                          ),
                        ],)
                      ),


                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding buildStat(
      IconData icon,
      String title,
      String desc,
      Size size,
      ThemeData themeData,
      ) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.015,
      ),
      child: SizedBox(
        height: size.width * 0.32,
        width: size.width * 0.25,
        child: Container(
          decoration: BoxDecoration(
            color: themeData.cardColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: size.width * 0.03,
              left: size.width * 0.03,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: const Color(0xff3b22a1),
                  size: size.width * 0.08,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.width * 0.02,
                  ),
                  child: Text(
                    title,

                  ),
                ),
                Text(
                  desc,

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

