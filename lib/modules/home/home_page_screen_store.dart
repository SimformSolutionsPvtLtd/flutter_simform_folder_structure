import 'package:mobx/mobx.dart';

part 'home_page_screen_store.g.dart';

class HomePageScreenStore = _HomePageScreenStore with _$HomePageScreenStore;

abstract class _HomePageScreenStore with Store {
  @observable
  int counter = 0;
}
