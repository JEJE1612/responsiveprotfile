import 'package:flutter/material.dart';
import 'package:protofile/constants/colors.dart';
import 'package:protofile/utils/project_utils.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key, required this.project});
  final ProjectUtils project;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: CustomColor.bgLight2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            project.image,
            height: 140,
            width: 250,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: CustomColor.whitePrimary),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
               project.subtitle,
              style: TextStyle(fontSize: 10, color: CustomColor.whitePrimary),
            ),
          ),
          Spacer(),
          Container(
            color: CustomColor.bgLight1,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Text(
                  "Available on:",
                  style: TextStyle(
                      color: CustomColor.yellowSecondary, fontSize: 10),
                ),
                  Spacer(),
          InkWell(
            onTap: () {},
            child: Image.asset(
              "assets/ios.png",
              width: 19,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/android.png",
                width: 17,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Image.asset(
              "assets/web.png",
              width: 17,
            ),
          )

             
              ],
            ),
          ),
             ],
      ),
    );
  }
}
