import 'package:bloc/bloc.dart';
import 'package:shopping_app/HomeScreen/HomePage.dart';
import 'package:shopping_app/MyAccountScreen/MyAccountScreen.dart';
import 'package:shopping_app/MyOrdersScreen/MyOrdersScreen.dart';
import 'package:shopping_app/MyWishListScreen/MyWishScreen.dart';
import 'package:shopping_app/SettingScreen/SettingsScreen.dart';

enum NavigationEvents {
  HomeClickEvent,
  MyAccountClickEvent,
  MyOrdersClickEvent,
  MyFavoritesClickEvent,
  SettingsClickEvent,
  LogoutClickEvent,
}

abstract class NavigationState {}

class NavigationsBlocks extends Bloc<NavigationEvents, NavigationState> {
  @override
  NavigationState get initialState => const HomePage(title: 'Home');

  @override
  Stream<NavigationState> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomeClickEvent:
        yield const HomePage(
          title: 'Home',
        );
        break;
      case NavigationEvents.MyAccountClickEvent:
        yield const MyAccountScreen(
          title: 'My Account',
        );
        break;
      case NavigationEvents.MyOrdersClickEvent:
        yield const MyOrdersScreen(
          title: 'My Orders',
        );
        break;
      case NavigationEvents.MyFavoritesClickEvent:
        yield const MyWishScreen(
          title: 'My WishList',
        );
        break;
      case NavigationEvents.SettingsClickEvent:
        yield const SettingsScreen(
          title: 'Settings',
        );
        break;
      case NavigationEvents.LogoutClickEvent:
        break;
    }
  }
}
