import 'package:connectivity_plus/connectivity_plus.dart';
export 'package:connectivity_plus/connectivity_plus.dart';

///Информация о состоянии соединения
abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl({required this.connectivity});

  final Connectivity connectivity;

  @override
  Future<bool> get isConnected async {
    final result = await connectivity.checkConnectivity();
    return (!result.contains(ConnectivityResult.none));
  }
}
