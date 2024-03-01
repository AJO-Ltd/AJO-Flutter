import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'inactive_filter_model.dart';
export 'inactive_filter_model.dart';

class InactiveFilterWidget extends StatefulWidget {
  const InactiveFilterWidget({super.key});

  @override
  State<InactiveFilterWidget> createState() => _InactiveFilterWidgetState();
}

class _InactiveFilterWidgetState extends State<InactiveFilterWidget> {
  late InactiveFilterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InactiveFilterModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
      child: Container(
        height: 30.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(
            color: const Color(0xFFCCCCCC),
            width: 2.0,
          ),
        ),
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          child: Text(
            'Friends',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'League Spartan',
                  color: const Color(0xFF717171),
                  fontSize: 16.0,
                ),
          ),
        ),
      ),
    );
  }
}
