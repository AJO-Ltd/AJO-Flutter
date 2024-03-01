import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'user_info_model.dart';
export 'user_info_model.dart';

class UserInfoWidget extends StatefulWidget {
  const UserInfoWidget({super.key});

  @override
  State<UserInfoWidget> createState() => _UserInfoWidgetState();
}

class _UserInfoWidgetState extends State<UserInfoWidget> {
  late UserInfoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserInfoModel());

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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 32.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24.0),
                child: Image.asset(
                  'assets/images/Rounded.png',
                  width: 32.0,
                  height: 32.0,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Anita Murphy',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'League Spartan',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  const Icon(
                    Icons.verified,
                    color: Color(0xFFFB8B24),
                    size: 16.0,
                  ),
                  Text(
                    '·',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'League Spartan',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  Text(
                    '27m',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'League Spartan',
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ].divide(const SizedBox(width: 4.0)),
              ),
            ].divide(const SizedBox(width: 8.0)),
          ),
          Icon(
            Icons.more_vert,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}
