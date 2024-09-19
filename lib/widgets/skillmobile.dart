import 'package:flutter/material.dart';
import 'package:protofile/constants/colors.dart';
import 'package:protofile/constants/skill_item.dart';

class SkillMobile extends StatelessWidget {
  const SkillMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return   ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 500.0
      ),
      child: Column(
                  children: [
                    for (int i = 0; i < platformItem.length; i++)
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: CustomColor.bgLight2,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          leading: Image.asset(
                            platformItem[i]['img'],
                            width: 26.0,
                          ),
                          title: Text(platformItem[i]["title"]),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                     Wrap(
                      spacing: 10.0,
                      runSpacing: 10.0,
                      alignment: WrapAlignment.center,
                      children: [
                        for(int i =0; i<skillItem.length;i++)
                        Chip(
                          padding: EdgeInsets.symmetric(
                            vertical: 12.0,
                            horizontal: 16.0
                          ),
                          label: Text(skillItem[i]['title']),
                          avatar:Image.asset(skillItem[0]['img'])
      
                          )
                      ],
                     ) 
                  ],
                ),
    );
  }
}