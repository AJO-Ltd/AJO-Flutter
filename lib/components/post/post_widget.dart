import '/components/post_product_embed/post_product_embed_widget.dart';
import '/components/user_info/user_info_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'post_model.dart';
export 'post_model.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  late PostModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostModel());

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
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          wrapWithModel(
            model: _model.userInfoModel,
            updateCallback: () => setState(() {}),
            child: const UserInfoWidget(),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 15.0,
                  color: Color(0x2E050D1D),
                  offset: Offset(0.0, 10.0),
                )
              ],
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset(
                'assets/images/Media_Element.png',
                width: MediaQuery.sizeOf(context).width * 1.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          wrapWithModel(
            model: _model.postProductEmbedModel,
            updateCallback: () => setState(() {}),
            child: const PostProductEmbedWidget(),
          ),
          Wrap(
            spacing: 4.0,
            runSpacing: 1.0,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            verticalDirection: VerticalDirection.down,
            clipBehavior: Clip.antiAlias,
            children: [
              Text(
                'Dr Bronner’s Lavender Soap has me in a chokehold! 😩',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'League Spartan',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 16.0,
                      lineHeight: 1.5,
                    ),
              ),
              Text(
                'Absolutely love it!! 💗 Thanks',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'League Spartan',
                      fontSize: 16.0,
                      lineHeight: 1.6,
                    ),
              ),
              Container(
                width: 24.0,
                height: 24.0,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/Rounded.png',
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Amira',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'League Spartan',
                      color: const Color(0xFFFB8B24),
                      fontSize: 16.0,
                      decoration: TextDecoration.underline,
                      lineHeight: 1.6,
                    ),
              ),
              Text(
                'for putting me on!',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Text(
                '#skincare #viral #fbc ',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'League Spartan',
                      color: const Color(0xFF9B30D9),
                    ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Color(0xFFFF5970),
                        size: 24.0,
                      ),
                      Icon(
                        Icons.mode_comment_outlined,
                        color: FlutterFlowTheme.of(context).accent2,
                        size: 24.0,
                      ),
                      Icon(
                        Icons.bookmark_rounded,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                    ].divide(const SizedBox(width: 12.0)),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: 71.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        color: const Color(0x00FFFFFF),
                        borderRadius: BorderRadius.circular(24.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).accent4,
                          width: 2.0,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SvgPicture.asset(
                              'assets/images/Group_1.svg',
                              width: 18.0,
                              height: 18.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            '94.1K',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'League Spartan',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  lineHeight: 1.0,
                                ),
                          ),
                        ]
                            .divide(const SizedBox(width: 4.0))
                            .addToStart(const SizedBox(width: 1.0)),
                      ),
                    ),
                  ),
                ].divide(const SizedBox(width: 16.0)),
              ),
              Icon(
                Icons.ios_share_rounded,
                color: FlutterFlowTheme.of(context).accent2,
                size: 24.0,
              ),
            ],
          ),
        ].divide(const SizedBox(height: 12.0)),
      ),
    );
  }
}
