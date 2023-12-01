import '../database.dart';

class HistoricoMedicoTable extends SupabaseTable<HistoricoMedicoRow> {
  @override
  String get tableName => 'HistoricoMedico';

  @override
  HistoricoMedicoRow createRow(Map<String, dynamic> data) =>
      HistoricoMedicoRow(data);
}

class HistoricoMedicoRow extends SupabaseDataRow {
  HistoricoMedicoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HistoricoMedicoTable();

  int get idHistorico => getField<int>('id_historico')!;
  set idHistorico(int value) => setField<int>('id_historico', value);

  int? get idPaciente => getField<int>('id_paciente');
  set idPaciente(int? value) => setField<int>('id_paciente', value);

  String? get condicao => getField<String>('condicao');
  set condicao(String? value) => setField<String>('condicao', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);
}
