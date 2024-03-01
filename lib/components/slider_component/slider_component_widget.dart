import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'slider_component_model.dart';
export 'slider_component_model.dart';

class SliderComponentWidget extends StatefulWidget {
  const SliderComponentWidget({super.key});

  @override
  State<SliderComponentWidget> createState() => _SliderComponentWidgetState();
}

class _SliderComponentWidgetState extends State<SliderComponentWidget> {
  late SliderComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SliderComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Featured Products',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Container(
              height: 156.0,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 180.0,
                child: CarouselSlider(
                  items: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        'assets/images/7303.jpg',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        'assets/images/model-tying-shoelaces-suede-sneaker.jpg',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                        alignment: const Alignment(0.0, 1.0),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        'assets/images/2775.jpg',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                        alignment: const Alignment(-1.0, 0.0),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        'assets/images/7529.jpg',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                  carouselController: _model.featuredCarouselController ??=
                      CarouselController(),
                  options: CarouselOptions(
                    initialPage: 1,
                    viewportFraction: 0.5,
                    disableCenter: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.25,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlayInterval: const Duration(milliseconds: (800 + 4000)),
                    autoPlayCurve: Curves.linear,
                    pauseAutoPlayInFiniteScroll: true,
                    onPageChanged: (index, _) =>
                        _model.featuredCarouselCurrentIndex = index,
                  ),
                ),
              ),
            ),
          ].divide(const SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
