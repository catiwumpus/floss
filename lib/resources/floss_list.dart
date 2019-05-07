import 'dart:async';
import 'floss_api_provider.dart';
import '../models/floss_model.dart';

class FlossList {
  final flossApiProvider = FlossApiProvider();
  Future<Floss> fetchFlossList() =>
    flossApiProvider.fetchFlossList();
}