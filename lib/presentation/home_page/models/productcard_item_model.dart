import '../../../core/app_export.dart';

/// This class is used in the [productcard_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProductcardItemModel {
  ProductcardItemModel(
      {this.productImage,
      this.userIcon,
      this.productName,
      this.productPrice,
      this.priceImage,
      this.plusIcon,
      this.id}) {
    productImage = productImage ?? ImageConstant.imgLivingWordsLo;
    userIcon = userIcon ?? ImageConstant.imgUserGray20001;
    productName = productName ?? "Printed bag";
    productPrice = productPrice ?? "EGP 180";
    priceImage = priceImage ?? ImageConstant.imgEllipse108;
    plusIcon = plusIcon ?? ImageConstant.imgPlusWhiteA700;
    id = id ?? "";
  }

  String? productImage;

  String? userIcon;

  String? productName;

  String? productPrice;

  String? priceImage;

  String? plusIcon;

  String? id;
}
