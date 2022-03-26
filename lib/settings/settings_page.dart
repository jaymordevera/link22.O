import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:link22_o/icons.dart';
import 'package:link22_o/widgets/svg_asset.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:link22_o/widgets/card_settings_material.dart';
import 'package:link22_o/settings/profile.dart';
import 'package:link22_o/settings/notif.dart';
import 'package:link22_o/settings/stats.dart';
import 'package:link22_o/settings/language.dart';
import 'package:link22_o/settings/theme.dart';
import 'package:link22_o/settings/priv.dart';
import 'package:link22_o/settings/help.dart';
import 'package:link22_o/settings/about.dart';


class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

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
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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

                          Padding(
                            padding: EdgeInsets.only(
                              right: 15.w,
                            ),
                          ),

                            Text("Quick Settings",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28.w,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  )
              ),

            //Subtitle of Page
            Padding(
              padding: EdgeInsets.only(left: 32.w, top: 10.h, right: 28.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Settings",
                    style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.w),
                    ),
                ],
              ),
            ),

            // More Elements
            SizedBox(height: 20.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 28.w),
              child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 19.w, mainAxisExtent:  125.w, mainAxisSpacing: 19.w),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
              children: [

                  // Profile
                  SettingsCard(
                    onTap: (){
                      Get.to(()=> profile(), transition: Transition.rightToLeft);
                      },
                    title: "Profile",
                    icon: SvgAsset(
                      assetName: AssetName.profile,
                      height: 24.w,
                      width: 24.w,
                    ),
                  ),

                  // Notification
                  SettingsCard(
                    onTap: (){
                      Get.to(()=> notif(), transition: Transition.rightToLeft);
                    },
                      title: "Notification",
                      icon:    SvgAsset(
                        assetName: AssetName.notif,
                        height: 24.w,
                        width: 24.w,
                      ),
                  ),

                  // Stats
                  SettingsCard(
                    onTap: (){
                      Get.to(()=> stats(), transition: Transition.rightToLeft);
                    },
                    title: "Statistics",
                    icon:    SvgAsset(
                      assetName: AssetName.stats,
                      height: 24.w,
                      width: 24.w,
                    ),
                  ),

                  // Language
                  SettingsCard(
                    onTap: (){
                      Get.to(()=> language(), transition: Transition.rightToLeft);
                    },
                    title: "Language",
                    icon:  SvgAsset(
                    assetName: AssetName.language,
                      height: 24.w,
                      width: 24.w,
                    ),
                  ),

                // Theme
                SettingsCard(
                  onTap: (){
                    Get.to(()=> theme(), transition: Transition.rightToLeft);
                  },
                  title: "Theme",
                  icon:    SvgAsset(
                    assetName: AssetName.theme,
                    height: 24.w,
                    width: 24.w,
                  ),
                ),

                // Privacy
                SettingsCard(
                  onTap: (){
                    Get.to(()=> priv(), transition: Transition.rightToLeft);
                  },
                  title: "Privacy",
                  icon:    SvgAsset(
                    assetName: AssetName.priv,
                    height: 24.w,
                    width: 24.w,
                  ),
                ),

                // Help
                SettingsCard(
                  onTap: (){
                    Get.to(()=> help(), transition: Transition.rightToLeft);
                  },
                  title: "Help",
                  icon:    SvgAsset(
                    assetName: AssetName.help,
                    height: 24.w,
                    width: 24.w,
                  ),
                ),

                // About
                SettingsCard(
                  onTap: (){
                    Get.to(()=> about(), transition: Transition.rightToLeft);
                  },
                  title: "About",
                  icon:  SvgAsset(
                    assetName: AssetName.about,
                    height: 24.w,
                    width: 24.w,
                  ),
                ),
            ],

            ),
            ),
            SizedBox(height: 30.h),
      ]
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
