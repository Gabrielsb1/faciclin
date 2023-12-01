import '../database.dart';

class DentistasTable extends SupabaseTable<DentistasRow> {
  @override
  String get tableName => 'Dentistas';

  @override
  DentistasRow createRow(Map<String, dynamic> data) => DentistasRow(data);
}

class DentistasRow extends SupabaseDataRow {
  DentistasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DentistasTable();

  int get idDentista => getField<int>('id_dentista')!;
  set idDentista(int value) => setField<int>('id_dentista', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get especialidade => getField<String>('especialidade');
  set especialidade(String? value) => setField<String>('especialidade', value);
}
