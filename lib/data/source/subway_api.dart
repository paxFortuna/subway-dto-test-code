import '../model/subway_dto.dart';

abstract class SubwayApi {
  Future<SubwayDto> getList(String query);
}