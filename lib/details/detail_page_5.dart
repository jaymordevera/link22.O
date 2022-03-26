import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:link22_o/icons.dart';
import 'package:link22_o/widgets/svg_asset.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage_5 extends StatefulWidget {
  const DetailPage_5({Key? key}) : super(key: key);

  @override
  _DetailPageState_5 createState() => _DetailPageState_5();
}

class _DetailPageState_5 extends State<DetailPage_5> {
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
                    tag: "5",
                    child: Material(
                      color: Colors.transparent,

                      // Title of Educational Material
                      child: Text("How to spot False Information?",
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
                    "Discern the truth to ensure the future",
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
                            image: AssetImage("assets/pics/details_5.jpg"),
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
                    "Here are some advice on how to spot a fake:"
                        "\n\n1. Consider the Source"
                        "\n\nIn recent months, we’ve fact-checked fake news from abcnews.com.co (not the actual URL for ABC News), WTOE 5 News (whose “about” page says it’s “a fantasy news website”), and the Boston Tribune (whose “contact us” page lists only a gmail address). Earlier this year, we debunked the claim that the Obamas were buying a vacation home in Dubai, a made-up missive that came from WhatDoesItMean.com, which describes itself as “One Of The Top Ranked Websites In The World for New World Order, Conspiracy Theories and Alternative News” and further says on its site that most of what it publishes is fiction."
                        "\n\n\n2. Read beyond the headline"
                        "\n\nIf a provocative headline drew your attention, read a little further before you decide to pass along the shocking information. Even in legitimate news stories, the headline doesn’t always tell the whole story. But fake news, particularly efforts to be satirical, can include several revealing signs in the text. That abcnews.com.co story that we checked, headlined “Obama Signs Executive Order Banning The Pledge Of Allegiance In Schools Nationwide,” went on to quote “Fappy the Anti-Masturbation Dolphin.” We have to assume that the many readers who asked us whether this viral rumor was true hadn’t read the full story."
                        "\n\n\n3. Check the author"
                        "\n\nAnother tell-tale sign of a fake story is often the byline. The pledge of allegiance story on abcnews.com.co was supposedly written by “Jimmy Rustling.” Who is he? Well, his author page claims he is a “doctor” who won “fourteen Peabody awards and a handful of Pulitzer Prizes.” Pretty impressive, if true. But it’s not. No one by the name of “Rustling” has won a Pulitzer or Peabody award. The photo accompanying Rustling’s bio is also displayed on another bogus story on a different site, but this time under the byline “Darius Rubics.” The Dubai story was written by “Sorcha Faal, and as reported to her Western Subscribers.” The Pope Francis story has no byline at all."
                        "\n\n\n4. What’s the support?"
                        "\n\nMany times these bogus stories will cite official — or official-sounding — sources, but once you look into it, the source doesn’t back up the claim. For instance, the Boston Tribune site wrongly claimed that President Obama’s mother-in-law was going to get a lifetime government pension for having babysat her granddaughters in the White House, citing “the Civil Service Retirement Act” and providing a link. But the link to a government benefits website doesn’t support the claim at all."
                        "\n\n\n5. Check the date"
                        "\n\nSome false stories aren’t completely fake, but rather distortions of real events. These mendacious claims can take a legitimate news story and twist what it says — or even claim that something that happened long ago is related to current events."
                        "\n\n\n6. Is this some kind of joke?"
                        "\n\nRemember, there is such thing as satire. Normally, it’s clearly labeled as such, and sometimes it’s even funny. Andy Borowitz has been writing a satirical news column, the Borowitz Report, since 2001, and it has appeared in the New Yorker since 2012. But not everyone gets the jokes. We’ve fielded several questions on whether Borowitz’s work is true."
                        "\n\n\n7. Check your biases"
                        "\n\nWe know this is difficult. Confirmation bias leads people to put more stock in information that confirms their beliefs and discount information that doesn’t. But the next time you’re automatically appalled at some Facebook post concerning, say, a politician you oppose, take a moment to check it out."
                        "\n\n\n8. Consult the experts"
                        "\n\nWe know you’re busy, and some of this debunking takes time. But we get paid to do this kind of work. Between FactCheck.org, Snopes.com, the Washington Post Fact Checker, and PolitiFact.com, it’s likely at least one has already fact-checked the latest viral claim to pop up in your news feed.",
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
    const url = 'https://www.factcheck.org/2016/11/how-to-spot-fake-news/';
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
