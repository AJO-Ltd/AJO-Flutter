import '/components/feed_filters/feed_filters_widget.dart';
import '/components/post/post_widget.dart';
import '/components/product_filters/product_filters_widget.dart';
import '/components/slider_component/slider_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for HomeTabBar widget.
  TabController? homeTabBarController;
  int get homeTabBarCurrentIndex =>
      homeTabBarController != null ? homeTabBarController!.index : 0;

  // Model for feedFilters component.
  late FeedFiltersModel feedFiltersModel;
  // Model for post component.
  late PostModel postModel1;
  // Model for post component.
  late PostModel postModel2;
  // Model for post component.
  late PostModel postModel3;
  // Model for SliderComponent component.
  late SliderComponentModel sliderComponentModel;
  // Model for ProductFilters component.
  late ProductFiltersModel productFiltersModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    feedFiltersModel = createModel(context, () => FeedFiltersModel());
    postModel1 = createModel(context, () => PostModel());
    postModel2 = createModel(context, () => PostModel());
    postModel3 = createModel(context, () => PostModel());
    sliderComponentModel = createModel(context, () => SliderComponentModel());
    productFiltersModel = createModel(context, () => ProductFiltersModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    homeTabBarController?.dispose();
    feedFiltersModel.dispose();
    postModel1.dispose();
    postModel2.dispose();
    postModel3.dispose();
    sliderComponentModel.dispose();
    productFiltersModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
