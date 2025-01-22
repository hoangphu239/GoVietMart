import 'package:hunty/domain/entities/language_entity.dart';

class Languages {
  const Languages._();
  static const languages = [
    LanguageEntity(code: "vi", value: "Vietnamese"),
    LanguageEntity(code: "en", value: "English"),
  ];
  static const String appName = 'Hunty';

  // Welcome Screen
  static const String welcomeTextFirst = 'welcomeTextFirst';
  static const String welcomeTextSecond = 'welcomeTextSecond';
  static const String welcomeTextThird = 'welcomeTextThird';
  static const String welcomeSkipButton = 'welcomeSkipButton';
  static const String welcomeDoneButton = 'welcomeDoneButton';

  // Login Screen
  static const String loginTitle = 'loginTitle';
  static const String loginSubTitle = 'loginSubTitle';
  static const String loginHintEnterAccount = 'loginHintEnterAccount';
  static const String loginHintEnterPassword = 'loginHintEnterPassword';
  static const String loginForgotPassword = 'loginForgotPassword';
  static const String loginButton = 'loginButton';
  static const String loginFaceIdButton = 'loginFaceIdButton';
  static const String loginWithSocial = 'loginWithSocial';
  static const String loginGoogleButton = 'loginGoogleButton';
  static const String loginFacebookButton = 'loginFacebookButton';
  static const String loginNotHaveAccountYet  = 'loginNotHaveAccountYet';
  static const String loginSignupButton = 'loginSignupButton';
  static const String loginLanguageButton = 'loginLanguageButton';
  static const String loginAccountSuccess = 'loginAccountSuccess';
  static const String loginFacebookSuccess = 'loginFacebookSuccess';
  static const String loginGoogleSuccess = 'loginGoogleSuccess';
  static const String loginFaceIdSuccess = 'loginFaceIdSuccess';

  // SignUp Screen
  static const String signUpTitle = 'signUpTitle';
  static const String signUpSubTitle = 'signUpSubTitle';
  static const String signUpFirstName = 'signUpFirstName';
  static const String signUpLastName = 'signUpLastName';
  static const String signUpEmail = 'signUpEmail';
  static const String signUpPassword = 'signUpPassword';
  static const String signUpRetypePassword = 'signUpRetypePassword';
  static const String signUpTelephone = 'signUpTelephone';
  static const String signUpGender = 'signUpGender';
  static const String signUpMale = 'signUpMale';
  static const String signUpFemale = 'signUpFemale';
  static const String signUpBirthday = 'signUpBirthday';
  static const String signUpSubmitButton = 'signUpSubmitButton';
  static const String signUpAccountAccess = 'signUpAccountAccess';

  // Recovery Password Screen
  static const String recoveryPasswordTitle = 'recoveryPasswordTitle';
  static const String recoveryPasswordSubTitle = 'recoveryPasswordSubTitle';
  static const String recoveryPasswordPhoneOrEmail = 'recoveryPasswordPhoneOrEmail';
  static const String recoveryPasswordSubmitButton = 'recoveryPasswordSubmitButton';

  // Verify OTP Screen
  static const String verifyOtpTitle = 'verifyOtpTitle';
  static const String verifyOtpSubTitle = 'verifyOtpSubTitle';
  static const String verifyOtpInput = 'verifyOtpInput';
  static const String verifyOtpConfirmButton = 'verifyOtpConfirmButton';

  // Dashboard Screen
  static const String dashboardHomeTitle = 'dashboardHomeTitle';
  static const String dashboardFeedTitle = 'dashboardFeedTitle';
  static const String dashboardScanQRTitle = 'dashboardScanQRTitle';
  static const String dashboardNotificationTitle = 'dashboardNotificationTitle';
  static const String dashboardProfileTitle = 'dashboardProfileTitle';

