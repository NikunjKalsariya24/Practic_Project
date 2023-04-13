//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:practproject/app_color.dart';
// import 'package:practproject/setting.dart';
// import 'package:sizer/sizer.dart';
//
// import 'app_asset.dart';
// import 'cleaanstatus.dart';
//
// import 'clean_home.dart';
//
// import 'contact.dart';
// import 'notification.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   // final NavigationController navigationController =
//   // Get.put(NavigationController());
//   int currentNavigationTab = 0;
//
//   final List<Widget> screen = [
//     const CleanHomeScareen(),
//     const CleanContactScreen(),
//     const CleanStatusScreen(),
//     const CleanNotificationScreen(),
//     const CleanSettingScreen(),
//   ];
//
//   final PageStorageBucket bucket = PageStorageBucket();
//
//   Widget currentScreen = const CleanHomeScareen();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: PageStorage(bucket: bucket, child: currentScreen),
//         bottomNavigationBar: BottomAppBar(
//           color: AppColor.transparentColor,
//           elevation: 0,
//           child: Container(
//             height: 8.h,
//             margin: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
//             decoration: BoxDecoration(
//                 color: AppColor.whiteColor,
//                 borderRadius: BorderRadius.circular(10.w)),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: () {
//                     setState(
//                           () {
//                         currentScreen = const CleanHomeScareen();
//                         currentNavigationTab = 0;
//                       },
//                     );
//                   },
//                   child: Image.asset(
//                     height: 8.h,
//                     width: 20.w,
//                     ImageAssets.homeSheetPath,
//                     color: currentNavigationTab == 0
//                         ? AppColor.lightBlueColor
//                         : AppColor.lightBlackColor,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     setState(
//                           () {
//                         currentScreen = const CleanContactScreen();
//                         currentNavigationTab = 1;
//                       },
//                     );
//                   },
//                   child: Image.asset(
//                     height: 8.h,
//                     ImageAssets.contactSheetPath,
//                     color: currentNavigationTab == 1
//                         ? AppColor.lightBlueColor
//                         : AppColor.lightBlackColor,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       currentScreen = const CleanStatusScreen();
//                       currentNavigationTab = 2;
//                     });
//                   },
//                   child: Image.asset(
//                     height: 8.h,
//                     ImageAssets.statusSheetPath,
//                     color: currentNavigationTab == 2
//                         ? AppColor.lightBlueColor
//                         : AppColor.lightBlackColor,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       currentScreen = const CleanNotificationScreen();
//                       currentNavigationTab = 3;
//                     });
//                   },
//                   child: Image.asset(
//                     height: 8.h,
//                     ImageAssets.notificationSheetPath,
//                     color: currentNavigationTab == 3
//                         ? AppColor.lightBlueColor
//                         : AppColor.lightBlackColor,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       currentScreen = const CleanSettingScreen();
//                       currentNavigationTab = 4;
//                     });
//                   },
//                   child: Image.asset(
//                     height: 8.h,
//                     ImageAssets.settingSheetPath,
//                     color: currentNavigationTab == 4
//                         ? AppColor.lightBlueColor
//                         : AppColor.lightBlackColor,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
