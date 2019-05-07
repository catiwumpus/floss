import 'dart:async';
import '../models/floss_model.dart';
import '../resources/floss_data.dart';

class FlossApiProvider {
    Future<Floss> fetchFlossList() async {
        return Floss.fromJson(flossData);
    }
}