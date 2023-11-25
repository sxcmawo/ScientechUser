import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_page_widget.dart' show MainPageWidget;
import 'package:flutter/material.dart';

class MainPageModel extends FlutterFlowModel<MainPageWidget> {
  ///  Local state fields for this page.

  LatLng? locationPage;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for From widget.
  var fromValue1 = const FFPlace();
  // State field(s) for To widget.
  var toValue1 = const FFPlace();
  // State field(s) for FareValue widget.
  FocusNode? fareValueFocusNode1;
  TextEditingController? fareValueController1;
  String? Function(BuildContext, String?)? fareValueController1Validator;
  // Stores action output result for [Backend Call - Create Document] action in Find widget.
  RideRecord? rideDetails;
  DateTime? datePicked1;
  // State field(s) for From widget.
  var fromValue2 = const FFPlace();
  // State field(s) for To widget.
  var toValue2 = const FFPlace();
  // State field(s) for FareValue widget.
  FocusNode? fareValueFocusNode2;
  TextEditingController? fareValueController2;
  String? Function(BuildContext, String?)? fareValueController2Validator;
  DateTime? datePicked2;
  DateTime? datePicked3;
  // State field(s) for From widget.
  var fromValue3 = const FFPlace();
  // State field(s) for To widget.
  var toValue3 = const FFPlace();
  // State field(s) for FareValue widget.
  FocusNode? fareValueFocusNode3;
  TextEditingController? fareValueController3;
  String? Function(BuildContext, String?)? fareValueController3Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    fareValueFocusNode1?.dispose();
    fareValueController1?.dispose();

    fareValueFocusNode2?.dispose();
    fareValueController2?.dispose();

    fareValueFocusNode3?.dispose();
    fareValueController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
