import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_model.dart';
import '../models/productcard_item_model.dart';
import '../models/sliderhotdealtw_item_model.dart';
import '../models/userprofile1_item_model.dart';
import '../models/userprofile_item_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  List<SliderhotdealtwItemModel> fillSliderhotdealtwItemList() {
    return [
      SliderhotdealtwItemModel(image: ImageConstant.img59590021),
      SliderhotdealtwItemModel(image: ImageConstant.imgHotDeal2),
      SliderhotdealtwItemModel()
    ];
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          stitchKeychainI: ImageConstant.img10888692Hi1,
          userIconButton: ImageConstant.imgUserGray20001,
          stitchKeychainT: "Stitch Keychain",
          egp55text: "EGP 55",
          egp55image: ImageConstant.imgEllipse106,
          plusIconButton: ImageConstant.imgPlusWhiteA700),
      UserprofileItemModel(
          stitchKeychainI: ImageConstant.imgHomemadeBabyP,
          userIconButton: ImageConstant.imgUserGray20001,
          stitchKeychainT: "Baby Girl Dress",
          egp55text: "EGP 230",
          egp55image: ImageConstant.imgEllipse109,
          plusIconButton: ImageConstant.imgPlusWhiteA700),
      UserprofileItemModel(
          stitchKeychainI: ImageConstant.imgUser,
          stitchKeychainT: "Infant Hair Clips",
          egp55text: "EGP 90",
          egp55image: ImageConstant.imgEllipse108)
    ];
  }

  List<ProductcardItemModel> fillProductcardItemList() {
    return [
      ProductcardItemModel(
          productImage: ImageConstant.imgLivingWordsLo,
          userIcon: ImageConstant.imgUserGray20001,
          productName: "Printed bag",
          productPrice: "EGP 180",
          priceImage: ImageConstant.imgEllipse108,
          plusIcon: ImageConstant.imgPlusWhiteA700),
      ProductcardItemModel(
          productImage: ImageConstant.img1888693,
          userIcon: ImageConstant.imgUserGray20001,
          productName: "Notebook",
          productPrice: "EGP 80",
          priceImage: ImageConstant.imgEllipse106,
          plusIcon: ImageConstant.imgPlusWhiteA700),
      ProductcardItemModel(
          productImage: ImageConstant.img1888694,
          productName: "Woolen Scarf",
          productPrice: "EGP 95",
          priceImage: ImageConstant.imgEllipse109)
    ];
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          leatherJacketIm: ImageConstant.imgZ08nt143706w1,
          userIconButton: ImageConstant.imgUserGray20001,
          leatherJacketTe: "Leather Jacket",
          egp340text: "EGP 340",
          egp340image: ImageConstant.imgEllipse108,
          plusIconButton: ImageConstant.imgPlusWhiteA700),
      Userprofile1ItemModel(
          leatherJacketIm: ImageConstant.imgUser,
          leatherJacketTe: "Dog Medal",
          egp340text: "EGP 45",
          egp340image: ImageConstant.imgEllipse106,
          plusIconButton: ImageConstant.imgPlusWhiteA700),
      Userprofile1ItemModel(
          leatherJacketIm: ImageConstant.imgUser,
          leatherJacketTe: "Leather Bracelet",
          egp340text: "EGP 80",
          egp340image: ImageConstant.imgEllipse109)
    ];
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
      sliderhotdealtwItemList: fillSliderhotdealtwItemList(),
      userprofileItemList: fillUserprofileItemList(),
      productcardItemList: fillProductcardItemList(),
      userprofile1ItemList: fillUserprofile1ItemList(),
    )));
  }
}
