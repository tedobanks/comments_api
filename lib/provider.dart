import 'package:comments_api/model.dart';
import 'package:comments_api/remote_service.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  bool isLoaded = false;

  List<Comments>? comments;

  getData() async {
    comments = await RemoteService().getComments();

    if (comments != null) {
      isLoaded = true;
    }
    notifyListeners();
  }

  void initialize() async {
    getData();
  }
}
