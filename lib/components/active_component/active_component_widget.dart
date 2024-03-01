import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'active_component_model.dart';
export 'active_component_model.dart';

class ActiveComponentWidget extends StatefulWidget {
  const ActiveComponentWidget({super.key});

  @override
  State<ActiveComponentWidget> createState() => _ActiveComponentWidgetState();
}

class _ActiveComponentWidgetState extends State<ActiveComponentWidget> {
  late ActiveComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActiveComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88.0,
      height: 30.0,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF9B30D9), Color(0xFFBF83EB)],
          stops: [0.0, 1.0],
          begin: AlignmentDirectional(0.17, 1.0),
          end: AlignmentDirectional(-0.17, -1.0),
        ),
        borderRadius: BorderRadius.circular(24.0),
      ),
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Text(
        'Following',
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'League Spartan',
              color: const Color(0xFFF0F0F0),
            ),
      ),
    );
  }
}
