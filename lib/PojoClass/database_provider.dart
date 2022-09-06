import 'dart:io';
import 'package:flutter_listview_rest/PojoClass/university_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  static Database _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database> get database async {
    // If database exists, return database
    if (_database != null) return _database;

    // If database don't exists, create one
    _database = await initDB();

    return _database;
  }

  // Create the database and the Universities table
  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'employee_manager.db');

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
          await db.execute('CREATE TABLE ('
              'id INTEGER PRIMARY KEY,'
              'name TEXT,'
              'web_pages TEXT,'

              ')');
        });
  }

  // Insert university on database
  createUniversity(University newUniversity) async {
    await deleteAllUniversitiesName();
    final db = await database;
    final res = await db.insert('University', newUniversity.toJson());

    return res;
  }

  // Delete all employees
  Future<int> deleteAllUniversitiesName() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM University');

    return res;
  }

  Future<List<University>> getAllUniversity() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM UNIVERSITY");

    List<University> list =
    res.isNotEmpty ? res.map((c) => University.fromJson(c)).toList() : [];

    return list;
  }

  getApplicationDocumentsDirectory() {}
}
