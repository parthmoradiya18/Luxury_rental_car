import 'package:car_rental_for_travel/BottomNavigationBar_page.dart';
import 'package:car_rental_for_travel/Top.dart';
import 'package:car_rental_for_travel/rent.dart';
import 'package:flutter/material.dart';

import 'package:unicons/unicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          leadingWidth: size.width * 0.15,
          title: Text(
            "Carwale",
            style: TextStyle(
                color: Colors.deepPurple.shade700,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5),
          ),
          centerTitle: true,
        ),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigationBar_page(1, size, themeData),
      backgroundColor: themeData.backgroundColor,
      drawer: Drawer(
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(height: 30,),
            TextButton(
                onPressed: () {},
                child: Row(

                  children: [
                    Icon(Icons.account_circle,size:30,color: Colors.black,),
                    SizedBox(width: 10,),
                    Text(
                      "Carwale",
                      style: TextStyle(fontSize: 18, color: Colors.deepPurple),
                    ),
                  ],
                )),
            TextButton(
                onPressed: () {},
                child: Row(

                  children: [
                    Icon(Icons.search,size:30,color: Colors.black,),
                    SizedBox(width: 10,),
                    Text(
                      "Search For",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                )),
            SizedBox(height: 30,),
            Container(height: 2,width: 180,margin: EdgeInsets.all(5),color: Colors.black,),
            SizedBox(height: 30,),
            TextButton(
                onPressed: () {},
                child: Row(

                  children: [
                    Icon(Icons.home,size:30,color: Colors.black,),
                    SizedBox(width: 10,),
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                )),
            TextButton(
                onPressed: () {},
                child: Row(

                  children: [
                    Icon(Icons.person_2_outlined,size:30,color: Colors.black,),
                    SizedBox(width: 10,),
                    Text(
                      "owner",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )
                  ],
                )),
            TextButton(
                onPressed: () {},
                child: Row(

                  children: [
                    Icon(Icons.help,size:30,color: Colors.black,),
                    SizedBox(width: 10,),
                    Text(
                      "Help",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )
                  ],
                )),
            TextButton(
                onPressed: () {},
                child: Row(

                  children: [
                    Icon(Icons.notifications,size:30,color: Colors.black,),
                    SizedBox(width: 10,),
                    Text(
                      "Notifications",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )
                  ],
                )),
            SizedBox(height: 30,),
            Container(height: 2,width: 180,margin: EdgeInsets.all(5),color: Colors.black,),
            SizedBox(height: 30,),
            TextButton(
                onPressed: () {},
                child: Row(

                  children: [
                    Icon(Icons.settings,size:30,color: Colors.black,),
                    SizedBox(width: 10,),
                    Text(
                      "Settings",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )
                  ],
                )),
            TextButton(
                onPressed: () {},
                child: Row(

                  children: [
                    Icon(Icons.logout,size:30,color: Colors.black,),
                    SizedBox(width: 10,),
                    Text(
                      "Log Out",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )
                  ],
                )),
            SizedBox(height: 30,),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.04,
                left: size.width * 0.05,
                right: size.width * 0.05,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: themeData.cardColor, //section bg color
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.04,
                      ),
                      child: Align(
                        child: Text(
                          'Browse Rental Cars By Brand',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.03,
                        left: size.width * 0.04,
                        bottom: size.height * 0.025,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.65,
                            height: size.height * 0.06,
                            child: TextField(
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  top: size.height * 0.01,
                                  left: size.width * 0.04,
                                  right: size.width * 0.04,
                                ),
                                enabledBorder: textFieldBorder(),
                                focusedBorder: textFieldBorder(),
                                border: textFieldBorder(),
                                hintText: 'Search a car',
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Top(size, themeData),
            Rent(size, themeData),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder textFieldBorder() {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(15.0)),
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.5),
        width: 1.0,
      ),
    );
  }
}
