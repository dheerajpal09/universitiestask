import 'package:flutter/material.dart';
import 'package:unilisttask/models/data_model.dart';
import 'package:unilisttask/services/data_service.dart';

class DataClass extends ChangeNotifier {
  DataModel? post;
  bool loading = false;

  getPostData() async {
    loading = true;
    post = (await getSinglePostData())!;
    loading = false;

    notifyListeners();
  }
}
