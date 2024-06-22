import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'productcard_item_model.dart';
import 'sliderhotdealtw_item_model.dart';
import 'userprofile1_item_model.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomeModel extends Equatable {
  HomeModel(
      {this.sliderhotdealtwItemList = const [],
      this.userprofileItemList = const [],
      this.productcardItemList = const [],
      this.userprofile1ItemList = const []});

  List<SliderhotdealtwItemModel> sliderhotdealtwItemList;

  List<UserprofileItemModel> userprofileItemList;

  List<ProductcardItemModel> productcardItemList;

  List<Userprofile1ItemModel> userprofile1ItemList;

  HomeModel copyWith({
    List<SliderhotdealtwItemModel>? sliderhotdealtwItemList,
    List<UserprofileItemModel>? userprofileItemList,
    List<ProductcardItemModel>? productcardItemList,
    List<Userprofile1ItemModel>? userprofile1ItemList,
  }) {
    return HomeModel(
      sliderhotdealtwItemList:
          sliderhotdealtwItemList ?? this.sliderhotdealtwItemList,
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
      productcardItemList: productcardItemList ?? this.productcardItemList,
      userprofile1ItemList: userprofile1ItemList ?? this.userprofile1ItemList,
    );
  }

  @override
  List<Object?> get props => [
        sliderhotdealtwItemList,
        userprofileItemList,
        productcardItemList,
        userprofile1ItemList
      ];
}
