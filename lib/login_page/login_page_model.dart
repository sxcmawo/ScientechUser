import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for LoginEmail widget.
  FocusNode? loginEmailFocusNode;
  TextEditingController? loginEmailController;
  String? Function(BuildContext, String?)? loginEmailControllerValidator;
  String? _loginEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid email format';
    }
    return null;
  }

  // State field(s) for LoginPassword widget.
  FocusNode? loginPasswordFocusNode;
  TextEditingController? loginPasswordController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordControllerValidator;
  String? _loginPasswordControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for SignUpName widget.
  FocusNode? signUpNameFocusNode;
  TextEditingController? signUpNameController;
  String? Function(BuildContext, String?)? signUpNameControllerValidator;
  String? _signUpNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for SignUpEmail widget.
  FocusNode? signUpEmailFocusNode;
  TextEditingController? signUpEmailController;
  String? Function(BuildContext, String?)? signUpEmailControllerValidator;
  String? _signUpEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid email format';
    }
    return null;
  }

  // State field(s) for SignUpPhone widget.
  FocusNode? signUpPhoneFocusNode;
  TextEditingController? signUpPhoneController;
  final signUpPhoneMask = MaskTextInputFormatter(mask: '+# (###) ###-##-##');
  String? Function(BuildContext, String?)? signUpPhoneControllerValidator;
  String? _signUpPhoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for SignUpPassword widget.
  FocusNode? signUpPasswordFocusNode;
  TextEditingController? signUpPasswordController;
  late bool signUpPasswordVisibility;
  String? Function(BuildContext, String?)? signUpPasswordControllerValidator;
  String? _signUpPasswordControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // State field(s) for SignUpConfirmPassword widget.
  FocusNode? signUpConfirmPasswordFocusNode;
  TextEditingController? signUpConfirmPasswordController;
  late bool signUpConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      signUpConfirmPasswordControllerValidator;
  String? _signUpConfirmPasswordControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // State field(s) for SignUpEmergencyContact widget.
  FocusNode? signUpEmergencyContactFocusNode;
  TextEditingController? signUpEmergencyContactController;
  final signUpEmergencyContactMask =
      MaskTextInputFormatter(mask: '+# (###) ###-##-##');
  String? Function(BuildContext, String?)?
      signUpEmergencyContactControllerValidator;
  String? _signUpEmergencyContactControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    loginEmailControllerValidator = _loginEmailControllerValidator;
    loginPasswordVisibility = false;
    loginPasswordControllerValidator = _loginPasswordControllerValidator;
    signUpNameControllerValidator = _signUpNameControllerValidator;
    signUpEmailControllerValidator = _signUpEmailControllerValidator;
    signUpPhoneControllerValidator = _signUpPhoneControllerValidator;
    signUpPasswordVisibility = false;
    signUpPasswordControllerValidator = _signUpPasswordControllerValidator;
    signUpConfirmPasswordVisibility = false;
    signUpConfirmPasswordControllerValidator =
        _signUpConfirmPasswordControllerValidator;
    signUpEmergencyContactControllerValidator =
        _signUpEmergencyContactControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    loginEmailFocusNode?.dispose();
    loginEmailController?.dispose();

    loginPasswordFocusNode?.dispose();
    loginPasswordController?.dispose();

    signUpNameFocusNode?.dispose();
    signUpNameController?.dispose();

    signUpEmailFocusNode?.dispose();
    signUpEmailController?.dispose();

    signUpPhoneFocusNode?.dispose();
    signUpPhoneController?.dispose();

    signUpPasswordFocusNode?.dispose();
    signUpPasswordController?.dispose();

    signUpConfirmPasswordFocusNode?.dispose();
    signUpConfirmPasswordController?.dispose();

    signUpEmergencyContactFocusNode?.dispose();
    signUpEmergencyContactController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
