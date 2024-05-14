import 'package:mobx/mobx.dart';

part 'network_store.g.dart';

enum NetworkState { idle, loading, success, error }

class NetworkStore = _NetworkStore with _$NetworkStore;

abstract class _NetworkStore with Store {
  @observable
  NetworkState state = NetworkState.idle;

  @observable
  String? error;
}
