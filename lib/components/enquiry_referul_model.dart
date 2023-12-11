import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'enquiry_referul_widget.dart' show EnquiryReferulWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class EnquiryReferulModel extends FlutterFlowModel<EnquiryReferulWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  String? _textController5Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  String? _textController6Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  String? _textController7Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  String? _textController8Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextFieldProspectiveClient widget.
  FocusNode? textFieldProspectiveClientFocusNode;
  TextEditingController? textFieldProspectiveClientController;
  String? Function(BuildContext, String?)?
      textFieldProspectiveClientControllerValidator;
  String? _textFieldProspectiveClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for BrandNamePropClient widget.
  FocusNode? brandNamePropClientFocusNode;
  TextEditingController? brandNamePropClientController;
  String? Function(BuildContext, String?)?
      brandNamePropClientControllerValidator;
  String? _brandNamePropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for NamePersonInChargePropClient widget.
  FocusNode? namePersonInChargePropClientFocusNode;
  TextEditingController? namePersonInChargePropClientController;
  String? Function(BuildContext, String?)?
      namePersonInChargePropClientControllerValidator;
  String? _namePersonInChargePropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DesignationPersonInChargePropClient widget.
  FocusNode? designationPersonInChargePropClientFocusNode;
  TextEditingController? designationPersonInChargePropClientController;
  String? Function(BuildContext, String?)?
      designationPersonInChargePropClientControllerValidator;
  String? _designationPersonInChargePropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for WebsiteOfPropClient widget.
  FocusNode? websiteOfPropClientFocusNode;
  TextEditingController? websiteOfPropClientController;
  String? Function(BuildContext, String?)?
      websiteOfPropClientControllerValidator;
  String? _websiteOfPropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for EmailOfPropClient widget.
  FocusNode? emailOfPropClientFocusNode;
  TextEditingController? emailOfPropClientController;
  String? Function(BuildContext, String?)? emailOfPropClientControllerValidator;
  String? _emailOfPropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for RelationshipWihPropCLient widget.
  FocusNode? relationshipWihPropCLientFocusNode;
  TextEditingController? relationshipWihPropCLientController;
  String? Function(BuildContext, String?)?
      relationshipWihPropCLientControllerValidator;
  String? _relationshipWihPropCLientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for LocationOfPropClientCity widget.
  FocusNode? locationOfPropClientCityFocusNode;
  TextEditingController? locationOfPropClientCityController;
  String? Function(BuildContext, String?)?
      locationOfPropClientCityControllerValidator;
  String? _locationOfPropClientCityControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for AdressOfPropClient widget.
  FocusNode? adressOfPropClientFocusNode;
  TextEditingController? adressOfPropClientController;
  String? Function(BuildContext, String?)?
      adressOfPropClientControllerValidator;
  String? _adressOfPropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PhoneNumberPropClient widget.
  FocusNode? phoneNumberPropClientFocusNode;
  TextEditingController? phoneNumberPropClientController;
  String? Function(BuildContext, String?)?
      phoneNumberPropClientControllerValidator;
  String? _phoneNumberPropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ProductServiceOfPropClient widget.
  FocusNode? productServiceOfPropClientFocusNode;
  TextEditingController? productServiceOfPropClientController;
  String? Function(BuildContext, String?)?
      productServiceOfPropClientControllerValidator;
  String? _productServiceOfPropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for LinkedinPageOfPropClient widget.
  FocusNode? linkedinPageOfPropClientFocusNode;
  TextEditingController? linkedinPageOfPropClientController;
  String? Function(BuildContext, String?)?
      linkedinPageOfPropClientControllerValidator;
  String? _linkedinPageOfPropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TwitterPagePropClient widget.
  FocusNode? twitterPagePropClientFocusNode;
  TextEditingController? twitterPagePropClientController;
  String? Function(BuildContext, String?)?
      twitterPagePropClientControllerValidator;
  String? _twitterPagePropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for FaceBokkPropClient widget.
  FocusNode? faceBokkPropClientFocusNode;
  TextEditingController? faceBokkPropClientController;
  String? Function(BuildContext, String?)?
      faceBokkPropClientControllerValidator;
  String? _faceBokkPropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for InstagramPageOfPropClient widget.
  FocusNode? instagramPageOfPropClientFocusNode;
  TextEditingController? instagramPageOfPropClientController;
  String? Function(BuildContext, String?)?
      instagramPageOfPropClientControllerValidator;
  String? _instagramPageOfPropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for YoutubePagePropClient widget.
  FocusNode? youtubePagePropClientFocusNode;
  TextEditingController? youtubePagePropClientController;
  String? Function(BuildContext, String?)?
      youtubePagePropClientControllerValidator;
  String? _youtubePagePropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TikTokPageOfPropClient widget.
  FocusNode? tikTokPageOfPropClientFocusNode;
  TextEditingController? tikTokPageOfPropClientController;
  String? Function(BuildContext, String?)?
      tikTokPageOfPropClientControllerValidator;
  String? _tikTokPageOfPropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DescriptionAboutProspectiveClient widget.
  FocusNode? descriptionAboutProspectiveClientFocusNode;
  TextEditingController? descriptionAboutProspectiveClientController;
  String? Function(BuildContext, String?)?
      descriptionAboutProspectiveClientControllerValidator;
  String? _descriptionAboutProspectiveClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for YourSuggestions widget.
  FocusNode? yourSuggestionsFocusNode;
  TextEditingController? yourSuggestionsController;
  String? Function(BuildContext, String?)? yourSuggestionsControllerValidator;
  String? _yourSuggestionsControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CountrOfPropClient widget.
  FocusNode? countrOfPropClientFocusNode;
  TextEditingController? countrOfPropClientController;
  String? Function(BuildContext, String?)?
      countrOfPropClientControllerValidator;
  String? _countrOfPropClientControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - pickImageFromGallery] action in Button widget.
  String? logo;
  // Stores action output result for [Backend Call - API (addReferal)] action in Button widget.
  ApiCallResponse? apiResultt80;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    textController3Validator = _textController3Validator;
    textController4Validator = _textController4Validator;
    textController5Validator = _textController5Validator;
    textController6Validator = _textController6Validator;
    textController7Validator = _textController7Validator;
    textController8Validator = _textController8Validator;
    textFieldProspectiveClientControllerValidator =
        _textFieldProspectiveClientControllerValidator;
    brandNamePropClientControllerValidator =
        _brandNamePropClientControllerValidator;
    namePersonInChargePropClientControllerValidator =
        _namePersonInChargePropClientControllerValidator;
    designationPersonInChargePropClientControllerValidator =
        _designationPersonInChargePropClientControllerValidator;
    websiteOfPropClientControllerValidator =
        _websiteOfPropClientControllerValidator;
    emailOfPropClientControllerValidator =
        _emailOfPropClientControllerValidator;
    relationshipWihPropCLientControllerValidator =
        _relationshipWihPropCLientControllerValidator;
    locationOfPropClientCityControllerValidator =
        _locationOfPropClientCityControllerValidator;
    adressOfPropClientControllerValidator =
        _adressOfPropClientControllerValidator;
    phoneNumberPropClientControllerValidator =
        _phoneNumberPropClientControllerValidator;
    productServiceOfPropClientControllerValidator =
        _productServiceOfPropClientControllerValidator;
    linkedinPageOfPropClientControllerValidator =
        _linkedinPageOfPropClientControllerValidator;
    twitterPagePropClientControllerValidator =
        _twitterPagePropClientControllerValidator;
    faceBokkPropClientControllerValidator =
        _faceBokkPropClientControllerValidator;
    instagramPageOfPropClientControllerValidator =
        _instagramPageOfPropClientControllerValidator;
    youtubePagePropClientControllerValidator =
        _youtubePagePropClientControllerValidator;
    tikTokPageOfPropClientControllerValidator =
        _tikTokPageOfPropClientControllerValidator;
    descriptionAboutProspectiveClientControllerValidator =
        _descriptionAboutProspectiveClientControllerValidator;
    yourSuggestionsControllerValidator = _yourSuggestionsControllerValidator;
    countrOfPropClientControllerValidator =
        _countrOfPropClientControllerValidator;
  }

  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    textFieldFocusNode8?.dispose();
    textController8?.dispose();

    textFieldProspectiveClientFocusNode?.dispose();
    textFieldProspectiveClientController?.dispose();

    brandNamePropClientFocusNode?.dispose();
    brandNamePropClientController?.dispose();

    namePersonInChargePropClientFocusNode?.dispose();
    namePersonInChargePropClientController?.dispose();

    designationPersonInChargePropClientFocusNode?.dispose();
    designationPersonInChargePropClientController?.dispose();

    websiteOfPropClientFocusNode?.dispose();
    websiteOfPropClientController?.dispose();

    emailOfPropClientFocusNode?.dispose();
    emailOfPropClientController?.dispose();

    relationshipWihPropCLientFocusNode?.dispose();
    relationshipWihPropCLientController?.dispose();

    locationOfPropClientCityFocusNode?.dispose();
    locationOfPropClientCityController?.dispose();

    adressOfPropClientFocusNode?.dispose();
    adressOfPropClientController?.dispose();

    phoneNumberPropClientFocusNode?.dispose();
    phoneNumberPropClientController?.dispose();

    productServiceOfPropClientFocusNode?.dispose();
    productServiceOfPropClientController?.dispose();

    linkedinPageOfPropClientFocusNode?.dispose();
    linkedinPageOfPropClientController?.dispose();

    twitterPagePropClientFocusNode?.dispose();
    twitterPagePropClientController?.dispose();

    faceBokkPropClientFocusNode?.dispose();
    faceBokkPropClientController?.dispose();

    instagramPageOfPropClientFocusNode?.dispose();
    instagramPageOfPropClientController?.dispose();

    youtubePagePropClientFocusNode?.dispose();
    youtubePagePropClientController?.dispose();

    tikTokPageOfPropClientFocusNode?.dispose();
    tikTokPageOfPropClientController?.dispose();

    descriptionAboutProspectiveClientFocusNode?.dispose();
    descriptionAboutProspectiveClientController?.dispose();

    yourSuggestionsFocusNode?.dispose();
    yourSuggestionsController?.dispose();

    countrOfPropClientFocusNode?.dispose();
    countrOfPropClientController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
