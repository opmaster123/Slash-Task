import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/userprofile1_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(this.userprofile1ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

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
              color: appTheme.gray200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Container(
                height: 116.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                decoration: AppDecoration.fillGray200.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: userprofile1ItemModelObj.leatherJacketIm!,
                      height: 116.v,
                      width: double.maxFinite,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6.v),
                      child: CustomIconButton(
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                        alignment: Alignment.topRight,
                        child: CustomImageView(
                          imagePath: userprofile1ItemModelObj.userIconButton!,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            userprofile1ItemModelObj.leatherJacketTe!,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 2.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  userprofile1ItemModelObj.egp340text!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(width: 10.h),
                CustomImageView(
                  imagePath: userprofile1ItemModelObj.egp340image!,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                ),
                SizedBox(width: 10.h),
                CustomIconButton(
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(
                    imagePath: userprofile1ItemModelObj.plusIconButton!,
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
