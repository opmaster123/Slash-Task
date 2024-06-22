import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/productcard_item_model.dart';
import 'models/sliderhotdealtw_item_model.dart';
import 'models/userprofile1_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/productcard_item_widget.dart';
import 'widgets/sliderhotdealtw_item_widget.dart';
import 'widgets/userprofile1_item_widget.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable

class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(top: 12.v),
          child: SingleChildScrollView(
            child: Container(
              width: 374.h,
              margin: EdgeInsets.only(bottom: 4.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSearchBar(context),
                  SizedBox(height: 24.v),
                  _buildHotDealsSection(context),
                  SizedBox(height: 28.v),
                  _buildCategoriesHeader(context),
                  SizedBox(height: 16.v),
                  _buildCategoriesSection(context),
                  SizedBox(height: 28.v),
                  _buildBestSellingSection(context),
                  SizedBox(height: 34.v),
                  _buildMainContent(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Row(
          children: [
            AppbarTitle(
              text: "lbl_slash".tr,
              margin: EdgeInsets.only(
                top: 5.v,
                bottom: 2.v,
              ),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgLinkedin,
              margin: EdgeInsets.only(
                left: 51.h,
                top: 5.v,
                bottom: 2.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_nasr_city".tr,
                      style: CustomTextStyles.bodyMediumBluegray900,
                    ),
                    TextSpan(
                      text: "lbl_cairo".tr,
                      style: CustomTextStyles.titleSmallBluegray900,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCheckmark,
          margin: EdgeInsets.only(
            top: 18.v,
            right: 12.h,
            bottom: 5.v,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotifcationIcon,
          margin: EdgeInsets.only(
            left: 76.h,
            top: 13.v,
            right: 35.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchBar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child:
                    BlocSelector<HomeBloc, HomeState, TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search_here".tr,
                    );
                  },
                ),
              ),
              SizedBox(width: 8.h),
              CustomIconButton(
                height: 44.v,
                width: 46.h,
                padding: EdgeInsets.all(12.h),
                decoration: IconButtonStyleHelper.fillGray,
                child: CustomImageView(
                  imagePath: ImageConstant.imgHorizontalSlid,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHotDealsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 132.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      state.sliderIndex = index;
                    },
                  ),
                  itemCount:
                      state.homeModelObj?.sliderhotdealtwItemList.length ?? 0,
                  itemBuilder: (context, index, realIndex) {
                    SliderhotdealtwItemModel model =
                        state.homeModelObj?.sliderhotdealtwItemList[index] ??
                            SliderhotdealtwItemModel();
                    return SliderhotdealtwItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.center,
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return SizedBox(
                  height: 6.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count:
                        state.homeModelObj?.sliderhotdealtwItemList.length ?? 0,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 3,
                      activeDotColor: appTheme.gray900,
                      dotColor: appTheme.gray400,
                      dotHeight: 6.v,
                      dotWidth: 6.h,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoriesHeader(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "lbl_categories".tr,
                style: theme.textTheme.titleLarge,
              ),
              Spacer(),
              Text(
                "lbl_see_all".tr,
                style: theme.textTheme.titleSmall,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: CustomIconButton(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  padding: EdgeInsets.all(2.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoriesSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 24.h),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomIconButton(
                height: 72.adaptSize,
                width: 72.adaptSize,
                padding: EdgeInsets.all(18.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgShirt,
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(right: 12.h),
                child: Text(
                  "lbl_fashion".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              )
            ],
          ),
          SizedBox(width: 8.h),
          _buildTelevisionCategory(
            context,
            accessories: "lbl_games".tr,
          ),
          SizedBox(width: 8.h),
          _buildTelevisionCategory(
            context,
            accessories: "lbl_accessories".tr,
          ),
          SizedBox(width: 8.h),
          _buildTelevisionCategory(
            context,
            accessories: "lbl_books".tr,
          ),
          SizedBox(width: 8.h),
          SizedBox(
            width: 152.h,
            child: Row(
              children: [
                Expanded(
                  child: _buildTelevisionCategory(
                    context,
                    accessories: "lbl_artifacts".tr,
                  ),
                ),
                SizedBox(width: 8.h),
                Expanded(
                  child: _buildTelevisionCategory(
                    context,
                    accessories: "lbl_pets_care".tr,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBestSellingSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildNewArrivalsHeader(
              context,
              title: "lbl_best_selling".tr,
              seeAllText: "lbl_see_all".tr,
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            height: 168.v,
            width: double.maxFinite,
            child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
              selector: (state) => state.homeModelObj,
              builder: (context, homeModelObj) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 12.h,
                    );
                  },
                  itemCount: homeModelObj?.userprofileItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    UserprofileItemModel model =
                        homeModelObj?.userprofileItemList[index] ??
                            UserprofileItemModel();
                    return UserprofileItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewArrivalsSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildNewArrivalsHeader(
              context,
              title: "lbl_new_arrival".tr,
              seeAllText: "lbl_see_all".tr,
            ),
          ),
          SizedBox(height: 18.v),
          SizedBox(
            height: 168.v,
            width: double.maxFinite,
            child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
              selector: (state) => state.homeModelObj,
              builder: (context, homeModelObj) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 12.h,
                    );
                  },
                  itemCount: homeModelObj?.productcardItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ProductcardItemModel model =
                        homeModelObj?.productcardItemList[index] ??
                            ProductcardItemModel();
                    return ProductcardItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecommendedSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildNewArrivalsHeader(
              context,
              title: "msg_recommended_for".tr,
              seeAllText: "lbl_see_all".tr,
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            height: 168.v,
            width: double.maxFinite,
            child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
              selector: (state) => state.homeModelObj,
              builder: (context, homeModelObj) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 12.h,
                    );
                  },
                  itemCount: homeModelObj?.userprofile1ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Userprofile1ItemModel model =
                        homeModelObj?.userprofile1ItemList[index] ??
                            Userprofile1ItemModel();
                    return Userprofile1ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMainContent(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildNewArrivalsSection(context),
          SizedBox(height: 36.v),
          _buildRecommendedSection(context)
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTelevisionCategory(
    BuildContext context, {
    required String accessories,
  }) {
    return Column(
      children: [
        CustomIconButton(
          height: 72.adaptSize,
          width: 72.adaptSize,
          padding: EdgeInsets.all(18.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgTelevision,
          ),
        ),
        SizedBox(height: 6.v),
        Text(
          accessories,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.gray900,
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildNewArrivalsHeader(
    BuildContext context, {
    required String title,
    required String seeAllText,
  }) {
    return Row(
      children: [
        Text(
          title,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Spacer(),
        Text(
          seeAllText,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            right: 24.h,
          ),
          child: CustomIconButton(
            height: 20.adaptSize,
            width: 20.adaptSize,
            padding: EdgeInsets.all(2.h),
            alignment: Alignment.bottomCenter,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
            ),
          ),
        )
      ],
    );
  }
}
