import '/backend/backend.dart';
import '/components/tips_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'finding_ride_page_model.dart';
export 'finding_ride_page_model.dart';

class FindingRidePageWidget extends StatefulWidget {
  const FindingRidePageWidget({
    super.key,
    this.rideDetailsReference,
  });

  final DocumentReference? rideDetailsReference;

  @override
  _FindingRidePageWidgetState createState() => _FindingRidePageWidgetState();
}

class _FindingRidePageWidgetState extends State<FindingRidePageWidget> {
  late FindingRidePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FindingRidePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return StreamBuilder<RideRecord>(
      stream: RideRecord.getDocument(widget.rideDetailsReference!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final findingRidePageRideRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: 130.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFF2E3C45),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Driver on the way',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Coolvetica',
                                    color: Colors.white,
                                    fontSize: 35.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (findingRidePageRideRecord.isDriverAssigned)
                  Align(
                    alignment: const AlignmentDirectional(0.00, -1.00),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFFA7E92F),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.00, 0.00),
                              child: Text(
                                'Found Ride',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Coolvetica',
                                      color: const Color(0xFF2E3C45),
                                      fontSize: 25.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            const Icon(
                              Icons.check,
                              color: Color(0xFF2E3C45),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                if (!findingRidePageRideRecord.isDriverAssigned)
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: custom_widgets.RouteViewStatic(
                        width: double.infinity,
                        height: double.infinity,
                        iOSGoogleMapsApiKey:
                            'AIzaSyANKGba7-_s6KJasVC5PM7zzhwTWGjheMg',
                        androidGoogleMapsApiKey:
                            'AIzaSyB9WDZ0G0qztT2sCzZ6pBvcQ_qPr8vaNsk',
                        webGoogleMapsApiKey:
                            'AIzaSyCvtWeicE3aYkgsDuUWV9v7kl7MujA0o_Y',
                        startAddress: findingRidePageRideRecord.userAddress,
                        destinationAddress:
                            findingRidePageRideRecord.destinationAddress,
                        lineColor: const Color(0xFF016A2B),
                        startCoordinate:
                            findingRidePageRideRecord.userLocation!,
                        endCoordinate:
                            findingRidePageRideRecord.destinationLocation!,
                      ),
                    ),
                  ),
                if (findingRidePageRideRecord.isDriverAssigned)
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: custom_widgets.RouteViewLive(
                        width: double.infinity,
                        height: double.infinity,
                        iOSGoogleMapsApiKey:
                            'AIzaSyANKGba7-_s6KJasVC5PM7zzhwTWGjheMg',
                        androidGoogleMapsApiKey:
                            'AIzaSyB9WDZ0G0qztT2sCzZ6pBvcQ_qPr8vaNsk',
                        webGoogleMapsApiKey:
                            'AIzaSyCvtWeicE3aYkgsDuUWV9v7kl7MujA0o_Y',
                        destinationAddress:
                            findingRidePageRideRecord.userAddress,
                        lineColor: const Color(0xFF016A2B),
                        startCoordinate:
                            findingRidePageRideRecord.driverLocation!,
                        endCoordinate: findingRidePageRideRecord.userLocation!,
                        rideDetailsReference:
                            findingRidePageRideRecord.reference,
                      ),
                    ),
                  ),
                if (!findingRidePageRideRecord.isDriverAssigned)
                  Container(
                    width: double.infinity,
                    height: 80.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFFA7E92F),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              'Finding Ride...',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Coolvetica',
                                    color: const Color(0xFF2E3C45),
                                    fontSize: 25.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          const SizedBox(
                            width: 26.0,
                            height: 26.0,
                            child: custom_widgets.CustomProgressIndicator(
                              width: 26.0,
                              height: 26.0,
                              color: Color(0xFF2E3C45),
                              strokeWidth: 2.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (findingRidePageRideRecord.isDriverAssigned)
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF2E3C45),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      border: Border.all(
                        color: const Color(0xFF1C2024),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 30.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: Text(
                                    'Arriving in',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Coolvetica',
                                          color: Colors.white,
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFA7E92F),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 16.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            FFAppState().routeDuration,
                                            '-',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Coolvetica',
                                                color: const Color(0xFF2E3C45),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 8.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            FFAppState().routeDistance,
                                            '-',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Coolvetica',
                                                color: const Color(0xFF2E3C45),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 3.0,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 20.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 50.0,
                                      height: 50.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/975/600',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              findingRidePageRideRecord
                                                  .driverName,
                                              'Driver',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Coolvetica',
                                                  color: Colors.white,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Icon(
                                                  Icons.star_rounded,
                                                  color: Color(0xFFFBFF4B),
                                                  size: 24.0,
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Text(
                                                  '5.0',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: Text(
                                        findingRidePageRideRecord.fare,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    const Align(
                                      alignment:
                                          AlignmentDirectional(0.00, -1.00),
                                      child: FaIcon(
                                        FontAwesomeIcons.tenge,
                                        color: Colors.white,
                                        size: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Red Audi 540AAA01',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FlutterFlowIconButton(
                                  borderRadius: 50.0,
                                  borderWidth: 1.0,
                                  buttonSize: 58.0,
                                  fillColor: const Color(0xFFA7E92F),
                                  icon: const Icon(
                                    Icons.close_rounded,
                                    color: Color(0xFF2E3C45),
                                    size: 40.0,
                                  ),
                                  onPressed: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: const SizedBox(
                                              height: 560.0,
                                              child: TipsWidget(),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 50.0,
                                  borderWidth: 1.0,
                                  buttonSize: 58.0,
                                  fillColor: const Color(0xFFA7E92F),
                                  icon: const Icon(
                                    Icons.chat_rounded,
                                    color: Color(0xFF2E3C45),
                                    size: 30.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
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
        );
      },
    );
  }
}
