import '../database.dart';

class AnamnesesTable extends SupabaseTable<AnamnesesRow> {
  @override
  String get tableName => 'anamneses';

  @override
  AnamnesesRow createRow(Map<String, dynamic> data) => AnamnesesRow(data);
}

class AnamnesesRow extends SupabaseDataRow {
  AnamnesesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AnamnesesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idModelo => getField<int>('idModelo');
  set idModelo(int? value) => setField<int>('idModelo', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  int? get idPaciente => getField<int>('idPaciente');
  set idPaciente(int? value) => setField<int>('idPaciente', value);

  String? get anamnese => getField<String>('anamnese');
  set anamnese(String? value) => setField<String>('anamnese', value);

  String? get nomeModelo => getField<String>('nome_modelo');
  set nomeModelo(String? value) => setField<String>('nome_modelo', value);
}
