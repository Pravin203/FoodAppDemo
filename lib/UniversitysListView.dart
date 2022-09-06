import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class University {

  final String name;
  final String web_pages;

  University({  this.name, this.web_pages });

  factory University.fromJson(Map<String, dynamic> json) {
    return University(

      name: json['name'],
      web_pages: json['web_pages'][0],

    );
  }
}

class JobsListView extends StatelessWidget {
  bool isLikeButtonClicked=false;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<University>>(

      future: _fetchJobs(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<University>  data = snapshot.data;
          return _jobsListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  Future<List<University>> _fetchJobs() async {


    final jobsListAPIUrl  = 'http://universities.hipolabs.com/search?country=India';
    final response = await http.get(jobsListAPIUrl);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => new University.fromJson(job)).toList();
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }

  ListView _jobsListView(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _tile(data[index].name, data[index].web_pages , Icons.work);
        });
  }

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
    title: Text(title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle),
    trailing: IconButton(
      icon: const  Icon(Icons.favorite),color: (isLikeButtonClicked==false) ? Colors.grey : Colors.red,
   onPressed:() {

          isLikeButtonClicked = !isLikeButtonClicked;


   }),
  );
}