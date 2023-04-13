import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practproject/chart.dart';
import 'package:practproject/getx_value.dart';
import 'package:practproject/home_page.dart';
import 'package:practproject/liniearGgradient.dart';
import 'package:practproject/loadingcontroller.dart';
import 'package:practproject/pagination.dart';
import 'package:practproject/percentagechart.dart';
import 'package:practproject/placepage.dart';
import 'package:practproject/settingp%5Bage.dart';
import 'package:practproject/textfield.dart';
import 'package:practproject/timepicker.dart';
import 'package:sizer/sizer.dart';

import 'app_asset.dart';
import 'app_color.dart';

import 'contact_page.dart';
import 'finalchart.dart';
import 'infineteScrollview.dart';

void main() {
  runApp(Sizer(builder:(context, orientation, deviceType) {
    return GetMaterialApp(
      home: lineargradient(),
    );
  },

  ));
}


class Navigationbar extends StatelessWidget {
  Navigationbar({Key? key}) : super(key: key);
  LandingPageController ab = LandingPageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomAppBar(
          color: AppColor.transparentColor,
          elevation: 0,

          child: Container(
            height: 8.h,
            margin: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
            decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(10.w)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    ab.changeTabIndex;
                  },
                  child: Image.asset(
                    height: 8.h,
                    width: 20.w,
                    ImageAssets.homeSheetPath,
                    color: ab.tabIndex == 0
                        ? AppColor.lightBlueColor
                        : AppColor.lightBlackColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {

                    ab.changeTabIndex;

                  },
                  child: Image.asset(
                    height: 8.h,
                    ImageAssets.contactSheetPath,
                    color: ab.tabIndex == 1
                        ? AppColor.lightBlueColor
                        : AppColor.lightBlackColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ab.changeTabIndex;
                  },
                  child: Image.asset(
                    height: 8.h,
                    ImageAssets.statusSheetPath,
                    color: ab.tabIndex == 2
                        ? AppColor.lightBlueColor
                        : AppColor.lightBlackColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ab.changeTabIndex;
                  },
                  child: Image.asset(
                    height: 8.h,
                    ImageAssets.notificationSheetPath,
                    color: ab.tabIndex  == 3
                        ? AppColor.lightBlueColor
                        : AppColor.lightBlackColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ab.changeTabIndex;
                  },
                  child: Image.asset(
                    height: 8.h,
                    ImageAssets.settingSheetPath,
                    color: ab.tabIndex == 4
                        ? AppColor.lightBlueColor
                        : AppColor.lightBlackColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: Obx(
      //   () => Container(decoration: BoxDecoration(shape: BoxShape.circle),
      //     child: BottomNavigationBar(
      //         showUnselectedLabels: true,
      //         showSelectedLabels: true,
      //         onTap: ab.changeTabIndex,
      //         currentIndex: ab.tabIndex.value,
      //         backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
      //         unselectedItemColor: Colors.white.withOpacity(0.5),
      //         selectedItemColor: Colors.white,
      //         items: [
      //           BottomNavigationBarItem(
      //             icon: Container(
      //               margin: EdgeInsets.only(bottom: 7),
      //               child: Icon(
      //                 Icons.home,
      //                 size: 20.0,
      //               ),
      //             ),
      //             label: 'Home',
      //             backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
      //           ),
      //           BottomNavigationBarItem(
      //             icon: Container(
      //               margin: EdgeInsets.only(bottom: 7),
      //               child: Icon(
      //                 Icons.search,
      //                 size: 20.0,
      //               ),
      //             ),
      //             label: 'Explore',
      //             backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
      //           ),
      //           BottomNavigationBarItem(
      //             icon: Container(
      //               margin: EdgeInsets.only(bottom: 7),
      //               child: Icon(
      //                 Icons.location_history,
      //                 size: 20.0,
      //               ),
      //             ),
      //             label: 'Places',
      //             backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
      //           ),
      //           BottomNavigationBarItem(
      //             icon: Container(
      //               margin: EdgeInsets.only(bottom: 7),
      //               child: Icon(
      //                 Icons.settings,
      //                 size: 20.0,
      //               ),
      //             ),
      //             label: 'Settings',
      //             backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
      //           ),
      //         ]),
      //   ),
      // ),

      body: Obx(() => IndexedStack(
            index: ab.tabIndex.value,
            children: [
              HomePage(),
              ExplorePage(),
              PlacesPage(),
              SettingsPage(),
            ],
          )),
    );
  }
}
