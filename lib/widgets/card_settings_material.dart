import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:link22_o/icons.dart';
import 'package:link22_o/widgets/svg_asset.dart';

class SettingsCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Color? gradientStartColor;
  final Color? gradientEndColor;
  final double? height;
  final double? width;
  final Widget? vectorBottom;
  final Widget? vectorTop;
  final double? borderRadius;
  final Widget? icon;
  final Function()? onTap;
  const SettingsCard(
      {Key? key,
      this.title,
      this.subtitle,
      this.gradientStartColor,
      this.gradientEndColor,
      this.height,
      this.width,
      this.vectorBottom,
      this.vectorTop,
      this.borderRadius,
      this.icon,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(26),
      onTap: onTap ?? () {},
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
            boxShadow: [
                BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              )],
          color: Colors.lightBlue[500],
        ),
        child: Stack(
          children: [
            Container(
              height: 125.w,
              width: 150.w,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(26),
              child: SizedBox(
                height: 125.w,
                width: 150.w,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 125.w,
                      width: 150.w,
                      child: SvgAsset(assetName: AssetName.vectorSmallBottom),
                    ),
                    SizedBox(
                      child: SvgAsset(
                          height: 125.w,
                          width: 150.w,
                          fit: BoxFit.fitHeight,
                          assetName: AssetName.vectorSmallTop),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 125.w,
              width: 150.w,
              child: Padding(
                padding: EdgeInsets.only(left: 20.w, top: 20.w, bottom: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title!,
                      style: TextStyle(
                          fontSize: 19.w,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        icon ??
                            SvgAsset(
                              assetName: AssetName.read,
                              height: 24.w,
                              width: 24.w,
                            ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
