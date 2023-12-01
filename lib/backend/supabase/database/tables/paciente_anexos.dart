import '../database.dart';

class PacienteAnexosTable extends SupabaseTable<PacienteAnexosRow> {
  @override
  String get tableName => 'PacienteAnexos';

  @override
  PacienteAnexosRow createRow(Map<String, dynamic> data) =>
      PacienteAnexosRow(data);
}

class PacienteAnexosRow extends SupabaseDataRow {
  PacienteAnexosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PacienteAnexosTable();

  int get idPacienteAnexo => getField<int>('id_paciente_anexo')!;
  set idPacienteAnexo(int value) => setField<int>('id_paciente_anexo', value);

  int? get idPaciente => getField<int>('id_paciente');
  set idPaciente(int? value) => setField<int>('id_paciente', value);

  int? get idAnexo => getField<int>('id_anexo');
  set idAnexo(int? value) => setField<int>('id_anexo', value);
}
