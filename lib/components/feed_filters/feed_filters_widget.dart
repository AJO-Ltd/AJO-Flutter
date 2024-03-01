import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'feed_filters_model.dart';
export 'feed_filters_model.dart';

class FeedFiltersWidget extends StatefulWidget {
  const FeedFiltersWidget({super.key});

  @override
  State<FeedFiltersWidget> createState() => _FeedFiltersWidgetState();
}

class _FeedFiltersWidgetState extends State<FeedFiltersWidget> {
  late FeedFiltersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedFiltersModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
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
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Text(
                  'Following',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'League Spartan',
                        color: const Color(0xFFF0F0F0),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            Container(
              height: 30.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).accent2,
                  width: 2.0,
                ),
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Text(
                  'FBC',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'League Spartan',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                      ),
                ),
              ),
            ),
            Container(
              height: 30.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).accent2,
                  width: 2.0,
                ),
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Text(
                  'Kharis Church',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'League Spartan',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                      ),
                ),
              ),
            ),
            Container(
              height: 30.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).accent2,
                  width: 2.0,
                ),
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Text(
                  'Django Girls',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'League Spartan',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                      ),
                ),
              ),
            ),
            Container(
              height: 30.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).accent2,
                  width: 2.0,
                ),
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Text(
                  'Superteam',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'League Spartan',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                      ),
                ),
              ),
            ),
            Container(
              height: 30.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).accent2,
                  width: 2.0,
                ),
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Text(
                  'Christex',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'League Spartan',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                      ),
                ),
              ),
            ),
          ].divide(const SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
