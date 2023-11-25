import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'tips_model.dart';
export 'tips_model.dart';

class TipsWidget extends StatefulWidget {
  const TipsWidget({super.key});

  @override
  _TipsWidgetState createState() => _TipsWidgetState();
}

class _TipsWidgetState extends State<TipsWidget> {
  late TipsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TipsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF2E3C45),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Rate the ride',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Coolvetica',
                    color: Colors.white,
                    fontSize: 25.0,
                    useGoogleFonts: false,
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
              child: RatingBar.builder(
                onRatingUpdate: (newValue) =>
                    setState(() => _model.ratingBarValue = newValue),
                itemBuilder: (context, index) => Icon(
                  Icons.star_rounded,
                  color: FlutterFlowTheme.of(context).warning,
                ),
                direction: Axis.horizontal,
                initialRating: _model.ratingBarValue ??= 0.0,
                unratedColor: FlutterFlowTheme.of(context).accent3,
                itemCount: 5,
                itemSize: 50.0,
                glowColor: FlutterFlowTheme.of(context).warning,
              ),
            ),
            const Opacity(
              opacity: 0.5,
              child: SizedBox(
                width: 350.0,
                child: Divider(
                  thickness: 2.0,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Text(
                'Leave the tips',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Coolvetica',
                      color: Colors.white,
                      fontSize: 25.0,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Tip to driver',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Coolvetica',
                                  color: Colors.white,
                                  fontSize: 23.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                          SizedBox(
                            width: 300.0,
                            child: Slider(
                              activeColor: const Color(0xFFA7E92F),
                              inactiveColor:
                                  FlutterFlowTheme.of(context).alternate,
                              min: 0.0,
                              max: 1.0,
                              value: _model.sliderDriverValue ??= 0.0,
                              label: _model.sliderDriverValue.toString(),
                              divisions: 100,
                              onChanged: (newValue) {
                                newValue =
                                    double.parse(newValue.toStringAsFixed(2));
                                setState(
                                    () => _model.sliderDriverValue = newValue);
                              },
                            ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              formatNumber(
                                _model.sliderDriverValue,
                                formatType: FormatType.percent,
                              ),
                              '5',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Coolvetica',
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Support inclusive rides',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Coolvetica',
                                    color: Colors.white,
                                    fontSize: 23.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            SizedBox(
                              width: 300.0,
                              child: Slider(
                                activeColor: const Color(0xFFA7E92F),
                                inactiveColor:
                                    FlutterFlowTheme.of(context).alternate,
                                min: 0.0,
                                max: 1.0,
                                value: _model.slideInclusivityValue ??= 0.0,
                                divisions: 100,
                                onChanged: (newValue) {
                                  newValue =
                                      double.parse(newValue.toStringAsFixed(2));
                                  setState(() =>
                                      _model.slideInclusivityValue = newValue);
                                },
                              ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                formatNumber(
                                  _model.slideInclusivityValue,
                                  formatType: FormatType.percent,
                                ),
                                '5',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Coolvetica',
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.00, 0.00),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);

                  context.pushNamed('MainPage');
                },
                text: 'Done',
                options: FFButtonOptions(
                  width: 365.0,
                  height: 65.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFFA7E92F),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Coolvetica',
                        color: const Color(0xFF2E3C45),
                        fontSize: 25.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
