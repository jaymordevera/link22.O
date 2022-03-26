import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:link22_o/icons.dart';
import 'package:link22_o/widgets/svg_asset.dart';

class CardVideo extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final double? height;
  final double? width;
  final Widget? vectorBottom;
  final Widget? vectorTop;
  final double? borderRadius;
  final Widget? icon;
  final String? imageCover;
  final Function()? onTap;
  const CardVideo(
      {Key? key,
      this.title,
      this.subtitle,
      this.height,
      this.width,
      this.vectorBottom,
      this.vectorTop,
      this.borderRadius,
      this.icon,
        this.imageCover,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      height: 300.w,
      width: 400.w,
        child:InkWell(
          borderRadius: BorderRadius.circular(26),
          onTap: onTap ?? () {},
          child: Ink(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,

                  // Video Cover
                  image: AssetImage(imageCover!),
              ),
              borderRadius: BorderRadius.circular(26),
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),

            // Wave SVG
            child: Stack(
              children: [
                Container(
                  height: 176.w,
                  width: 400.w,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(26),
                  child: SizedBox(
                    height: 300.w,
                    width: 400.w,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 300.w,
                          width: 400.w,
                          child: SvgAsset(assetName: AssetName.vectorSmallBottom),
                        ),
                        SizedBox(
                          child: SvgAsset(
                              height: 300.w,
                              width: 400.w,
                              assetName: AssetName.vectorSmallTop),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 300.w,
                  width: 400.w,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 20.w, bottom: 20.w),
                    child: Text(
                          title!,
                          style: TextStyle(
                              fontSize: 27.w,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textAlign: TextAlign.right,
                        ),
                    ),
                  ),


                SizedBox(
                  height: 300.w,
                  width: 400.w,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 260.w, bottom: 20.w),
                    child: Text(
                      subtitle!,

                      style: TextStyle(
                          fontSize: 15.w,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontStyle: FontStyle.italic),

                      textAlign: TextAlign.right,
                    ),
                  ),
                ),



              ],
            ),
          ),
        ),
    );
  }
}
