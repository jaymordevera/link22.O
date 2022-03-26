import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:link22_o/icons.dart';
import 'package:link22_o/widgets/svg_asset.dart';
import 'package:link22_o/settings/settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int ? result;

  // Create 2 arrays for url and verdict.
  List<String> urlsList = [];
  List<int> verdictList = [];

  var _controller = TextEditingController();
  final Stream<QuerySnapshot> urls = FirebaseFirestore.instance.collection("urls-list").snapshots();

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
                // Top Bar
                Padding(
                  padding: EdgeInsets.only(
                    left: 28.w,
                    right: 28.w,
                    top: 36.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Link 22.O",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 32.w,
                              fontWeight: FontWeight.bold)),

                      InkWell(
                        borderRadius: BorderRadius.circular(360),
                        onTap: onSettingsTapped,
                        child: Container(
                          height: 35.w,
                          width: 35.w,
                          child: Center(
                            child: SvgAsset(
                              assetName: AssetName.settings,
                              height: 28.w,
                              width: 28.w,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w, top: 18.w, bottom: 5.h, right: 28.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Must Verify",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.w),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 40.h,
                  padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 9.h),
                  child: StreamBuilder<QuerySnapshot>(
                      stream: urls,
                      builder: (
                          BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot,) {
                            if (snapshot.hasError){
                              return Text("Something went wrong. Please try again later.",
                              style: TextStyle(
                                fontSize: 14.w,
                                fontStyle: FontStyle.italic,
                                color: Color(0xffFE6862),
                              ));
                            }
                            if (snapshot.connectionState == ConnectionState.waiting){
                              return Text("Waiting for the database...",
                                  style: TextStyle(
                                    fontSize: 14.w,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.lightBlue[500],
                                  ));
                            }

                            final data = snapshot.requireData;
                            int data_size = data.size;

                            //Use for-loops to store data
                            for (int i = 0; i < data_size; i++){
                              verdictList.add(data.docs[i]['verdict']);
                              urlsList.add(data.docs[i]['url']);
                            }

                            return Text("");
                          },
                  )
                ),

                // More Elements
                Padding(
                  padding: EdgeInsets.only(left: 28.w, bottom: 10.w, right: 28.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Enter the full URL",
                        style: TextStyle(
                            color: Colors.lightBlue[500],
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            fontSize: 14.w),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextFormField(
                            controller: _controller,
                            decoration: InputDecoration(
                              hintText: "Paste or type the article link here",
                              suffixIcon: IconButton(
                                  icon: Icon(Icons.clear),
                                  onPressed: _controller.clear),
                            ),
                            validator: (value){
                              String? link = value;
                              result = -1;

                              if (link != null){
                                result = 1;

                                if (value == "" || link.length < 4 || !link.contains(".")){
                                  result = -1;
                                }

                                else{
                                  for (int i =0; i< urlsList.length; i++){
                                    if (urlsList[i] == value){
                                      result = verdictList[i];
                                      break;
                                    }
                                  }
                                }
                              }

                            },
                          ),
                          SizedBox(height: 20.h),
                        ],
                      )),

                ),
              ],
            ),

            // Verify Button
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 87.h,
                child: Center(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: (){
                          final form = _formKey.currentState!;
                          if (form.validate());


                          // Empty String
                          if (result == -1){
                            showDialog(
                                context: context, builder: (context) =>
                                AlertDialog(
                                  backgroundColor: Colors.white,
                                  title: Text("Try Again"),
                                  content: Text("The link is invalid. Please enter a valid link."),
                                  actions: [
                                    TextButton(onPressed: () {
                                      Navigator.pop(context);
                                    }, child: Text("Okay")),
                                  ],
                                ));
                          }
                          // If 0 or NOT CREDIBLE
                          else if (result == 0) {
                            showDialog(
                                context: context, builder: (context) =>
                                AlertDialog(
                                  backgroundColor: Color(0xffFE6862),
                                  title: Text("Red Verdict",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                  content: Text("The article link is NOT credible. It is advised not to share this link.",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                      Navigator.pop(context);
                                    },
                                        child: Text("Okay",
                                        style: TextStyle(
                                          color: Colors.white,
                                        )),
                                    ),
                                  ],
                                ));
                          }

                          // IF 1 or MAY NOT BE CREDIBLE
                          else if (result == 1){
                            showDialog(
                                context: context, builder: (context) =>
                                AlertDialog(
                                  backgroundColor: Color(0xffF0F18F),
                                  title: Text("Yellow Verdict",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                  content: Text("The article link MAY NOT be credible. Further fact-checking is advised.",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("Okay",
                                          style: TextStyle(
                                            color: Colors.black,
                                          )),
                                    ),
                                  ],
                                ));
                          }

                          // IF 2 or CREDIBLE
                          else {
                            showDialog(
                                context: context, builder: (context) =>
                                AlertDialog(
                                  backgroundColor: Color(0xff9EDC95),
                                  title: Text("Green Verdict",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                  content: Text("The article link is credible.",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("Okay",
                                          style: TextStyle(
                                            color: Colors.black,
                                          )),
                                    ),
                                  ],
                                )
                            );
                          }
                          },
                      child: Ink(
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[500],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Container(
                          height: 56.h,
                          width: 319.w,
                          child: Center(child: Text("Verify The Link",
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

  void onSettingsTapped() {
    Get.to(()=> SettingPage(), transition: Transition.rightToLeft);
  }

}