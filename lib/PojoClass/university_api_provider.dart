
import 'package:dio/dio.dart';
import 'package:flutter_listview_rest/PojoClass/university_model.dart';
import 'database_provider.dart';
class UniversityApiProvider {
  Future<List<University>> getAllUniversity() async {
    var url = "http://universities.hipolabs.com/search?country=India";
    Response response = await Dio().get(url);


    return (response.data as List).map((university) {
      print('Inserting $university');
      DBProvider.db.createUniversity(University.fromJson(university));
    }).toList();
  }
}