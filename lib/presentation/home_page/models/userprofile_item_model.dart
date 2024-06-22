import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileItemModel {
  UserprofileItemModel(
      {this.stitchKeychainI,
      this.userIconButton,
      this.stitchKeychainT,
      this.egp55text,
      this.egp55image,
      this.plusIconButton,
      this.id}) {
    stitchKeychainI = stitchKeychainI ?? ImageConstant.img10888692Hi1;
    userIconButton = userIconButton ?? ImageConstant.imgUserGray20001;
    stitchKeychainT = stitchKeychainT ?? "Stitch Keychain";
    egp55text = egp55text ?? "EGP 55";
    egp55image = egp55image ?? ImageConstant.imgEllipse106;
    plusIconButton = plusIconButton ?? ImageConstant.imgPlusWhiteA700;
    id = id ?? "";
  }

  String? stitchKeychainI;

  String? userIconButton;

  String? stitchKeychainT;

  String? egp55text;

  String? egp55image;

  String? plusIconButton;

  String? id;
}
