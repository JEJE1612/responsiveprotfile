import 'package:flutter/material.dart';
import 'package:protofile/styles/styles.dart';
import 'package:protofile/widgets/sitlelodo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap,this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SitleLodo(
            onTap: onLogoTap,
          ),
          Spacer(),
          IconButton(
          onPressed:onMenuTap, 
          icon: Icon(Icons.menu,
          color: Colors.white,
          )),
          SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
