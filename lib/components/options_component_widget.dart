import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'options_component_model.dart';
export 'options_component_model.dart';

class OptionsComponentWidget extends StatefulWidget {
  const OptionsComponentWidget({super.key});

  @override
  _OptionsComponentWidgetState createState() => _OptionsComponentWidgetState();
}

class _OptionsComponentWidgetState extends State<OptionsComponentWidget> {
  late OptionsComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OptionsComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.00, 0.00),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: double.infinity,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFF2E3C45),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          shape: BoxShape.rectangle,
        ),
        alignment: const AlignmentDirectional(0.00, 0.00),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(25.0, 20.0, 25.0, 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.keyboard_arrow_left_rounded,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(85.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Ride Preferences',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Coolvetica',
                                    color: Colors.white,
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, -1.00),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SwitchListTile.adaptive(
                            value: _model.switchListTileValue1 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.switchListTileValue1 = newValue);
                              if (newValue) {
                                setState(() {
                                  FFAppState().hasLuggage = true;
                                });
                              }
                            },
                            title: Text(
                              'I have luggage',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Coolvetica',
                                    color: Colors.white,
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            activeColor: Colors.white,
                            activeTrackColor: const Color(0xFF89D90C),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                          SwitchListTile.adaptive(
                            value: _model.switchListTileValue2 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.switchListTileValue2 = newValue);
                              if (newValue) {
                                setState(() {
                                  FFAppState().quiteRide = true;
                                });
                              }
                            },
                            title: Text(
                              'Prefer Quiet Ride',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Coolvetica',
                                    color: Colors.white,
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            activeColor: Colors.white,
                            activeTrackColor: const Color(0xFF89D90C),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                          SwitchListTile.adaptive(
                            value: _model.switchListTileValue3 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.switchListTileValue3 = newValue);
                              if (newValue) {
                                setState(() {
                                  FFAppState().femaleDriver = true;
                                });
                              }
                            },
                            title: Text(
                              'Female Driver',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Coolvetica',
                                    color: Colors.white,
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            activeColor: Colors.white,
                            activeTrackColor: const Color(0xFF89D90C),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                          SwitchListTile.adaptive(
                            value: _model.switchListTileValue4 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.switchListTileValue4 = newValue);
                              if (newValue) {
                                setState(() {
                                  FFAppState().safetySeat = true;
                                });
                              }
                            },
                            title: Text(
                              'Child Safety Seat',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Coolvetica',
                                    color: Colors.white,
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            activeColor: Colors.white,
                            activeTrackColor: const Color(0xFF89D90C),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                          SwitchListTile.adaptive(
                            value: _model.switchListTileValue5 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.switchListTileValue5 = newValue);
                              if (newValue) {
                                setState(() {
                                  FFAppState().wheelchairAccess = true;
                                });
                              }
                            },
                            title: Text(
                              'Wheelchair Access',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Coolvetica',
                                    color: Colors.white,
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            activeColor: Colors.white,
                            activeTrackColor: const Color(0xFF89D90C),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                          SwitchListTile.adaptive(
                            value: _model.switchListTileValue6 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.switchListTileValue6 = newValue);
                              if (newValue) {
                                setState(() {
                                  FFAppState().hearspeak = true;
                                });
                              }
                            },
                            title: Text(
                              'I hear but don\'t speak ',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Coolvetica',
                                    color: Colors.white,
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            activeColor: Colors.white,
                            activeTrackColor: const Color(0xFF89D90C),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
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
      ),
    );
  }
}
