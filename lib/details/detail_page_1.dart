import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:link22_o/icons.dart';
import 'package:link22_o/widgets/svg_asset.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage_1 extends StatefulWidget {
  const DetailPage_1({Key? key}) : super(key: key);

  @override
  _DetailPageState_1 createState() => _DetailPageState_1();
}

class _DetailPageState_1 extends State<DetailPage_1> {
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
                  tag: "1",
                    child: Material(
                      color: Colors.transparent,

                      // Title of Educational Material
                      child: Text("What is False Information?",
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
                    "Learn the basics of false information",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
                ),
                SizedBox(height: 25.h),

                // Pictures and Contents
                SizedBox(
                  height: 279.w,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 28.w),
                      Container(
                        height: 280.w,
                        width: 280.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,

                            // Image 1
                            image: AssetImage(
                                "assets/pics/details_1a.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Container(
                        margin: EdgeInsets.only(right: 28.w),
                        height: 280.w,
                        width: 280.w,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[400],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,

                            // Image 2
                            image: AssetImage(
                              "assets/pics/details_1b.png",
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 35.h),
                Padding(
                  padding: EdgeInsets.only(left: 28.w, right: 28.w, bottom: 100.w),

                  // Text for the Article
                  child: Text(
                    "On False Information vs Fake News, experts now recommend avoiding the term ‘fake news’, "
                        "or at least limiting its use, as the term ‘fake news’ is closely associated "
                        "with politics, and this association can unhelpfully narrow the focus of the issue. "
                        "The term ‘false information’ is preferable. It can refer to a diverse range of "
                        "disinformation covering health, environmental, and economics across all platforms "
                        "and genres, while ‘fake news’ is more narrowly understood as political news stories."
                        "\n\nLots of things you read online, especially in your social media feeds may appear to be accurate, "
                        "often is not. False information is news, stories, or hoaxes created to deliberately misinform "
                        "or deceive readers. Usually, these stories are created to either influence people’s views, "
                        "push a political agenda or cause confusion and can often be a profitable business for "
                        "online publishers. False information can deceive people by looking like trusted websites "
                        "or using similar names and web addresses to reputable news organizations."
                        "\n\nFalse information is not new, however, it has become a hot topic since 2017. "
                        "Traditionally we got our news from trusted sources, journalists and media outlets that "
                        "are required to follow strict codes of practice. However, the internet has enabled a whole "
                        "new way to publish, share and consume information and news with very little regulation or "
                        "editorial standards."
                        "\n\nMany people now get news from social media sites and networks and often it can be difficult "
                        "to tell whether stories are credible or not. Information overload and a general lack of "
                        "understanding about how the internet works by people have also contributed to an increase "
                        "in fake news or hoax stories. Social media sites can play a big part in increasing the "
                        "reach of these types of stories.",
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
                child:   Container(
                  color:  Colors.white,
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
                    stops: [0,0.7],
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
    const url = 'https://www.webwise.ie/teachers/what-is-fake-news/';
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
