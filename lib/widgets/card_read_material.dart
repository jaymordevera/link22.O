import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:link22_o/icons.dart';
import 'package:link22_o/widgets/svg_asset.dart';

class ReadCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Color? gradientStartColor;
  final Color? gradientEndColor;
  final double? height;
  final double? width;
  final Widget? vectorBottom;
  final Widget? vectorTop;
  final Function? onTap;
  final String? tag;
  const ReadCard(
      {Key? key,
      this.title,
      this.subtitle,
      this.gradientStartColor,
      this.gradientEndColor,
      this.height,
      this.width,
      this.vectorBottom,
      this.vectorTop,
      this.onTap,
      this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Size of Container
      margin: EdgeInsets.symmetric(horizontal: 20.w),

      // Shadow
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(26),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),

      // Material
      child: Material(
      color: Colors.transparent,
      child: InkWell(

        // On Tap Animation
        onTap: () => onTap!(),
        borderRadius: BorderRadius.circular(26),

        // Card Color
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
              color: Colors.lightBlue[500],
          ),

          // Card Size
          child: Container(
            height: 160,
            width: 400.w,
            child: Stack(

              // Wave Designs
              children: [
                vectorBottom ??
                    ClipRRect(
                      borderRadius: BorderRadius.circular(26),
                      child: SvgAsset(
                          height: 176.w,
                          width: 400.w,
                          assetName: AssetName.vectorBottom),
                    ),
                vectorTop ??
                    ClipRRect(
                      borderRadius: BorderRadius.circular(26),
                      child: SvgAsset(
                          height: 176.w,
                          width: 400.w,
                          assetName: AssetName.vectorTop),
                    ),

                // Padding of the Text
                Padding(
                  padding: EdgeInsets.only(left: 24.w, top: 24.h, right: 24.h, bottom: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          // Head Text
                          Hero(
                            tag: tag ?? '',
                            child: Material(
                              color: Colors.transparent,
                              child: Text(
                                title!,
                                style: TextStyle(
                                    fontSize: 24.w,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                          // Space
                          SizedBox(
                            height: 5.h,
                          ),

                          // Subtitle
                          subtitle != null
                              ? Text(
                                  subtitle!,
                                  style: TextStyle(
                                      fontSize: 15.w,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black),
                                )
                              : Container(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}
