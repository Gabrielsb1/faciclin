import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vew_anamnese_model.dart';
export 'vew_anamnese_model.dart';

class VewAnamneseWidget extends StatefulWidget {
  const VewAnamneseWidget({
    Key? key,
    this.paciente,
    required this.anamnese,
  }) : super(key: key);

  final PacientesRow? paciente;
  final AnamnesesRow? anamnese;

  @override
  _VewAnamneseWidgetState createState() => _VewAnamneseWidgetState();
}

class _VewAnamneseWidgetState extends State<VewAnamneseWidget> {
  late VewAnamneseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VewAnamneseModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 32.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 7.0,
              color: Color(0x2F1D2429),
              offset: Offset(0.0, 3.0),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Anamnese',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 20.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget.paciente?.nome,
                              'nomepaciente',
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            valueOrDefault<String>(
                              'Data Nasc: ${valueOrDefault<String>(
                                dateTimeFormat('dd/MM/yyyy',
                                    widget.paciente?.dataNascimento),
                                '00/00/0000',
                              )}',
                              '00/00/0000',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 12.0,
                                ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: Color(0xCCE0E0E0),
                          ),
                          Text(
                            valueOrDefault<String>(
                              'Data: ${valueOrDefault<String>(
                                dateTimeFormat(
                                    'dd/MM/yyyy', widget.anamnese?.dataField),
                                '00/00/0000',
                              )}',
                              '00/00/0000',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 12.0,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.anamnese?.nomeModelo,
                              'nome_modelo',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 12.0,
                                ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: Color(0xCCE0E0E0),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.anamnese?.anamnese,
                              'anamnese',
                            ),
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 12.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: 8.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.cancel_sharp,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: 8.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.print,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
