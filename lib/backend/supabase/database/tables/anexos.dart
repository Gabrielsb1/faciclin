import '../database.dart';

class AnexosTable extends SupabaseTable<AnexosRow> {
  @override
  String get tableName => 'Anexos';

  @override
  AnexosRow createRow(Map<String, dynamic> data) => AnexosRow(data);
}

class AnexosRow extends SupabaseDataRow {
  AnexosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AnexosTable();

  int get idAnexo => getField<int>('id_anexo')!;
  set idAnexo(int value) => setField<int>('id_anexo', value);

  String? get nomeArquivo => getField<String>('nome_arquivo');
  set nomeArquivo(String? value) => setField<String>('nome_arquivo', value);

  DateTime? get dataUpload => getField<DateTime>('data_upload');
  set dataUpload(DateTime? value) => setField<DateTime>('data_upload', value);

  int? get idPaciente => getField<int>('id_paciente');
  set idPaciente(int? value) => setField<int>('id_paciente', value);

  String? get anexo => getField<String>('anexo');
  set anexo(String? value) => setField<String>('anexo', value);
}
