import 'package:flutter/material.dart';
import 'package:link22_o/video_page.dart';
import 'package:link22_o/read_page.dart';
import 'package:link22_o/icons.dart';
import 'package:link22_o/main_page.dart';
import 'package:link22_o/widgets/svg_asset.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MainPage(),
    ReadPage(),
    VideoPage(),
  ];

  // Animation on Tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      //Bottom Navigator
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54,
                blurRadius: 15.0,
                offset: Offset(0.0, 1)
            )
          ],
        ),

        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          enableFeedback: true,
          items: <BottomNavigationBarItem>[

            // Passive Icon Page Icon
            BottomNavigationBarItem(
              icon: SvgAsset(assetName: AssetName.link),
              label: '',
              tooltip: 'Link 22.O',
              activeIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff3875E9).withOpacity(0.3),
                        offset: Offset(0, 4),
                        blurRadius: 20),
                  ],
                ),
                child: SvgAsset(
                    assetName: AssetName.link, color: Colors.lightBlue[600]),
              ),
            ),

            // Read Page Icon
            BottomNavigationBarItem(
              icon: SvgAsset(assetName: AssetName.read),
              label: '',
              tooltip: 'Read',
              activeIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff3875E9).withOpacity(0.3),
                        offset: Offset(0, 4),
                        blurRadius: 20),
                  ],
                ),
                child: SvgAsset(
                  assetName: AssetName.read,
                  color: Colors.lightBlue[600],
                ),
              ),
            ),

            // Video Page Icon
            BottomNavigationBarItem(
              icon: SvgAsset(assetName: AssetName.video),
              label: '',
              tooltip: 'Video',
              activeIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff3875E9).withOpacity(0.3),
                        offset: Offset(0, 4),
                        blurRadius: 20),
                  ],
                ),
                child: SvgAsset(
                  assetName: AssetName.video,
                  color: Colors.lightBlue[600],
                ),
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
