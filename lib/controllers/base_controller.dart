import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BaseController extends GetxController implements GetxService {
  Future showAlert(BuildContext context, String title, String content) {
    return showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
                title: Text(title),
                content: Text(content),
                actions: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: const Text("Ok"),
                  )
                ]));
  }
}
