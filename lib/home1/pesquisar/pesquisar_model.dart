import '/backend/supabase/supabase.dart';
import '/components/nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'pesquisar_widget.dart' show PesquisarWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PesquisarModel extends FlutterFlowModel<PesquisarWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NavMenu component.
  late NavMenuModel navMenuModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
  }

  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
