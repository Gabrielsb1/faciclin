import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
  }

  void dispose() {
    navMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
