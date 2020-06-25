import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'menu_option.dart';
import 'order_item.dart';
import 'popular_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "McDonalds's Touch Interface Concept",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.varelaRoundTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      child: SafeArea(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 24.0, bottom: 16.0, top: 24.0, right: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                child: SvgPicture.asset(
                                  'assets/images/logo.svg',
                                  height: 48,
                                ),
                              ),
                              SizedBox(
                                height: 64.0,
                              ),
                              Text(
                                "Hey",
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                "what's up?",
                                style: TextStyle(
                                  fontSize: 36,
                                ),
                              ),
                              SizedBox(
                                height: 32.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      MenuOption(
                                        title: "Combo Meal",
                                        imageUrl: 'assets/images/combo_meal.png',
                                        discount: 20,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      MenuOption(
                                        title: "Burgers & Sandwiches",
                                        imageUrl: 'assets/images/burgers_and_sandwiches.png',
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      MenuOption(
                                        title: "Happy Meal",
                                        imageUrl: 'assets/images/happy_meal.png',
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      MenuOption(
                                        title: "Beverages",
                                        imageUrl: 'assets/images/beverages.png',
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      MenuOption(
                                        title: "Chicken",
                                        imageUrl: 'assets/images/chicken.png',
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      MenuOption(
                                        title: "Snacks & Sides",
                                        imageUrl: 'assets/images/snacks_and_sides.png',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 48.0,
                              ),
                              Text(
                                "Popular",
                                style: TextStyle(
                                  fontSize: 36,
                                ),
                              ),
                              SizedBox(
                                height: 32.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      PopularItem(
                                        title: "Big Mac",
                                        imageUrl: 'assets/images/big_mac.png',
                                        price: r"$ 3.79",
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      PopularItem(
                                        title: "Double Quarter Pounder",
                                        imageUrl: 'assets/images/double_quarter_pounder.png',
                                        price: r"$ 4.10",
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      PopularItem(
                                        title: "Bacon Ranch Salad",
                                        imageUrl: 'assets/images/bacon_ranch_salad.png',
                                        price: r"$ 2.18",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      PopularItem(
                                        title: "Quarter Pounder",
                                        imageUrl: 'assets/images/quarter_pounder.png',
                                        price: r"$ 3.79",
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      PopularItem(
                                        title: "Filet O Fish",
                                        imageUrl: 'assets/images/filet_o_fish.png',
                                        price: r"$ 2.99",
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      PopularItem(
                                        title: "Cheeseburger",
                                        imageUrl: 'assets/images/cheeseburger.png',
                                        price: r"$ 2.49",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[50],
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 16.0, bottom: 16.0, top: 24.0, right: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "My",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Order",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Take Out",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Expanded(
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            children: <Widget>[
                              OrderItem(
                                  imageUrl: 'assets/images/beverages.png',
                                  name: 'Diet Coke',
                                  price: r'$ 1.49',
                                  quantity: 1),
                              OrderItem(
                                  imageUrl:
                                      'assets/images/snacks_and_sides.png',
                                  name: 'Large Fries',
                                  price: r'$ 3.98',
                                  quantity: 2),
                              OrderItem(
                                  imageUrl: 'assets/images/cheeseburger.png',
                                  name: 'Cheeseburger',
                                  price: r'$ 2.49',
                                  quantity: 1),
                              OrderItem(
                                  imageUrl: 'assets/images/chicken.png',
                                  name: 'Nuggets x10',
                                  price: r'$ 3.99',
                                  quantity: 1),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Center(
                          child: Text(
                            "Total",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            r'$11.95',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFCB3F),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Done",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
