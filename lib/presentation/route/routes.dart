import 'package:flutter/cupertino.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/presentation/screen/cart/stepper/cart_stepper/cart_stepper_screen.dart';
import 'package:hunty/presentation/screen/cart/stepper/complete_stepper/complete_stepper_screen.dart';
import 'package:hunty/presentation/screen/cart/stepper/delivery_stepper/delivery_stepper_screen.dart';
import 'package:hunty/presentation/screen/cart/stepper/payment_stepper/payment_stepper_screen.dart';
import 'package:hunty/presentation/screen/dashboard/dashboard_screen.dart';
import 'package:hunty/presentation/screen/details_product/details_product_screen.dart';
import 'package:hunty/presentation/screen/details_promotion/details_promotion_screen.dart';
import 'package:hunty/presentation/screen/login/login_screen.dart';
import 'package:hunty/presentation/screen/recommend_promotion/recommend_promotion_screen.dart';
import 'package:hunty/presentation/screen/recovery_password/recovery_password_screen.dart';
import 'package:hunty/presentation/screen/search/search_screen.dart';
import 'package:hunty/presentation/screen/signup/signup_screen.dart';
import 'package:hunty/presentation/screen/verify_otp/verify_otp_screen.dart';
import 'package:hunty/presentation/screen/welcome/welcome_screen.dart';

class Routes{
  static Map<String, WidgetBuilder> getRoutes(RouteSettings settings) => {
    RouteList.initial: (context) => const WelcomeScreen(),
    RouteList.login: (context) => const LoginScreen(),
    RouteList.signup: (context) => const SignUpScreen(),
    RouteList.recoveryPassword: (context) => const RecoveryPasswordScreen(),
    RouteList.verifyOtp: (context) => const VerifyOTPScreen(),
    RouteList.dashboard: (context) => const DashboardScreen(),
    RouteList.search: (context) => const SearchScreen(),
    RouteList.recommendPromotion: (context) => const RecommendPromotionScreen(),
    RouteList.detailsPromotion: (context) => const DetailsPromotionScreen(),
    RouteList.cartStepper: (context) => const CartStepperScreen(),
    RouteList.deliveryStepper: (context) => const DeliveryStepperScreen(),
    RouteList.paymentStepper: (context) => const PaymentStepperScreen(),
    RouteList.completeStepper: (context) => const CompleteStepperScreen(),
    RouteList.detailsProduct: (context) => const DetailsProductScreen(),
  };
}