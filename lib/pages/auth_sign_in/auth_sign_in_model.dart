import '/flutter_flow/flutter_flow_util.dart';
import 'auth_sign_in_widget.dart' show AuthSignInWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AuthSignInModel extends FlutterFlowModel<AuthSignInWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController3;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController4;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableController1.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    expandableController2.dispose();
    expandableController3.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    expandableController4.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
