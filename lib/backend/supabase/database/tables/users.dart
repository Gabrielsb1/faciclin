import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  int get idUsuario => getField<int>('id_usuario')!;
  set idUsuario(int value) => setField<int>('id_usuario', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get senhaHash => getField<String>('senha_hash');
  set senhaHash(String? value) => setField<String>('senha_hash', value);

  String? get tipoUsuario => getField<String>('tipo_usuario');
  set tipoUsuario(String? value) => setField<String>('tipo_usuario', value);
}
