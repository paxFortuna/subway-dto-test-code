import 'package:flutter/foundation.dart';

import '../data/model/subway.dart';
import '../data/repository/subway_repository.dart';
import '../data/source/subway_api_imple.dart';

class SubwayScreenViewModel extends ChangeNotifier {
  final _subwayRepository = SubwayRepository(SubwayApiImpl());

  List<Subway> arrivalList = [];

  void fetchArrivalLists(String query) async {
    arrivalList = await _subwayRepository.getList(query);
    notifyListeners();
  }
}