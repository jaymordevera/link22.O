import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:link22_o/icons.dart';
import 'package:link22_o/widgets/svg_asset.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage_3 extends StatefulWidget {
  const DetailPage_3({Key? key}) : super(key: key);

  @override
  _DetailPageState_3 createState() => _DetailPageState_3();
}

class _DetailPageState_3 extends State<DetailPage_3> {

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
                    tag: "3",
                    child: Material(
                      color: Colors.transparent,

                      // Title of Educational Material
                      child: Text("Where does False Information start?",
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
                  padding: EdgeInsets.only(left: 28.w),

                  // Subtitle of Educational Material
                  child: Text(
                    "Discover the origin of this issue",
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
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 27.w),
                        height: 320.w,
                        width: 320.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,

                            // Image 1
                            image: AssetImage("assets/pics/details_3.jpg"),
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
                    "False Information may begin anywhere. However, due to the digital nature of our world, false information is more likely to appear online through social media, online articles, and websites."
                        "\n\nFundamentally, those who operate fake news websites want as many visitors to their sites as possible. While some may want their visitors to see the content and have it influence their political values, others simply want internet users to click on them, which often takes users to a website where users see more content (ideological or not) and/or see advertising. When a website has ads on it, those visits pay the website owner advertising revenue. Both of these motivations—ideological and commercial--need as many people to click on the website link and visit as possible"
                        "\n\nThose who display false information through social media may upload a fake article from a fake website and gain popularity or upload edited videos to propagate their ideologies and agendas.",
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
    const url = 'https://www.cits.ucsb.edu/fake-news/where';
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
