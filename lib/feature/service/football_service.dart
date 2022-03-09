import 'package:vexana/vexana.dart';

import '../model/football_model.dart';

abstract class IFootballService {
  late INetworkManager networkManager;
  IFootballService(
    this.networkManager,
  );

  Future<FootballModel?> fetchData();
}

class FootballService extends IFootballService {
  FootballService({required INetworkManager networkManager})
      : super(networkManager);

  @override
  Future<FootballModel?> fetchData() async {
    final response = await networkManager.send<FootballModel, FootballModel>(
        'https://myfakeapi.com/api/football',
        parseModel: FootballModel(),
        method: RequestType.GET);

    return response.data;
  }
}
