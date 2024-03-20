import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB {
  // construto com acesso privado
  DB._();

  // Criando uma instancia
  static final DB instance = DB._();

  //Instacia do SQlite
  get database async {
    if (database != null) return database;
    return await _iniDatabase();
  }
}

_iniDatabase() async {
  return await openDatabase(
    join(await getDatabasesPath(), 'facebookClone.db'),
    version: 1,
    onCreate: _onCreate,
  );
}

_onCreate(db, versao) async {
  await db.execute(_nome);
  await db.execute(_fotoPerfil);
  await db.execute(_imgPostagem);
  await db.execute(_textoPostagem);
}

String get _nome =>
    ''' CREATE TABLE nome ( id INTEGER PRIMARY KEY AUTOINCREMENTE, nome Usuario ); ''';
String get _fotoPerfil =>
    ''' CREATE TABLE fotoPerfil ( fotoPerfil INTEGER PRIMARY KEY AUTOINCREMENTE, Foto Perfil ); ''';
String get _imgPostagem =>
    ''' CREATE TABLE imagem ( imgPostagem INTEGER PRIMARY KEY AUTOINCREMENTE, ImG Perfil ); ''';
String get _textoPostagem =>
    ''' CREATE TABLE nome ( textoPostagem INTEGER PRIMARY KEY AUTOINCREMENTE, texto Postagem ); ''';
