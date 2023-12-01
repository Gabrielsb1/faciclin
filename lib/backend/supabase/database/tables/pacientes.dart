import '../database.dart';

class PacientesTable extends SupabaseTable<PacientesRow> {
  @override
  String get tableName => 'Pacientes';

  @override
  PacientesRow createRow(Map<String, dynamic> data) => PacientesRow(data);
}

class PacientesRow extends SupabaseDataRow {
  PacientesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PacientesTable();

  int get idPaciente => getField<int>('id_paciente')!;
  set idPaciente(int value) => setField<int>('id_paciente', value);

  String? get nome => getField<String>('Nome');
  set nome(String? value) => setField<String>('Nome', value);

  DateTime? get dataNascimento => getField<DateTime>('DataNascimento');
  set dataNascimento(DateTime? value) =>
      setField<DateTime>('DataNascimento', value);

  String? get genero => getField<String>('Genero');
  set genero(String? value) => setField<String>('Genero', value);

  String? get email => getField<String>('Email');
  set email(String? value) => setField<String>('Email', value);

  String? get telefone => getField<String>('Telefone');
  set telefone(String? value) => setField<String>('Telefone', value);

  String? get endereco => getField<String>('Endereco');
  set endereco(String? value) => setField<String>('Endereco', value);

  String? get cidade => getField<String>('Cidade');
  set cidade(String? value) => setField<String>('Cidade', value);

  String? get estado => getField<String>('Estado');
  set estado(String? value) => setField<String>('Estado', value);

  String? get cep => getField<String>('CEP');
  set cep(String? value) => setField<String>('CEP', value);

  int? get idDentista => getField<int>('id_dentista');
  set idDentista(int? value) => setField<int>('id_dentista', value);

  String? get ufNascimento => getField<String>('Uf_nascimento');
  set ufNascimento(String? value) => setField<String>('Uf_nascimento', value);

  String? get localNasc => getField<String>('Local_Nasc');
  set localNasc(String? value) => setField<String>('Local_Nasc', value);

  String? get bairro => getField<String>('Bairro');
  set bairro(String? value) => setField<String>('Bairro', value);

  int? get endNumero => getField<int>('End_numero');
  set endNumero(int? value) => setField<int>('End_numero', value);

  String? get estadoCivil => getField<String>('Estado_civil');
  set estadoCivil(String? value) => setField<String>('Estado_civil', value);
}
