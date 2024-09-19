import 'package:flutter/material.dart';
import 'package:protofile/constants/colors.dart';
import 'package:protofile/constants/nav_icon.dart';
import 'package:protofile/constants/nav_item.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
          backgroundColor: CustomColor.scaffoldBg,
          child: ListView(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      )),
                ),
              ),
              for (int i = 0; i < navIcons.length; i++)
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
                  titleTextStyle: const TextStyle(
                      color: CustomColor.whitePrimary,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                  onTap: () {},
                  leading: Icon(
                    navIcons[i],
                    color: Colors.white,
                  ),
                  title: Text(navTitles[i]),
                )
            ],
          ),
        );
  }
}