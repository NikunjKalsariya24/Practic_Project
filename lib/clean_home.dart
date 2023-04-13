// import 'package:appcleaner/module/homepage/clean_home_screen/custom_phone_performance.dart';
// import 'package:appcleaner/routes.dart';
// import 'package:appcleaner/utils/app_asset.dart';
// import 'package:appcleaner/utils/app_color.dart';
// import 'package:appcleaner/utils/app_string.dart';
// import 'package:appcleaner/utils/custom_text.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sizer/sizer.dart';
//
// import 'app_color.dart';
// import 'app_string.dart';
// import 'custom_clean_data.dart';
// import 'custom_text.dart';
//
// class CleanHomeScareen extends StatelessWidget {
//   const CleanHomeScareen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           elevation: 0,
//           backgroundColor: AppColor.backgroundColors,
//           leading: Padding(
//             padding: EdgeInsets.only(left: 3.w),
//             child: Image.asset(ImageAssets.dropdownPath, color: Colors.black),
//           ),
//           actions: [
//             Padding(
//               padding: EdgeInsets.only(right: 3.w),
//               child: const CircleAvatar(
//                 backgroundImage: AssetImage(ImageAssets.circlePath),
//               ),
//             )
//           ]),
//       backgroundColor: AppColor.backgroundColors,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(left: 7.w),
//                   child: CustomText(
//                     name: AppString.welcome,
//                     color: AppColor.textColors,
//                     fontSize: 12.sp,
//                     style: const TextStyle(fontWeight: FontWeight.w600),
//                   ),
//                 ),
//                 CustomText(
//                   name: AppString.valentin,
//                   fontSize: 12.sp,
//                   color: AppColor.textGradiantColors,
//                   style: const TextStyle(fontWeight: FontWeight.w600),
//                 )
//               ],
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(left: 7.w, top: 1.h),
//                   child: CustomText(
//                     name: AppString.cleanNote,
//                     fontSize: 16.sp,
//                     color: AppColor.textColors,
//                     style: const TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: AppColor.textGradiantColors,
//                 ),
//                 child: Column(
//                   children: [
//                     PhonePerformance(),
//                     Divider(
//                         thickness: 1,
//                         color: AppColor.whiteColor,
//                         indent: 8.w,
//                         endIndent: 10.w),
//                     PhonePerformance(
//                         image: ImageAssets.ramPath,
//                         imageName: AppString.ram,
//                         used: AppString.ramUsed,
//                         unused: AppString.ramUnused,
//                         percent: 0.9,
//                         circlePercentage: "99.8"),
//                     Divider(
//                         thickness: 1,
//                         color: AppColor.whiteColor,
//                         indent: 8.w,
//                         endIndent: 10.w),
//                     PhonePerformance(
//                       imageName: AppString.network,
//                       image: ImageAssets.networkPath,
//                       percent: 0.10,
//                       circlePercentage: "10.2",
//                       used: AppString.networkSent,
//                       unused: AppString.networkReciEvEd,
//                       fontSize: 8.sp,
//                       sizeBoxWith: 4.w,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 1.h,
//             ),
//             Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(16),
//                     color: AppColor.whiteColor),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.symmetric(vertical: 2.h),
//                       child: CustomText(
//                         name: AppString.cleanup,
//                         color: AppColor.textColors,
//                         fontSize: 16.sp,
//                         style: const TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         CustomCleanData(onTap: () {
//                           Get.toNamed(Routes.cleanImageScreen);
//
//                         },),
//                         CustomCleanData(onTap: () {
//                           Get.toNamed(Routes.cleanVideosScreen);
//                         },
//                             dataImage: ImageAssets.videoIcon,
//                             dataName: AppString.cleanVideos,
//                             cleanColor: AppColor.pinkColors,
//                             containerColor: AppColor.pinkColors,
//                             dataNameColor: AppColor.textColors),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 2.h,
//                     ),
//                     Row(
//                       children: [
//                         CustomCleanData(onTap: () {
//                           Get.toNamed(Routes.cleanWhatsappScreen);
//                         },
//                             dataImage: ImageAssets.whatsappIcon,
//                             dataName: AppString.cleanWhatsapp,
//                             cleanColor: AppColor.whatsappColors,
//                             containerColor: AppColor.whatsappColors,
//                             dataNameColor: AppColor.textColors),
//                         CustomCleanData(
//                           dataImage: ImageAssets.zipIcon,
//                           dataName: AppString.cleanZip,
//                           cleanColor: AppColor.orangeColors,
//                           containerColor: AppColor.orangeColors,
//                           dataNameColor: AppColor.textColors,onTap: () {
//
//                        //   Get.toNamed(Routes.cleanZipScreen);
//                         },),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 3.h,
//                     ),
//                     Container(padding: EdgeInsets.symmetric(horizontal: 25.w,vertical: 1.h),
//                       decoration: BoxDecoration(
//                           color: AppColor.orangeColors,
//                           borderRadius: BorderRadius.circular(20)),
//                       child: CustomText(
//                           name: AppString.smartClean,
//                           color: AppColor.whiteColor,
//                           fontSize: 16.sp),
//                     )
//                   ],
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
