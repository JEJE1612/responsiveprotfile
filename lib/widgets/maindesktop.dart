import 'package:flutter/material.dart';
import 'package:protofile/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: screenWidth.height / 10,
      constraints: BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi,\n I'm Jehan Ghneam\n A Flutter Developer",
                style: TextStyle(
                    fontSize: 30.0,
                    height:1.5,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Get in touch",
                  ),
                ),
              )
            ],
          ),
          Image.asset(
            "assets/icons.png",
            width: screenWidth.width / 3,
          )
        ],
      ),
    );
  }
}
