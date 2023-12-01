import '../database.dart';

class ProcedimentosTable extends SupabaseTable<ProcedimentosRow> {
  @override
  String get tableName => 'Procedimentos';

  @override
  ProcedimentosRow createRow(Map<String, dynamic> data) =>
      ProcedimentosRow(data);
}

class ProcedimentosRow extends SupabaseDataRow {
  ProcedimentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProcedimentosTable();

  int get idProcedimento => getField<int>('id_procedimento')!;
  set idProcedimento(int value) => setField<int>('id_procedimento', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get idPaciente => getField<int>('id_paciente');
  set idPaciente(int? value) => setField<int>('id_paciente', value);

  int? get idDentista => getField<int>('id_dentista');
  set idDentista(int? value) => setField<int>('id_dentista', value);
}
