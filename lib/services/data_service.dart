import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:unilisttask/models/data_model.dart';

Future<DataModel?> getSinglePostData() async {
  var url = Uri.parse(
      "http://universities.hipolabs.com/search?country=United+states");
  log('$url');
  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return DataModel.fromJson(jsonDecode(response.body)[0]);
    }
  } catch (Exception) {
    print(Exception);
    print("Error occured");
  }
  return null;
}
