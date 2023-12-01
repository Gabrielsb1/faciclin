import '../database.dart';

class TermosConsentimentoTable extends SupabaseTable<TermosConsentimentoRow> {
  @override
  String get tableName => 'TermosConsentimento';

  @override
  TermosConsentimentoRow createRow(Map<String, dynamic> data) =>
      TermosConsentimentoRow(data);
}

class TermosConsentimentoRow extends SupabaseDataRow {
  TermosConsentimentoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TermosConsentimentoTable();

  int get idTermo => getField<int>('id_termo')!;
  set idTermo(int value) => setField<int>('id_termo', value);

  int? get idPaciente => getField<int>('id_paciente');
  set idPaciente(int? value) => setField<int>('id_paciente', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  DateTime? get dataConsentimento => getField<DateTime>('data_consentimento');
  set dataConsentimento(DateTime? value) =>
      setField<DateTime>('data_consentimento', value);
}
