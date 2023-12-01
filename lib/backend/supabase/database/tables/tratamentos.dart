import '../database.dart';

class TratamentosTable extends SupabaseTable<TratamentosRow> {
  @override
  String get tableName => 'Tratamentos';

  @override
  TratamentosRow createRow(Map<String, dynamic> data) => TratamentosRow(data);
}

class TratamentosRow extends SupabaseDataRow {
  TratamentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TratamentosTable();

  int get idTratamento => getField<int>('id_tratamento')!;
  set idTratamento(int value) => setField<int>('id_tratamento', value);

  DateTime? get dataTratamento => getField<DateTime>('data_tratamento');
  set dataTratamento(DateTime? value) =>
      setField<DateTime>('data_tratamento', value);

  int? get idPaciente => getField<int>('id_paciente');
  set idPaciente(int? value) => setField<int>('id_paciente', value);

  int? get idDentista => getField<int>('id_dentista');
  set idDentista(int? value) => setField<int>('id_dentista', value);
}
