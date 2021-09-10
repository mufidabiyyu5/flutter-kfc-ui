import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kfc/theme.dart';
import 'package:kfc/models/category.dart';
import 'package:kfc/components/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List carouselImages = [
    'images/assets/banner-1.png',
    'images/assets/banner-2.png',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: redPrime,
          elevation: 0,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: redPrime.withOpacity(0.5),
                  blurRadius: 12,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: Image.asset(
              'assets/images/QR-Code-1.png',
              height: 32,
              width: 32,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: [
          Row(
            children: [
              Container(
                height: size.height * .35,
                width: size.width * .20,
                decoration: BoxDecoration(
                  color: redPrime,
                ),
              ),
              Container(
                height: size.height * .35,
                width: size.width * .80,
                decoration: BoxDecoration(
                  color: redSecond,
                ),
              )
            ],
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/Logo.png',
                            height: 20,
                            width: 68,
                          ),
                          Spacer(),
                          Text(
                            "KFC Points:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "15.000",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            'assets/images/line.png',
                            height: 19,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          // IconButton(
                          //   onPressed: () {},
                          //   icon: Image.asset(
                          //     'assets/images/History.png',
                          //     height: 20,
                          //     width: 20,
                          //   ),
                          // ),
                          Image.asset(
                            'assets/images/History.png',
                            height: 19,
                            width: 19,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Promo Hari Ini!",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
                CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage('assets/images/banner-1.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage('assets/images/banner-2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 150,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.9,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.easeInOut,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Menu untuk kamu!",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Category(
                              category: 'SPECIAL',
                              isSelected: true,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Category(
                              category: 'COMBO',
                              isSelected: false,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Category(
                              category: 'PRAKTIS',
                              isSelected: false,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Category(
                              category: 'ALA CARTE',
                              isSelected: false,
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ListView(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Products(),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: _currentIndex,
                  backgroundColor: Colors.white,
                  selectedLabelStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: redPrime,
                  ),
                  selectedItemColor: redPrime,
                  unselectedItemColor: greyColor,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: greyColor,
                  ),
                  onTap: (value) {
                    setState(() {
                      _currentIndex = value;
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/Home.png'),
                        color: redPrime,
                      ),
                      label: "Beranda",
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/Order.png'),
                        color: greyColor,
                      ),
                      label: "Pesananku",
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/Voucher.png'),
                        color: greyColor,
                      ),
                      label: "Voucher",
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/Profile.png'),
                        color: greyColor,
                      ),
                      label: "Profile Akun",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
