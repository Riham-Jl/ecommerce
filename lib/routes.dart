import 'package:get/get.dart';
import 'package:project_ecommerce/view/screen/address/addressadddetails.dart';
import 'package:project_ecommerce/view/screen/address/addressaddmap.dart';
import 'package:project_ecommerce/view/screen/address/addressview.dart';
import 'package:project_ecommerce/view/screen/auth/checkemail.dart';
import 'package:project_ecommerce/view/screen/auth/login.dart';
import 'package:project_ecommerce/view/screen/auth/resetpassword.dart';
import 'package:project_ecommerce/view/screen/auth/success.dart';
import 'package:project_ecommerce/view/screen/auth/verifycode.dart';
import 'package:project_ecommerce/view/screen/cart.dart';
import 'package:project_ecommerce/view/screen/checkout.dart';
import 'package:project_ecommerce/view/screen/favorites.dart';
import 'package:project_ecommerce/view/screen/home.dart';
import 'package:project_ecommerce/view/screen/homescreen.dart';
import 'package:project_ecommerce/view/screen/items.dart';
import 'package:project_ecommerce/view/screen/itemsdetails.dart';
import 'package:project_ecommerce/view/screen/language.dart';
import 'package:project_ecommerce/view/screen/onboarding.dart';
import 'package:project_ecommerce/view/screen/orders/archivedorders.dart';
import 'package:project_ecommerce/view/screen/orders/myorders.dart';
import 'package:project_ecommerce/view/screen/orders/ordersdetails.dart';
import 'package:project_ecommerce/view/screen/settings.dart';
import 'core/constant/routes.dart';
import 'core/middleware/mymiddleware.dart';
import 'view/screen/auth/signup.dart';

List<GetPage<dynamic>>? routes = [
//on boarding
  //GetPage(name: "/", page: () => const TestPage()),
  GetPage(name: "/", page: () => const Language() , middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.onboarding, page: () => const OnBoarding()),
  GetPage(name: AppRoute.language, page: () => const Language()),


//  Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signup, page:() => const SignUp() ),
  GetPage(name: AppRoute.checkemail, page: () => const CheckEmail()),
  GetPage(name: AppRoute.verifycode, page:() => const VerifyCode() ),
  GetPage(name: AppRoute.resetpassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.success, page:() => const SuccessAuth() ),

//
    GetPage(name:AppRoute.homescreen , page: ()=> const HomeScreen()),
    GetPage(name:AppRoute.settings , page: ()=> const SettingsPage()),

    GetPage(name: AppRoute.home, page:() => const HomePage() ),
    GetPage(name:AppRoute.items , page: ()=> const ItemsPage()),
    GetPage(name: AppRoute.itemsdetails, page: ()=> const ItemsDetails()),
    GetPage(name: AppRoute.favorites, page: ()=> const FavoritesPage()),
    GetPage(name: AppRoute.cart, page: ()=> const CartPage() ),
    GetPage(name: AppRoute.checkout, page: ()=> const CheckOut() ),

    GetPage(name: AppRoute.myorders, page: ()=> const MyOrdersPage() ),
    GetPage(name: AppRoute.archivedorders, page: ()=> const ArchivedOrders() ),
    GetPage(name: AppRoute.orderdetails, page: ()=> const OrdersDetails() ),


//address:
    GetPage(name: AppRoute.addressview, page: ()=> const AddressView() ),
    GetPage(name: AppRoute.addressaddmap, page: ()=> const AddressAddMap() ),
    GetPage(name: AppRoute.addressadddetails, page: ()=> const AddressAddDetails() ),





];
