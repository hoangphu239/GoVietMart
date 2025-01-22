import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/utils/extensions.dart';

class MenuModel {
  int id;
  String name;
  bool isShowToggle;

  MenuModel({
    required this.id,
    required this.name,
    required this.isShowToggle,
  });
}

List<MenuModel> getMenus() {
  return [
    MenuModel(id: 1, name: Languages.enableFaceID, isShowToggle: true),
    MenuModel(id: 2, name: Languages.historyCheckIn, isShowToggle: false),
    MenuModel(id: 3, name: Languages.myOrders, isShowToggle: false),
    MenuModel(id: 4, name: Languages.myPromotion, isShowToggle: false),
    MenuModel(id: 5, name: Languages.myFollowed, isShowToggle: false),
    MenuModel(id: 6, name: Languages.setting, isShowToggle: false),
    MenuModel(id: 7, name: Languages.termConditions, isShowToggle: false),
    MenuModel(id: 8, name: Languages.logOut, isShowToggle: false)
  ];
}