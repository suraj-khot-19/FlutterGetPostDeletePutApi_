import 'package:api/model/user.dart';
import 'package:api/resources/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:api/resources/base_api.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("My Rest Api"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyButton(
                title: "Get",
                subtitle: "Fetch User",
                btnColor: Colors.red,
                onTapFun: () async {
                  var response = await BaseAPI().get().catchError((err) {});
                  if (response == null) {
                    print("error in put");
                  } else {
                    print("get Successful...");
                  }
                  var user = userFromJson(response).length;
                  print("user length:" + user.toString());
                },
              ),
              MyButton(
                title: "Post",
                subtitle: "Add User",
                btnColor: Colors.purple,
                onTapFun: () async {
                  var user = {
                    'name': 'suraj',
                    'education': 'BCA',
                    'age': 23,
                  };
                  var response =
                      await BaseAPI().post(user).catchError((err) {});
                  if (response == null) {
                    print("error in post");
                  } else {
                    print("post Successful...");
                  }
                },
              ),
              MyButton(
                title: "Put",
                subtitle: "Edit User",
                btnColor: Colors.blue,
                onTapFun: () async {
                  String id = "1";
                  var user = {'name': 'suraj', 'education': 'BCA', 'age': 23};
                  var response =
                      await BaseAPI().put(id, user).catchError((err) {});
                  if (response == null) {
                    print("error in put");
                  } else {
                    print("put Successful...");
                  }
                },
              ),
              MyButton(
                title: "Delete",
                subtitle: "Delete User",
                btnColor: Colors.cyan,
                onTapFun: () async {
                  String id = "7";
                  var response =
                      await BaseAPI().delete(id).catchError((err) {});
                  if (response == null) {
                    print("error in delete");
                  } else {
                    print("delete Successful...");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
