import '../resources/floss_list.dart';
import 'package:rxdart/rxdart.dart';
import '../models/floss_model.dart';

class FlossBloc {
  final _flossList = FlossList();
  final _flossFetcher = PublishSubject<Floss>();

  Observable<Floss> get allFloss => _flossFetcher.stream;

  fetchFlossList() async {
    Floss flossModel = await _flossList.fetchFlossList();
    _flossFetcher.sink.add(flossModel);
  }

  dispose() {
    _flossFetcher.close();
  }

  void addFlossToCart(index) async {
    Floss flossList = await _flossList.fetchFlossList();
    flossList.floss[index].inCart = true;
  }
}

final bloc = FlossBloc();