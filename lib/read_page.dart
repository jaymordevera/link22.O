import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:link22_o/details/detail_page_1.dart';
import 'package:link22_o/details/detail_page_2.dart';
import 'package:link22_o/details/detail_page_3.dart';
import 'package:link22_o/details/detail_page_4.dart';
import 'package:link22_o/details/detail_page_5.dart';
import 'package:link22_o/details/detail_page_6.dart';
import 'package:link22_o/icons.dart';
import 'package:link22_o/settings/settings_page.dart';
import 'package:link22_o/widgets/card_read_material.dart';
import 'package:link22_o/widgets/svg_asset.dart';

class ReadPage extends StatefulWidget {
  const ReadPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ReadPage> createState() => _ReadPage();
}

class _ReadPage extends State<ReadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Read Page
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [

            // Top Bar
            Padding(
              padding: EdgeInsets.only(
                left: 28.w,
                right: 18.w,
                top: 36.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Readings",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 32.w,
                          fontWeight: FontWeight.bold)),

                ],
              ),
            ),

            // Must Read Text
            Padding(
              padding: EdgeInsets.only(left: 28.w, top: 18.w, right: 28.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Must Read",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.w),
                  ),
                ],
              ),
            ),

            // Space after Must Read
            SizedBox(
              height: 20.h,
            ),

            // Card Material 1: What is fake news?
            ReadCard(
              onTap: onCardMaterialTapped_1,
              title: "What is False Information?",
              subtitle: "Learn all about false information",
              tag: "1",
            ),
            SizedBox(height: 20.w),
            // End of Card 1


            // Card Material 2: Types of Fake News
            ReadCard(
              onTap: onCardMaterialTapped_2,
              title: "Types of False Information",
              subtitle: "Familiarize yourself to several kinds of false information",
              tag: "2",
            ),
            SizedBox(height: 20.w),
            // End of Card 2


            // Card Material 3: Where does Fake News start?
            ReadCard(
              onTap: onCardMaterialTapped_3,
              title: "Where does False Information start?",
              subtitle: "Discover the origin of this issue",
              tag: "3",
            ),
            SizedBox(height: 20.w),
            // End of Card 3


            // Card Material 4: How does Fake News spread?
            ReadCard(
              onTap: onCardMaterialTapped_4,
              title: "How False Information spreads",
              subtitle: "Be aware of false facts, it may infect you!",
              tag: "4",
            ),
            SizedBox(height: 20.w),
            // End of Card 4


            // Card Material 5: How to spot Fake News?
            ReadCard(
              onTap: onCardMaterialTapped_5,
              title: "How to spot False Information?",
              subtitle: "Discern the truth to ensure the future",
              tag: "5",
            ),
            SizedBox(height: 20.w),
            // End of Card 5


            // Card Material 6: What can you do?
            ReadCard(
              onTap: onCardMaterialTapped_6,
              title: "What can you do?",
              subtitle: "Here are several things you can do to stop this madness",
              tag: "6",
            ),
            SizedBox(height: 20.w),
            // End of Card 6

          ],
        ),
      ),
    );
  }


  void onCardMaterialTapped_1() {
    Get.to(()=> DetailPage_1(), transition: Transition.rightToLeft);
  }

  void onCardMaterialTapped_2() {
    Get.to(()=> DetailPage_2(), transition: Transition.rightToLeft);
  }

  void onCardMaterialTapped_3() {
    Get.to(()=> DetailPage_3(), transition: Transition.rightToLeft);
  }

  void onCardMaterialTapped_4() {
    Get.to(()=> DetailPage_4(), transition: Transition.rightToLeft);
  }

  void onCardMaterialTapped_5() {
    Get.to(()=> DetailPage_5(), transition: Transition.rightToLeft);
  }

  void onCardMaterialTapped_6() {
    Get.to(()=> DetailPage_6(), transition: Transition.rightToLeft);
  }
}
