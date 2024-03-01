import '/components/post_product_embed/post_product_embed_widget.dart';
import '/components/user_info/user_info_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'post_widget.dart' show PostWidget;
import 'package:flutter/material.dart';

class PostModel extends FlutterFlowModel<PostWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for userInfo component.
  late UserInfoModel userInfoModel;
  // Model for postProductEmbed component.
  late PostProductEmbedModel postProductEmbedModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    userInfoModel = createModel(context, () => UserInfoModel());
    postProductEmbedModel = createModel(context, () => PostProductEmbedModel());
  }

  @override
  void dispose() {
    userInfoModel.dispose();
    postProductEmbedModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
