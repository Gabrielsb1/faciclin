import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/request_manager.dart';

import 'home_widget.dart' show HomeWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for NavMenu component.
  late NavMenuModel navMenuModel;

  /// Query cache managers for this widget.

  final _nomeDosPacientesManager = FutureRequestManager<List<PacientesRow>>();
  Future<List<PacientesRow>> nomeDosPacientes({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<PacientesRow>> Function() requestFn,
  }) =>
      _nomeDosPacientesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearNomeDosPacientesCache() => _nomeDosPacientesManager.clear();
  void clearNomeDosPacientesCacheKey(String? uniqueKey) =>
      _nomeDosPacientesManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navMenuModel.dispose();

    /// Dispose query cache managers for this widget.

    clearNomeDosPacientesCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
