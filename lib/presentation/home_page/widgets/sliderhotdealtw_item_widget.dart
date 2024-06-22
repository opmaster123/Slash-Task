import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/sliderhotdealtw_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SliderhotdealtwItemWidget extends StatelessWidget {
  SliderhotdealtwItemWidget(this.sliderhotdealtwItemModelObj, {Key? key})
      : super(
          key: key,
        );

  SliderhotdealtwItemModel sliderhotdealtwItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: sliderhotdealtwItemModelObj.image!,
      height: 132.v,
      width: 326.h,
      radius: BorderRadius.circular(
        8.h,
      ),
    );
  }
}
