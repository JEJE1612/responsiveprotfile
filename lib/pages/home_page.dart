import 'package:flutter/material.dart';
import 'package:protofile/constants/colors.dart';
import 'package:protofile/constants/size.dart';
import 'package:protofile/widgets/custom_text_field.dart';
import 'package:protofile/widgets/drawer_mobile.dart';
import 'package:protofile/widgets/header_mobile.dart';
import 'package:protofile/widgets/headerdestop.dart';
import 'package:protofile/widgets/maindesktop.dart';
import 'package:protofile/widgets/mainmobile.dart';
import 'package:protofile/widgets/project_card.dart';
import 'package:protofile/widgets/skillmobile.dart';
import 'package:protofile/widgets/skills_desktop.dart';
import 'package:protofile/utils/project_utils.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer:
              constraints.maxWidth >= KMinDesktopWIdTH ? null : DrawerMobile(),
          body: ListView(scrollDirection: Axis.vertical, children: [
            if (constraints.maxWidth >= KMinDesktopWIdTH)
              HeaderDesKtop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            if (constraints.maxWidth >= 500.0) MainDesktop() else MainMobile(),
            Container(
                width: screenWidth.width,
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  children: [
                    Text(
                      "What I can do ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    if (constraints.maxWidth >= KMedDesktopWIdTH)
                      SkillsDesktop()
                    else
                      SkillMobile(),
                  ],
                )),
            ConstrainedBox(
              constraints: BoxConstraints(minWidth: 900),
              child: Container(
                width: screenWidth.width,
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  children: [
                    Text(
                      "Work Projects",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary),
                    ),
                   SizedBox(height: 50,)
                   , Wrap(
                      spacing: 25,
                      runSpacing: 25,
                      children: [
                        for(int i=0;i< hobbyProjectUtils.length;i++)
                        ProjectCardWidget(
                          project:hobbyProjectUtils[i],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
         , Container(
          padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
          color: CustomColor.bgLight1,
          child: Column(
            children: [
              Text("Get in touch",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary
              ),
              ),
              SizedBox(height: 50,),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth:700 ), 
                child: Row(
                  children: [
                    Flexible(
                      child:CustomTextField(
                       hintText: 'Your name',
                      )
                      ),
                    Flexible(
                      child:CustomTextField(
                       hintText: 'Your email',
                      )
                      )
                  ],
                ),
              )
              ,
              SizedBox(height: 15,),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 700
                ),
                child: CustomTextField(
                       hintText: 'Your message',
                       maLine: 20,
                      ),
              ),
              SizedBox(height: 20,),
               ConstrainedBox(
               constraints: BoxConstraints(
                  maxWidth: 700
                ),
                 child: SizedBox(
                   width: double.maxFinite,
                   child: ElevatedButton(
                    onPressed: (){}, 
                    child: Text("Get in touch")),
                 ),
               ),     
              SizedBox(height: 30,), 
             ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 300,
                
              ),
              child: Divider(),
              ),
             SizedBox(height: 15,) ,
            Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: [
                Image.asset("assets/github.png",width: 28,),
                Image.asset("assets/facebook.png",width: 28,),
                Image.asset("assets/instagram.png",width: 28,),
                Image.asset("assets/telegram.png",width: 28,),
                Image.asset("assets/linkedin.png",width: 28,),
              ],
            )    
            ],
          ),
         )
           ,SizedBox(height: 30),
           Container(
            padding: EdgeInsets.symmetric(
              vertical: 20
            ),
            width: double.maxFinite,
            alignment: Alignment.center,
            child: Text(
              "Made by Jehan GHneam with Flutter ",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: CustomColor.whitePrimary
              ),
            ),

           )
          
          
          ]));
    });
  }
}
 


  List<ProjectUtils> hobbyProjectUtils = [
    ProjectUtils(
      image: "assets/projects/project.webp", 
      title: "English Learning App", 
      subtitle: "This is an English learning app for students to learn English"
      ),ProjectUtils(
      image: "assets/projects/project(1).jpg", 
      title: "English Dictionary App", 
      subtitle:"This is a responsive online shop web application for car english"
      ),ProjectUtils(
      image: "assets/projects/project(2).png", 
      title: "English Brain Craft", 
      subtitle: "This is a dvertisement Management System to buy ,sell"
      ),ProjectUtils(
      image: "assets/projects/project(3).png", 
      title: "Online Shop Web App ", 
      subtitle:  "This is a dvertisement Management System to buy ,sell"
      ),ProjectUtils(
      image: "assets/projects/project(4).jpg", 
      title: "Advertisement Management System", 
      subtitle:  "This is a dvertisement Management System to buy ,sell"
      ),ProjectUtils(
      image: "assets/projects/project(5).png", 
      title: "Pocket Dictionary", 
      subtitle:  "This is a dvertisement Management System to buy ,sell"
      ),
  ];

