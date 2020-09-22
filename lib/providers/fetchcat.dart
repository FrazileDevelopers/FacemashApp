import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:Facemash/constants/facemash.dart';
import 'package:Facemash/services/connectionStatus.dart';
import 'package:Facemash/services/response.dart';

class Fetchcat with ChangeNotifier {
  Fetchcat();
  bool _isfetching = false;

  bool get isfetching => _isfetching;

  // List<Category> wallsData;
  ConnectionStatus _connection = ConnectionStatus.getInstance();
  List<Category> walls = List<Category>();
  Future<List<Category>> fetchData() async {
    _isfetching = true;
    String jsonresponse = '';
    notifyListeners();
    await _connection.checkConnection();
    if (_connection.hasConnection) {
      var res = await http.get(Facemash.url);
      if (res.statusCode == 200) {
        jsonresponse = res.body;
      } else {
        jsonresponse = 'No';
      }
      _isfetching = false;
      notifyListeners();

      if (jsonresponse.isNotEmpty) {
        var decodedRes = jsonDecode(res.body);
        walls = FacemashAPI.fromJson(decodedRes).categories;
      }
      return walls;
    }
  }

  List<Category> getWalls() => walls;
}