  // Home Screen
  static const String homeRecommendedPromotion = 'homeRecommendedPromotion';
  static const String homePromotionNearYou = 'homePromotionNearYou';
  static const String homeSeeAll = 'homeSeeAll';
  static const String homePrefixFlashSale = 'homePrefixFlashSale';
  static const String homeSuffixFlashSale = 'homeSuffixFlashSale';
  static const String homeViewedProduct = 'homeViewedProduct';

  // Recommended Promotion Screen
  static const String recommendedPromotionTitle = 'RecommendedPromotionTitle';

  // Details Promotion Screen
  static const String detailsPromotionPopupSave = 'detailsPromotionPopupSave';
  static const String detailsPromotionSaveSuccess = 'detailsPromotionSaveSuccess';
  static const String detailsPromotionViewCart = 'detailsPromotionViewCart';

  // Cart Screen
  static const String cartTitle = 'cartTitle';
  static const String cartOrderDetailsTitle = 'cartOrderDetailsTitle';
  static const String cartApplyDiscountCode = 'cartApplyDiscountCode';
  static const String cartApplyButton = 'cartApplyButton';
  static const String cartDeliveryAddress = 'cartDeliveryAddress';
  static const String cartChangeButton = 'cartChangeButton';
  static const String cartOrderCompleted = 'cartOrderCompleted';
  static const String cartYourOrderId = 'cartYourOrderId';
  static const String cartCopy = 'cartCopy';
  static const String cartCopySuccess = 'cartCopySuccess';
  static const String cartPayment = 'cartPayment';
  static const String cartCashOnDelivery = 'cartCashOnDelivery';
  static const String cartFee = 'cartFee';
  static const String cartDeliveryFee = 'cartDeliveryFee';
  static const String cartPacketFee = 'cartPacketFee';
  static const String cartTotal = 'cartTotal';
  static const String cartDeliveryMethod = 'cartDeliveryMethod';
  static const String cartPaymentMethod = 'cartPaymentMethod';
  static const String cartNext = 'cartNext';

  // Details Product Screen
  static const String viewRating = 'viewRating';
  static const String color = 'color';
  static const String productInformation = 'productInformation';
  static const String categories = 'categories';
  static const String providedBy = 'providedBy';
  static const String brand = 'brand';
  static const String manufactured = 'manufactured';
  static const String description = 'description';
  static const String viewAll = 'viewAll';
  static const String showLess = 'showLess';
  static const String relatedProduct = 'relatedProduct';
  static const String similarProduct = 'similarProduct';
  static const String chatToShop = 'chatToShop';
  static const String addToCart = 'addToCart';

  // Profile Screen
  static const String edit = 'edit';
  static const String followers = 'followers';
  static const String following = 'following';
  static const String email = 'email';
  static const String mobileNumber = 'mobileNumber';
  static const String yearOfBirth = 'yearOfBirth';
  static const String shopManagement = 'shopManagement';
  static const String enableFaceID = 'enableFaceID';
  static const String historyCheckIn = 'historyCheckIn';
  static const String myOrders = 'myOrders';
  static const String myPromotion = 'myPromotion';
  static const String myFollowed = 'myFollowed';
  static const String setting = 'setting';
  static const String termConditions = 'termConditions';
  static const String logOut = 'logOut';

  // Feed Screen
  static const String feed = 'feed';
  static const String nowOnSale = 'nowOnSale';
  static const String feedSeeAll = 'feedSeeAll';

  // Search Screen
  static const String searchDistanceFromYou = 'searchDistanceFromYou';
  static const String searchLatestSearch = 'searchLatestSearch';
  static const String searchHotTrend = 'searchHotTrend';

  // Notification Screen
  static const String notification = 'Notification';

  // Error in App
  static const String somethingWentWrong = 'somethingWentWrong';
  static const String noNetwork = 'noNetwork';
  static const String lowConnectNetwork = 'lowConnectNetwork';
  static const String feedback = 'feedback';
  static const String retry = 'retry';
}
