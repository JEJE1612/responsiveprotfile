import 'package:flutter/material.dart';
import 'package:protofile/constants/colors.dart';
import 'package:protofile/constants/nav_item.dart';
import 'package:protofile/styles/styles.dart';
import 'package:protofile/widgets/sitlelodo.dart';

class HeaderDesKtop extends StatelessWidget {
  const HeaderDesKtop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      width: double.maxFinite,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SitleLodo(),
          Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    navTitles[i],
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.whitePrimary),
                  )),
            )
        ],
      ),
    );
  }
}
