import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'post_product_embed_model.dart';
export 'post_product_embed_model.dart';

class PostProductEmbedWidget extends StatefulWidget {
  const PostProductEmbedWidget({super.key});

  @override
  State<PostProductEmbedWidget> createState() => _PostProductEmbedWidgetState();
}

class _PostProductEmbedWidgetState extends State<PostProductEmbedWidget> {
  late PostProductEmbedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostProductEmbedModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 12.0,
            color: Color(0x1A000000),
            offset: Offset(0.0, 5.0),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 56.0,
            height: 56.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 12.0,
                  color: Color(0x2A000000),
                  offset: Offset(0.0, 5.0),
                  spreadRadius: 0.0,
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                'assets/images/image.png',
                width: 56.0,
                height: 56.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Bronner’s - Pure-Castile Liqui...',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'League Spartan',
                              color: FlutterFlowTheme.of(context).primaryText,
                              lineHeight: 1.5,
                            ),
                      ),
                      Text(
                        'Lavender',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'League Spartan',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 12.0,
                              lineHeight: 1.4,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'SLL540',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 8.0,
                      ),
                    ]
                        .divide(const SizedBox(width: 4.0))
                        .addToEnd(const SizedBox(width: 0.0)),
                  ),
                ),
              ],
            ),
          ),
        ].divide(const SizedBox(width: 8.0)),
      ),
    );
  }
}
