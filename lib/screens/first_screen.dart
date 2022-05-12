import 'package:flutter/material.dart';
import 'package:flutter_nike_store/screens/second_screen.dart';

import '../style/colors.dart';
import '../style/text_style.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      color: primaryColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: primaryColor,
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: primaryColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05,
                          vertical: height * 0.03,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.menu_rounded,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'Explore\nsneakers',
                        style: bigTitleWhiteStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: width,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  decoration: BoxDecoration(
                    color: scaffoldColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(width * 0.1),
                      topLeft: Radius.circular(width * 0.1),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: width * 0.8,
                        height: height * 0.2,
                        margin: EdgeInsets.symmetric(vertical: height * 0.04),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(width * 0.04),
                        ),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'pic1.png',
                                  width: width * 0.3,
                                ),
                                Image.asset(
                                  'pic2.png',
                                  width: width * 0.3,
                                )
                              ],
                            ),
                            Container(
                              width: width,
                              height: height * 0.2,
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius:
                                    BorderRadius.circular(width * 0.04),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(width * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'NEW RELEASE',
                                      style: bodyGreyStyle,
                                    ),
                                    const Text(
                                      'NIKE X STUSSY AIR ZOOM',
                                      style: bodyWhiteStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width,
                        child: const Text(
                          'POPULAR',
                          style: bigTitleBlackStyle3,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ProductWidget(
                              width: width,
                              height: height,
                              title: 'Air Max 97',
                              model: 'SLIVER BULLET',
                              price: '\$229',
                              imagePath: 'pic3.png',
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const SecondScreen(),
                                  ),
                                );
                              },
                              child: ProductWidget(
                                width: width,
                                height: height,
                                title: 'Zoom 2K',
                                model: 'BLACK/WHITE',
                                price: '\$358',
                                imagePath: 'pic4.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.imagePath,
    required this.title,
    required this.model,
    required this.price,
  }) : super(key: key);

  final double width;
  final double height;
  final String imagePath;
  final String title;
  final String model;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.45,
      height: height * 0.35,
      margin: EdgeInsets.all(width * 0.04),
      padding: EdgeInsets.all(width * 0.03),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(width * 0.03),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 10),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('NIKE', style: bodyBlackStyle),
          SizedBox(height: height * 0.01),
          Text(title, style: bigTitleBlackStyle3),
          SizedBox(height: height * 0.01),
          Text(model, style: bodyGreyStyle),
          SizedBox(height: height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.star_border,
                color: Colors.yellow[600],
              ),
              Text(
                price,
                style: bodyBlackStyle,
              )
            ],
          ),
          Image.asset(
            imagePath,
            width: width,
            height: height * 0.17,
          ),
        ],
      ),
    );
  }
}
