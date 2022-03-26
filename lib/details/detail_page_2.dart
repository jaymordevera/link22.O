import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:link22_o/icons.dart';
import 'package:link22_o/widgets/svg_asset.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage_2 extends StatefulWidget {
  const DetailPage_2({Key? key}) : super(key: key);

  @override
  _DetailPageState_2 createState() => _DetailPageState_2();
}

class _DetailPageState_2 extends State<DetailPage_2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 80.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Hero(
                    tag: "2",
                    child: Material(
                      color: Colors.transparent,

                      // Title of Educational Material
                      child: Text("Types of False Information",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 32.w,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 27.w),

                  // Subtitle of Educational Material
                  child: Text(
                    "Familiarize yourself to several kinds of false information",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
                ),
                SizedBox(height: 25.h),

                // Pictures and Contents
                SizedBox(
                  height: 320.w,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 28.w),
                      Container(
                        height: 320.w,
                        width: 320.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,

                            // Image 1
                            image: AssetImage("assets/pics/details_2.png"),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 35.h),
                Padding(
                  padding: EdgeInsets.only(
                      left: 28.w, right: 28.w, bottom: 100.h),

                  // Text for the Article
                  child: Text(
                    "1. Fabricated Content - completely false content"
                        "\n\n2. Manipulated Content - distortion of genuine information or imagery, for example, a headline that is made more sensationalist, often popularised by ‘clickbait’"
                        "\n\n3. Imposter Content - impersonation of genuine sources, for example by using the branding of an established news agency"
                        "\n\n4. Misleading Content - misleading use of information, for example by presenting comment as fact"
                        "\n\n5. False Context of Connection - factually accurate content that is shared with false contextual information, for example when a headline of an article does not reflect the content"
                        "\n\n6. Satire and Parody - presenting humorous but false stores as if they are true. Although not usually categorized as fake news, this may unintentionally fool readers.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
                ),
              ],
            ),

            // Top Bar
            Align(alignment: Alignment.topCenter,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 22.w,
                        right: 22.w,
                        top: 20.h,
                        bottom: 10.h
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(360),
                            onTap: onBackIconTapped,
                            child: Container(
                              height: 35.w,
                              width: 35.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360),
                              ),
                              child: Center(
                                child: SvgAsset(
                                  color: Colors.black,
                                  assetName: AssetName.back,
                                  height: 20.w,
                                  width: 20.w,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                )
            ),


            // Share Button
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 87.h,
                decoration: BoxDecoration(
                    color: Colors.black,
                    gradient: LinearGradient(
                        stops: [0, 0.7],
                        colors: [
                          Colors.black54,
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter
                    )
                ),
                child: Center(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: onShareButtonPressed,
                      child: Ink(
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[500],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Container(
                          height: 56.h,
                          width: 319.w,
                          child: Center(child: Text("Read More About This",
                            style: TextStyle(fontSize: 16.w,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }

  onShareButtonPressed() async {
    const url = 'https://guides.lib.uiowa.edu/c.php?g=849536&p=6077637';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Could not launch $url");
    }
  }

  void onBackIconTapped() {
    Get.back();
  }
}
