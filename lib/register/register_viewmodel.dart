import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterViewmodel extends BaseViewModel{
  final navigationService = locator<NavigationService>();
  void navigate() {
    navigationService.navigateTo(Routes.loginView);
  }
  nav (){
    navigationService.navigateTo(Routes.homeView);
  }
}