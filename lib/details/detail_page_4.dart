import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:link22_o/icons.dart';
import 'package:link22_o/widgets/svg_asset.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage_4 extends StatefulWidget {
  const DetailPage_4({Key? key}) : super(key: key);

  @override
  _DetailPageState_4 createState() => _DetailPageState_4();
}

class _DetailPageState_4 extends State<DetailPage_4> {

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
                    tag: "4",
                    child: Material(
                      color: Colors.transparent,

                      // Title of Educational Material
                      child: Text("How False Information spreads",
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
                    "Be aware of false facts, it may infect you!",
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
                            image: AssetImage("assets/pics/details_4.jpg"),
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
                    "If false information catches the eye of accounts who have large followings and they decide to share it too, it could be seen by lots and lots of people."
                        "\n\nA recent study by the University of Oxford’s Reuters Institute found that even though only 20% of fake news stories were produced or shared by famous public figures, these posts made up nearly 70% of the total engagements on social media. These “super-spreaders” can easily amplify false information online, which their followers are likely to trust as they look up to them."
                        "\n\nBut you don’t have to be famous to be a super-spreader. Often, false information can flare up just as quickly through friends and family connections."
                        "\n\nThink about what would happen if the most popular person in school supported a fake news story, or if an aunt or uncle shared a meme with made-up information in all the family group chats."
                        "\n\nAt this point, the false information might only be a small step away from being published as a fact on another website. Some news sites are so keen to get the latest scoop that they could rush into publishing it just because it’s popular. Some websites will look like news sites, but in reality, are only run by one or two people like a blog."
                        "\n\nRemember that not everything is what it looks like on the outside. It’s important to note that trusted news sources will always fact-check and verify before reporting new stories.",
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
    const url = 'https://www.bbc.co.uk/bitesize/articles/zcr8r2p';
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
