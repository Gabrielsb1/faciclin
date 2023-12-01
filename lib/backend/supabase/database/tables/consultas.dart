import '../database.dart';

class ConsultasTable extends SupabaseTable<ConsultasRow> {
  @override
  String get tableName => 'Consultas';

  @override
  ConsultasRow createRow(Map<String, dynamic> data) => ConsultasRow(data);
}

class ConsultasRow extends SupabaseDataRow {
  ConsultasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConsultasTable();

  int get idConsulta => getField<int>('id_consulta')!;
  set idConsulta(int value) => setField<int>('id_consulta', value);

  int? get idPaciente => getField<int>('id_paciente');
  set idPaciente(int? value) => setField<int>('id_paciente', value);

  DateTime? get dataConsulta => getField<DateTime>('data_consulta');
  set dataConsulta(DateTime? value) =>
      setField<DateTime>('data_consulta', value);

  String? get especialidade => getField<String>('especialidade');
  set especialidade(String? value) => setField<String>('especialidade', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);
}
