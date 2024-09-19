import 'package:flutter/material.dart';
import 'package:protofile/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      height: screenWidth.height,
      width: screenWidth.width,
      constraints: BoxConstraints(minHeight: 600.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.6),
                CustomColor.scaffoldBg.withOpacity(0.6)
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/icons.png",
              width: screenWidth.width,
            ),
          ),
          Text(
            "Hi,\n I'm Jehan GHneam\n A Flutter Developer",
            style: TextStyle(
                fontSize: 20.0,
                height: 1,
                fontWeight: FontWeight.w600,
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
    );
  }
}
