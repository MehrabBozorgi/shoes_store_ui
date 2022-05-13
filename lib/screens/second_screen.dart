import 'package:flutter/material.dart';

import '../style/colors.dart';
import '../style/text_style.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    const String desc =
        'The inner of the shoe is pretty comfortable too. With a foam sock-liner and comfortable in-sole, the 97 is a good option if you prefer sockless wear';
    return Container(
      color: scaffoldColor,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios,color: primaryColor),
                      onPressed: (){
                        Navigator.of(context).pop(
                        );
                      },
                    ),
                    const Text(
                      'NIKE',
                      style: bigTitleBlackStyle3,
                    ),
                    const Icon(
                      Icons.shopping_cart_outlined,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.1,
                  bottom: height * 0.03,
                ),
                child: Image.asset('pic4.png'),
              ),
              Padding(
                padding: EdgeInsets.all(width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'HOT RELEASE',
                      style: bodyGreyStyle,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(width * 0.01),
                          width: width * 0.15,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(width * 0.04),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3,
                              )
                            ],
                          ),
                          child: Icon(
                            Icons.terrain_rounded,
                            color: primaryColor,
                            size: width * 0.15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(width * 0.01),
                          width: width * 0.15,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(width * 0.04),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3,
                              )
                            ],
                          ),
                          child: Icon(
                            Icons.directions_run_outlined,
                            color: primaryColor,
                            size: width * 0.1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: const Text(
                  'React Phanatom\nRun Flyknit 2',
                  style: bigTitleBlackStyle,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Text(desc, style: descGreyStyle),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.05,
                  right: width * 0.03,
                  left: width * 0.03,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '\$229',
                      style: bodyBlackStyle,
                    ),
                    Container(
                      width: width * 0.25,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(width * 0.03),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Buy',
                            style: bodyWhiteStyle,
                          ),
                          Icon(
                            Icons.double_arrow_rounded,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
