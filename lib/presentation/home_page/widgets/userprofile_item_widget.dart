import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/userprofile_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(this.userprofileItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 124.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.zero,
              color: appTheme.gray600,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Container(
                height: 116.v,
                width: double.maxFinite,
                decoration: AppDecoration.fillGray600.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: userprofileItemModelObj.stitchKeychainI!,
                      height: 116.v,
                      width: double.maxFinite,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 6.v,
                        right: 6.h,
                      ),
                      child: CustomIconButton(
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                        alignment: Alignment.topRight,
                        child: CustomImageView(
                          imagePath: userprofileItemModelObj.userIconButton!,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            userprofileItemModelObj.stitchKeychainT!,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  userprofileItemModelObj.egp55text!,
                  style: theme.textTheme.titleMedium,
                ),
                CustomImageView(
                  imagePath: userprofileItemModelObj.egp55image!,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  margin: EdgeInsets.only(left: 20.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: CustomIconButton(
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    child: CustomImageView(
                      imagePath: userprofileItemModelObj.plusIconButton!,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
