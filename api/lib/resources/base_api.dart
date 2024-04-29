import 'dart:convert';
import 'package:http/http.dart' as http;

var baseUrl = "https://662dedc1a7dda1fa378b9313.mockapi.io/users/users/";

class BaseAPI {
  var client = http.Client();
  Future<dynamic> get() async {
    var _headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };
    var myUrl = Uri.parse(baseUrl);
    final response = await client.get(myUrl, headers: _headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return print("error in base api file");
    }
  }

  Future<dynamic> post(dynamic postValue) async {
    var _headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'api_key': 'ief873fj38uf38uf83u839898989',
      'Content-Type':
          'application/json' //we must tell flutter that our post value type otherwise it will return autogrenerated values
    };
    var myUrl = Uri.parse(baseUrl);
    var _postThisValue = json.encode(postValue);
    final response =
        await client.post(myUrl, body: _postThisValue, headers: _headers);
    if (response.statusCode == 201) {
      return response.body;
    } else {
      return print("error in base api file");
    }
  }

  Future<dynamic> put(String id, dynamic putValue) async {
    var _putThisValue = json.encode(putValue);
    var _headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'api_key': 'ief873fj38uf38uf83u839898989',
      'Content-Type': 'application/json'
    };
    var myUrl = Uri.parse(baseUrl + id);
    final response =
        await client.put(myUrl, body: _putThisValue, headers: _headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return print("error in base api file");
    }
  }

  Future<dynamic> delete(String id) async {
    var _headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'api_key': 'ief873fj38uf38uf83u839898989',
      'Content-Type': 'application/json'
    };
    var myUrl = Uri.parse(baseUrl + id);
    final response = await client.delete(myUrl, headers: _headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return print("error in base api file");
    }
  }
}
