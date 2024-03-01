import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'product_filters_model.dart';
export 'product_filters_model.dart';

class ProductFiltersWidget extends StatefulWidget {
  const ProductFiltersWidget({super.key});

  @override
  State<ProductFiltersWidget> createState() => _ProductFiltersWidgetState();
}

class _ProductFiltersWidgetState extends State<ProductFiltersWidget> {
  late ProductFiltersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductFiltersModel());

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
      height: 70.0,
      decoration: const BoxDecoration(),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x12000000),
                    offset: Offset(0.0, 2.0),
                  )
                ],
                borderRadius: BorderRadius.circular(9999.0),
              ),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 9999.0,
                buttonSize: 46.0,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                icon: Icon(
                  Icons.filter_list_alt,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 20.0,
                ),
                onPressed: () {
                  print('FilterIconButton pressed ...');
                },
              ),
            ),
            Container(
              height: 46.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent3,
                borderRadius: BorderRadius.circular(9999.0),
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Text(
                  'Sports',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'League Spartan',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            Container(
              height: 46.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent3,
                borderRadius: BorderRadius.circular(9999.0),
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Text(
                  'Fashion',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'League Spartan',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            Container(
              height: 46.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent3,
                borderRadius: BorderRadius.circular(9999.0),
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Text(
                  'Electronics',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'League Spartan',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
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
