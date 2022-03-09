import 'package:flutter_mobx_vexana_wekeend/feature/model/football_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vexana/vexana.dart';

void main() {
  INetworkManager? networkManager;
  setUp(() {
    const String baseUrl = 'https://myfakeapi.com/api/football';
    networkManager = NetworkManager(
        isEnableLogger: true, options: BaseOptions(baseUrl: baseUrl));
  });
  test('test', () async {
    final response = await networkManager?.send<FootballModel, FootballModel>(
        '',
        parseModel: FootballModel(),
        method: RequestType.GET);

    expect(response, isNotNull);
  });
}
