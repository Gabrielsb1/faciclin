import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/request_manager.dart';

import 'menu_paciente_widget.dart' show MenuPacienteWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuPacienteModel extends FlutterFlowModel<MenuPacienteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Query cache managers for this widget.

  final _menuPacienteManager = FutureRequestManager<List<UsuariosRow>>();
  Future<List<UsuariosRow>> menuPaciente({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UsuariosRow>> Function() requestFn,
  }) =>
      _menuPacienteManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMenuPacienteCache() => _menuPacienteManager.clear();
  void clearMenuPacienteCacheKey(String? uniqueKey) =>
      _menuPacienteManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();

    /// Dispose query cache managers for this widget.

    clearMenuPacienteCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
