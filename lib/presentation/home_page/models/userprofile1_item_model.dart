import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofile1ItemModel {
  Userprofile1ItemModel(
      {this.leatherJacketIm,
      this.userIconButton,
      this.leatherJacketTe,
      this.egp340text,
      this.egp340image,
      this.plusIconButton,
      this.id}) {
    leatherJacketIm = leatherJacketIm ?? ImageConstant.imgZ08nt143706w1;
    userIconButton = userIconButton ?? ImageConstant.imgUserGray20001;
    leatherJacketTe = leatherJacketTe ?? "Leather Jacket";
    egp340text = egp340text ?? "EGP 340";
    egp340image = egp340image ?? ImageConstant.imgEllipse108;
    plusIconButton = plusIconButton ?? ImageConstant.imgPlusWhiteA700;
    id = id ?? "";
  }

  String? leatherJacketIm;

  String? userIconButton;

  String? leatherJacketTe;

  String? egp340text;

  String? egp340image;

  String? plusIconButton;

  String? id;
}
