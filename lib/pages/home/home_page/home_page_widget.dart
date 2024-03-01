import '/backend/backend.dart';
import '/components/feed_filters/feed_filters_widget.dart';
import '/components/post/post_widget.dart';
import '/components/product_filters/product_filters_widget.dart';
import '/components/slider_component/slider_component_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.homeTabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 1,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 19.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.935,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: 32.0,
                                  height: 32.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(24.0),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1570158268183-d296b2892211?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNHx8cG9ydHJhaXR8ZW58MHx8fHwxNzA0MjExNDQwfDA&ixlib=rb-4.0.3&q=80&w=400',
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              1.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SvgPicture.asset(
                                  'assets/images/ajo_1.svg',
                                  width: 58.0,
                                  height: 32.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    FFIcons.kbasket,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('CartIconButton pressed ...');
                                  },
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 0.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: const Alignment(0.0, 0),
                                    child: FlutterFlowButtonTabBar(
                                      useToggleButtonStyle: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'League Spartan',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      unselectedLabelStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'League Spartan',
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                      labelColor:
                                          FlutterFlowTheme.of(context).primary,
                                      unselectedLabelColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      backgroundColor: const Color(0x0D395CEF),
                                      unselectedBackgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      unselectedBorderColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      borderWidth: 0.0,
                                      borderRadius: 9999.0,
                                      elevation: 2.0,
                                      buttonMargin:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              8.0, 0.0, 8.0, 0.0),
                                      tabs: const [
                                        Tab(
                                          text: 'Feed',
                                        ),
                                        Tab(
                                          text: 'Marketplace',
                                        ),
                                      ],
                                      controller: _model.homeTabBarController,
                                      onTap: (i) async {
                                        [() async {}, () async {}][i]();
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      controller: _model.homeTabBarController,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      children: [
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 153.0),
                                            child: SizedBox(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              child: Stack(
                                                alignment: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          wrapWithModel(
                                                            model: _model
                                                                .feedFiltersModel,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                const FeedFiltersWidget(),
                                                          ),
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                            ),
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, -1.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Moments',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            18.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                                SingleChildScrollView(
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              124.0,
                                                                          height:
                                                                              165.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            gradient:
                                                                                const LinearGradient(
                                                                              colors: [
                                                                                Color(0xFF9B30D9),
                                                                                Color(0xFFBF83EB)
                                                                              ],
                                                                              stops: [
                                                                                0.0,
                                                                                1.0
                                                                              ],
                                                                              begin: AlignmentDirectional(0.17, 1.0),
                                                                              end: AlignmentDirectional(-0.17, -1.0),
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(18.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(4.0),
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.1,
                                                                              height: MediaQuery.sizeOf(context).height * 1.1,
                                                                              decoration: BoxDecoration(
                                                                                color: const Color(0xFF170909),
                                                                                image: const DecorationImage(
                                                                                  fit: BoxFit.fitHeight,
                                                                                  image: CachedNetworkImageProvider(
                                                                                    'https://images.unsplash.com/photo-1506744038136-46273834b3fb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxsYW5kc2NhcGV8ZW58MHx8fHwxNzA0MjQ2OTY1fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                                                                  ),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(15.0),
                                                                              ),
                                                                              child: Container(
                                                                                width: 100.0,
                                                                                height: 100.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: const Color(0x98000000),
                                                                                  borderRadius: BorderRadius.circular(14.0),
                                                                                ),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 36.0,
                                                                                      height: 36.0,
                                                                                      decoration: BoxDecoration(
                                                                                        boxShadow: const [
                                                                                          BoxShadow(
                                                                                            blurRadius: 3.0,
                                                                                            color: Color(0x33000000),
                                                                                            offset: Offset(0.0, 1.0),
                                                                                          )
                                                                                        ],
                                                                                        gradient: const LinearGradient(
                                                                                          colors: [
                                                                                            Color(0xFF9B30D9),
                                                                                            Color(0xFFCCC0F7)
                                                                                          ],
                                                                                          stops: [0.18, 1.0],
                                                                                          begin: AlignmentDirectional(1.0, 0.5),
                                                                                          end: AlignmentDirectional(-1.0, -0.5),
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      child: const Icon(
                                                                                        Icons.add,
                                                                                        color: Color(0xFFF0F0F0),
                                                                                        size: 20.0,
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                      height: 28.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        borderRadius: BorderRadius.circular(24.0),
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(24.0),
                                                                                              child: Image.network(
                                                                                                'https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw4fHxwb3J0cmFpdHxlbnwwfHx8fDE3MDQyMTE0NDB8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Maria Johnson',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'League Spartan',
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 12.0,
                                                                                                ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 8.0)),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(height: 40.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              124.0,
                                                                          height:
                                                                              165.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            gradient:
                                                                                const LinearGradient(
                                                                              colors: [
                                                                                Color(0xFF9B30D9),
                                                                                Color(0xFFBF83EB)
                                                                              ],
                                                                              stops: [
                                                                                0.0,
                                                                                1.0
                                                                              ],
                                                                              begin: AlignmentDirectional(0.17, 1.0),
                                                                              end: AlignmentDirectional(-0.17, -1.0),
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(18.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(4.0),
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.1,
                                                                              height: MediaQuery.sizeOf(context).height * 1.1,
                                                                              decoration: BoxDecoration(
                                                                                color: const Color(0xFF170909),
                                                                                image: const DecorationImage(
                                                                                  fit: BoxFit.fitHeight,
                                                                                  image: CachedNetworkImageProvider(
                                                                                    'https://images.unsplash.com/photo-1506744038136-46273834b3fb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxsYW5kc2NhcGV8ZW58MHx8fHwxNzA0MzY4NDc5fDA&ixlib=rb-4.0.3&q=80&w=400',
                                                                                  ),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(15.0),
                                                                              ),
                                                                              child: Container(
                                                                                width: 100.0,
                                                                                height: 100.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(14.0),
                                                                                ),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                      height: 28.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        borderRadius: BorderRadius.circular(24.0),
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(24.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/aiony-haust-3TLl_97HNJo-unsplash.jpg',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Jillian Hunt',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'League Spartan',
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 12.0,
                                                                                                ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 8.0)),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(height: 40.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              124.0,
                                                                          height:
                                                                              165.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            gradient:
                                                                                const LinearGradient(
                                                                              colors: [
                                                                                Color(0xFF9B30D9),
                                                                                Color(0xFFBF83EB)
                                                                              ],
                                                                              stops: [
                                                                                0.0,
                                                                                1.0
                                                                              ],
                                                                              begin: AlignmentDirectional(0.17, 1.0),
                                                                              end: AlignmentDirectional(-0.17, -1.0),
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(18.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(4.0),
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.1,
                                                                              height: MediaQuery.sizeOf(context).height * 1.1,
                                                                              decoration: BoxDecoration(
                                                                                color: const Color(0xFF170909),
                                                                                image: const DecorationImage(
                                                                                  fit: BoxFit.fitHeight,
                                                                                  image: CachedNetworkImageProvider(
                                                                                    'https://images.unsplash.com/photo-1532274402911-5a369e4c4bb5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxsYW5kc2NhcGV8ZW58MHx8fHwxNzA0MzY4NDc5fDA&ixlib=rb-4.0.3&q=80&w=400',
                                                                                  ),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(15.0),
                                                                              ),
                                                                              child: Container(
                                                                                width: 100.0,
                                                                                height: 100.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(14.0),
                                                                                ),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                      height: 28.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        borderRadius: BorderRadius.circular(24.0),
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(24.0),
                                                                                              child: Image.network(
                                                                                                'https://images.unsplash.com/photo-1544005313-94ddf0286df2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxwb3J0cmFpdHxlbnwwfHx8fDE3MDQyMTE0NDB8MA&ixlib=rb-4.0.3&q=80&w=400',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Maya Lou',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'League Spartan',
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 12.0,
                                                                                                ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 8.0)),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(height: 40.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              124.0,
                                                                          height:
                                                                              165.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            gradient:
                                                                                const LinearGradient(
                                                                              colors: [
                                                                                Color(0xFF9B30D9),
                                                                                Color(0xFFBF83EB)
                                                                              ],
                                                                              stops: [
                                                                                0.0,
                                                                                1.0
                                                                              ],
                                                                              begin: AlignmentDirectional(0.17, 1.0),
                                                                              end: AlignmentDirectional(-0.17, -1.0),
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(18.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(4.0),
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.1,
                                                                              height: MediaQuery.sizeOf(context).height * 1.1,
                                                                              decoration: BoxDecoration(
                                                                                color: const Color(0xFF170909),
                                                                                image: const DecorationImage(
                                                                                  fit: BoxFit.cover,
                                                                                  image: CachedNetworkImageProvider(
                                                                                    'https://images.unsplash.com/photo-1647891938250-954addeb9c51?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MXwxfHNlYXJjaHwxNXx8bGFuZHNjYXBlfGVufDB8fHx8MTcwNDM2ODQ3OXww&ixlib=rb-4.0.3&q=80&w=400',
                                                                                  ),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(15.0),
                                                                              ),
                                                                              child: Container(
                                                                                width: 100.0,
                                                                                height: 100.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(14.0),
                                                                                ),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                      height: 28.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        borderRadius: BorderRadius.circular(24.0),
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(24.0),
                                                                                              child: Image.network(
                                                                                                'https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxwb3J0cmFpdHxlbnwwfHx8fDE3MDQyMTE0NDB8MA&ixlib=rb-4.0.3&q=80&w=400',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Amira Khalida',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'League Spartan',
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 12.0,
                                                                                                ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 8.0)),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(height: 40.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              124.0,
                                                                          height:
                                                                              165.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            gradient:
                                                                                const LinearGradient(
                                                                              colors: [
                                                                                Color(0xFF9B30D9),
                                                                                Color(0xFFBF83EB)
                                                                              ],
                                                                              stops: [
                                                                                0.0,
                                                                                1.0
                                                                              ],
                                                                              begin: AlignmentDirectional(0.17, 1.0),
                                                                              end: AlignmentDirectional(-0.17, -1.0),
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(18.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(4.0),
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.1,
                                                                              height: MediaQuery.sizeOf(context).height * 1.1,
                                                                              decoration: BoxDecoration(
                                                                                color: const Color(0xFF170909),
                                                                                image: const DecorationImage(
                                                                                  fit: BoxFit.fitHeight,
                                                                                  image: CachedNetworkImageProvider(
                                                                                    'https://images.unsplash.com/photo-1679678691006-0ad24fecb769?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MXwxfHNlYXJjaHwxfHxsYW5kc2NhcGV8ZW58MHx8fHwxNzA0MzY4NDc5fDA&ixlib=rb-4.0.3&q=80&w=400',
                                                                                  ),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(15.0),
                                                                              ),
                                                                              child: Container(
                                                                                width: 100.0,
                                                                                height: 100.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(14.0),
                                                                                ),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                      height: 28.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        borderRadius: BorderRadius.circular(24.0),
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(24.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/aiony-haust-3TLl_97HNJo-unsplash.jpg',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Rosa Wilson',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'League Spartan',
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 12.0,
                                                                                                ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 8.0)),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(height: 40.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              124.0,
                                                                          height:
                                                                              165.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            gradient:
                                                                                const LinearGradient(
                                                                              colors: [
                                                                                Color(0xFF9B30D9),
                                                                                Color(0xFFBF83EB)
                                                                              ],
                                                                              stops: [
                                                                                0.0,
                                                                                1.0
                                                                              ],
                                                                              begin: AlignmentDirectional(0.17, 1.0),
                                                                              end: AlignmentDirectional(-0.17, -1.0),
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(18.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(4.0),
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.1,
                                                                              height: MediaQuery.sizeOf(context).height * 1.1,
                                                                              decoration: BoxDecoration(
                                                                                color: const Color(0xFF170909),
                                                                                image: const DecorationImage(
                                                                                  fit: BoxFit.cover,
                                                                                  image: CachedNetworkImageProvider(
                                                                                    'https://images.unsplash.com/photo-1531969179221-3946e6b5a5e7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw1fHx0ZWF8ZW58MHx8fHwxNzA0MzA4NjQ3fDA&ixlib=rb-4.0.3&q=80&w=400',
                                                                                  ),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(15.0),
                                                                              ),
                                                                              child: Container(
                                                                                width: 100.0,
                                                                                height: 100.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(14.0),
                                                                                ),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                      height: 28.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        borderRadius: BorderRadius.circular(24.0),
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(24.0),
                                                                                              child: Image.network(
                                                                                                'https://images.unsplash.com/photo-1656473031947-0e19d272e3cc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8cG9ydHJhaXxlbnwwfHx8fDE3MDQyNDg5OTd8MA&ixlib=rb-4.0.3&q=80&w=400',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Ayeesha Joh...',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'League Spartan',
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 12.0,
                                                                                                ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 8.0)),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(height: 40.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height:
                                                                      12.0)),
                                                            ),
                                                          ),
                                                          wrapWithModel(
                                                            model: _model
                                                                .postModel1,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child: const PostWidget(),
                                                          ),
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: 233.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Who to follow',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              18.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                144.0,
                                                                            height:
                                                                                165.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              boxShadow: const [
                                                                                BoxShadow(
                                                                                  blurRadius: 12.0,
                                                                                  color: Color(0x1A000000),
                                                                                  offset: Offset(0.0, 5.0),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(16.0),
                                                                            ),
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(360.0),
                                                                                  child: Image.network(
                                                                                    'https://images.unsplash.com/photo-1521119989659-a83eee488004?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw1fHxwb3J0cmFpdHxlbnwwfHx8fDE3MDQyMTE0NDB8MA&ixlib=rb-4.0.3&q=80&w=400',
                                                                                    width: 64.0,
                                                                                    height: 64.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'Joseph Dumbuya',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                                FFButtonWidget(
                                                                                  onPressed: () {
                                                                                    print('Button pressed ...');
                                                                                  },
                                                                                  text: 'Follow',
                                                                                  options: FFButtonOptions(
                                                                                    height: 40.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: const Color(0xFF9B30D9),
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'League Spartan',
                                                                                          color: const Color(0xFFF0F0F0),
                                                                                          fontSize: 14.0,
                                                                                        ),
                                                                                    elevation: 3.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(24.0),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 8.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                144.0,
                                                                            height:
                                                                                165.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              boxShadow: const [
                                                                                BoxShadow(
                                                                                  blurRadius: 12.0,
                                                                                  color: Color(0x1A000000),
                                                                                  offset: Offset(0.0, 5.0),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(16.0),
                                                                            ),
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(360.0),
                                                                                  child: Image.network(
                                                                                    'https://images.unsplash.com/photo-1530785602389-07594beb8b73?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxwb3J0cmFpdHN8ZW58MHx8fHwxNzA0MjU0MTY3fDA&ixlib=rb-4.0.3&q=80&w=400',
                                                                                    width: 64.0,
                                                                                    height: 64.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'Kadiatu Lahai',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                                FFButtonWidget(
                                                                                  onPressed: () {
                                                                                    print('Button pressed ...');
                                                                                  },
                                                                                  text: 'Follow',
                                                                                  options: FFButtonOptions(
                                                                                    height: 40.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: const Color(0xFF9B30D9),
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'League Spartan',
                                                                                          color: const Color(0xFFF0F0F0),
                                                                                          fontSize: 14.0,
                                                                                        ),
                                                                                    elevation: 3.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(24.0),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 8.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                144.0,
                                                                            height:
                                                                                165.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              boxShadow: const [
                                                                                BoxShadow(
                                                                                  blurRadius: 12.0,
                                                                                  color: Color(0x1A000000),
                                                                                  offset: Offset(0.0, 5.0),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(16.0),
                                                                            ),
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(360.0),
                                                                                  child: Image.network(
                                                                                    'https://images.unsplash.com/photo-1656373906615-db8d7b15e714?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxwb3J0cnRhaXRzfGVufDB8fHx8MTcwNDI1NDIzNXww&ixlib=rb-4.0.3&q=80&w=400',
                                                                                    width: 64.0,
                                                                                    height: 64.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'Miracle Daboh',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                                FFButtonWidget(
                                                                                  onPressed: () {
                                                                                    print('Button pressed ...');
                                                                                  },
                                                                                  text: 'Follow',
                                                                                  options: FFButtonOptions(
                                                                                    height: 40.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: const Color(0xFF9B30D9),
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'League Spartan',
                                                                                          color: const Color(0xFFF0F0F0),
                                                                                          fontSize: 14.0,
                                                                                        ),
                                                                                    elevation: 3.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(24.0),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 8.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                144.0,
                                                                            height:
                                                                                165.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              boxShadow: const [
                                                                                BoxShadow(
                                                                                  blurRadius: 12.0,
                                                                                  color: Color(0x1A000000),
                                                                                  offset: Offset(0.0, 5.0),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(16.0),
                                                                            ),
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(360.0),
                                                                                  child: Image.network(
                                                                                    'https://images.unsplash.com/photo-1576695444267-40cdd214f06e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNXx8cG9ydHJhaXRzfGVufDB8fHx8MTcwNDI1NDE2N3ww&ixlib=rb-4.0.3&q=80&w=1080',
                                                                                    width: 64.0,
                                                                                    height: 64.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'Abu Fofanah',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                                FFButtonWidget(
                                                                                  onPressed: () {
                                                                                    print('Button pressed ...');
                                                                                  },
                                                                                  text: 'Follow',
                                                                                  options: FFButtonOptions(
                                                                                    height: 40.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: const Color(0xFF9B30D9),
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'League Spartan',
                                                                                          color: const Color(0xFFF0F0F0),
                                                                                          fontSize: 14.0,
                                                                                        ),
                                                                                    elevation: 3.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(24.0),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 8.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                144.0,
                                                                            height:
                                                                                165.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              boxShadow: const [
                                                                                BoxShadow(
                                                                                  blurRadius: 12.0,
                                                                                  color: Color(0x1A000000),
                                                                                  offset: Offset(0.0, 5.0),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(16.0),
                                                                            ),
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(360.0),
                                                                                  child: Image.network(
                                                                                    'https://images.unsplash.com/photo-1509305717900-84f40e786d82?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNXx8YmxhY2slMjBwb3J0cmFpdHN8ZW58MHx8fHwxNzA0MjU0NDI2fDA&ixlib=rb-4.0.3&q=80&w=400',
                                                                                    width: 64.0,
                                                                                    height: 64.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'Ambrose Duncan M...',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                                FFButtonWidget(
                                                                                  onPressed: () {
                                                                                    print('Button pressed ...');
                                                                                  },
                                                                                  text: 'Follow',
                                                                                  options: FFButtonOptions(
                                                                                    height: 40.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: const Color(0xFF9B30D9),
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'League Spartan',
                                                                                          color: const Color(0xFFF0F0F0),
                                                                                          fontSize: 14.0,
                                                                                        ),
                                                                                    elevation: 3.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(24.0),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 8.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height:
                                                                      12.0)),
                                                            ),
                                                          ),
                                                          wrapWithModel(
                                                            model: _model
                                                                .postModel2,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child: const PostWidget(),
                                                          ),
                                                          wrapWithModel(
                                                            model: _model
                                                                .postModel3,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child: const PostWidget(),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 12.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 153.0),
                                              child: SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                child: Stack(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, -1.0),
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .sliderComponentModel,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    const SliderComponentWidget(),
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .productFiltersModel,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  const ProductFiltersWidget(),
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Popular',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Montserrat',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontSize:
                                                                            18.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'see all',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'League Spartan',
                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                              fontWeight: FontWeight.w300,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height:
                                                                      1000.0,
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    child: StreamBuilder<
                                                                        List<
                                                                            ProductRecord>>(
                                                                      stream:
                                                                          queryProductRecord(),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              child: SpinKitRing(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 50.0,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<ProductRecord>
                                                                            popularItemsGridProductRecordList =
                                                                            snapshot.data!;
                                                                        return GridView
                                                                            .builder(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          gridDelegate:
                                                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                                                            crossAxisCount:
                                                                                2,
                                                                            crossAxisSpacing:
                                                                                10.0,
                                                                            mainAxisSpacing:
                                                                                10.0,
                                                                            childAspectRatio:
                                                                                0.58,
                                                                          ),
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              popularItemsGridProductRecordList.length,
                                                                          itemBuilder:
                                                                              (context, popularItemsGridIndex) {
                                                                            final popularItemsGridProductRecord =
                                                                                popularItemsGridProductRecordList[popularItemsGridIndex];
                                                                            return Container(
                                                                              constraints: const BoxConstraints(
                                                                                maxWidth: 170.0,
                                                                              ),
                                                                              decoration: const BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Container(
                                                                                    decoration: BoxDecoration(
                                                                                      boxShadow: const [
                                                                                        BoxShadow(
                                                                                          blurRadius: 12.0,
                                                                                          color: Color(0x1A000000),
                                                                                          offset: Offset(0.0, 5.0),
                                                                                        )
                                                                                      ],
                                                                                      borderRadius: BorderRadius.circular(20.0),
                                                                                    ),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        context.pushNamed(
                                                                                          'productDetails',
                                                                                          queryParameters: {
                                                                                            'productDetailsImage': serializeParam(
                                                                                              popularItemsGridProductRecord.image,
                                                                                              ParamType.String,
                                                                                            ),
                                                                                            'productDetailsName': serializeParam(
                                                                                              popularItemsGridProductRecord.name,
                                                                                              ParamType.String,
                                                                                            ),
                                                                                            'productDetailsDescription': serializeParam(
                                                                                              popularItemsGridProductRecord.description,
                                                                                              ParamType.String,
                                                                                            ),
                                                                                            'productDetailsCost': serializeParam(
                                                                                              popularItemsGridProductRecord.price,
                                                                                              ParamType.double,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                        );
                                                                                      },
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(20.0),
                                                                                        child: CachedNetworkImage(
                                                                                          fadeInDuration: const Duration(milliseconds: 400),
                                                                                          fadeOutDuration: const Duration(milliseconds: 400),
                                                                                          imageUrl: popularItemsGridProductRecord.image,
                                                                                          width: 172.0,
                                                                                          height: 226.0,
                                                                                          fit: BoxFit.fill,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    decoration: const BoxDecoration(),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: 140.0,
                                                                                              decoration: const BoxDecoration(),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 100.0,
                                                                                                    constraints: const BoxConstraints(
                                                                                                      minWidth: 133.0,
                                                                                                    ),
                                                                                                    decoration: const BoxDecoration(),
                                                                                                    child: Text(
                                                                                                      popularItemsGridProductRecord.name,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'League Spartan',
                                                                                                            lineHeight: 1.4,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Container(
                                                                                                    constraints: const BoxConstraints(
                                                                                                      minWidth: 172.0,
                                                                                                    ),
                                                                                                    decoration: const BoxDecoration(),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          popularItemsGridProductRecord.price.toString(),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'League Spartan',
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ].divide(const SizedBox(width: 12.0)),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            FlutterFlowIconButton(
                                                                                              borderColor: Colors.transparent,
                                                                                              borderRadius: 20.0,
                                                                                              borderWidth: 1.0,
                                                                                              buttonSize: 40.0,
                                                                                              icon: Icon(
                                                                                                Icons.favorite_border,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                size: 20.0,
                                                                                              ),
                                                                                              onPressed: () {
                                                                                                print('IconButton pressed ...');
                                                                                              },
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ].divide(const SizedBox(height: 4.0)),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 8.0)),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height: 8.0)),
                                                            ),
                                                          ]
                                                              .divide(const SizedBox(
                                                                  height: 16.0))
                                                              .around(const SizedBox(
                                                                  height:
                                                                      16.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.064,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0.0, -20.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.96,
                    height: 52.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 15.0,
                          color: Color(0x2D050D1D),
                          offset: Offset(0.0, 10.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          FFIcons.khome,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        const Icon(
                          FFIcons.ksearchOutlined,
                          color: Color(0xFF717171),
                          size: 24.0,
                        ),
                        const Icon(
                          FFIcons.kstoreAltOutlined,
                          color: Color(0xFF717171),
                          size: 24.0,
                        ),
                        const Icon(
                          FFIcons.kactivitiesOutlined,
                          color: Color(0xFF717171),
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
