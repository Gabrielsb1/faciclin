import '../database.dart';

class ModelosEvolucaoTable extends SupabaseTable<ModelosEvolucaoRow> {
  @override
  String get tableName => 'modelos_evolucao';

  @override
  ModelosEvolucaoRow createRow(Map<String, dynamic> data) =>
      ModelosEvolucaoRow(data);
}

class ModelosEvolucaoRow extends SupabaseDataRow {
  ModelosEvolucaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ModelosEvolucaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeModelo => getField<String>('nome_modelo');
  set nomeModelo(String? value) => setField<String>('nome_modelo', value);

  String? get modelo => getField<String>('modelo');
  set modelo(String? value) => setField<String>('modelo', value);
}
