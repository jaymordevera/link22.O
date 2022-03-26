import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:link22_o/icons.dart';
import 'package:link22_o/widgets/svg_asset.dart';
import 'package:url_launcher/url_launcher.dart';

class priv extends StatefulWidget {
  const priv({Key? key}) : super(key: key);

  @override
  _priv createState() => _priv();
}

class _priv extends State<priv> {
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
                  tag: "",
                    child: Material(
                      color: Colors.transparent,

                      // Title of Educational Material
                      child: Text("Privacy",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 32.w,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w, right: 28.w),

                  // Subtitle of Educational Material
                  child: Text(
                    "This feature will allow the user to configure the privacy given to the application. "
                        "\n\nThis feature is not yet available in this prototype.",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                        fontSize: 16.w),
                  ),
                ),
                SizedBox(height: 25.h),

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

          ],
        ),
      ),
    );
  }

  void onBackIconTapped() {
   Get.back();
  }
}
