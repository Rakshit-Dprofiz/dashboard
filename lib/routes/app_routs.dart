import 'package:get/get.dart';
import 'package:trashee_dashboard/common/widgets/responsive/screens/forget_password/forget_password.dart';
import 'package:trashee_dashboard/common/widgets/responsive/screens/reset_password/reset_password.dart';
import 'package:trashee_dashboard/features.sign/screens/sign_in.dart';
import 'package:trashee_dashboard/pages/dashboard/features/class/detail.dart';

import 'package:trashee_dashboard/routes/routes.dart';
import '../features.login/screens/login.dart';
import '../pages/account_pages/profile.dart';
import '../pages/dashboard/pages/dashboard.dart';
import '../pages/offers/all_offers/all_offers.dart';
import '../pages/offers/bulk_approval_waiting_offers/bulk_approval_waiting_offers.dart';
import '../pages/offers/bulk_approved_offers/bulk_approved_offers.dart';
import '../pages/offers/individual_approval_waiting_offers/individual_approval_waiting_offers.dart';
import '../pages/offers/individual_approved_offers/individual_approval_offers.dart';
import '../pages/offers/rejected_offers/rejected_offers.dart';
import '../pages/pay_and_plan/payments/payment.dart';
import '../pages/pay_and_plan/subscription_plan/subscription_plan.dart';
import '../pages/shops/all_shops/all_shops.dart';
import '../pages/shops/approval_shops/approval_shop.dart';
import '../pages/shops/approval_waiting_shops/approval_waiting_shops.dart';
import '../pages/shops/rejected_shops/rejected_shops.dart';
import '../pages/user/customer.dart';

class TAppRoute {
  static final List<GetPage> pages = [
    // GetPage(name: TRoutes.firstScreen, page: () => const FirstScreen()),
    // GetPage(name: TRoutes.secondScreen, page: () => const SecondScreen()),
    GetPage(name: TRoutes.dashboard, page: () => DashboardScreen(details: Detail.detail ,)),
    GetPage(name: TRoutes.login, page: () => LoginScreen()),
    GetPage(name: TRoutes.sign, page: () => SignInScreen()),
    GetPage(name: TRoutes.forgetPassword, page: () => ForgetPasswordScreen()),
    GetPage(name: TRoutes.resetPassword, page: () => ResetPasswordScreen()),
    GetPage(name: TRoutes.resetPassword, page: () => ResetPasswordScreen()),

    // Shops
    GetPage(name: TRoutes.allShops, page: () => AllShopsScreen()),
    GetPage(name: TRoutes.approvalShops, page: () => ApprovalShopsScreen()),
    GetPage(
        name: TRoutes.approvalWaitingShops,
        page: () => ApprovalWaitingShopScreen()),
    GetPage(name: TRoutes.rejectedShops, page: () => RejectedShopsScreen()),

    // Offers
    GetPage(name: TRoutes.allOffers, page: () => AllOffersScreen()),
    GetPage(
        name: TRoutes.individualApprovedOffers,
        page: () => IndividualApprovedOffersScreen()),
    GetPage(
        name: TRoutes.individualApprovedWaitingOffers,
        page: () => IndividualApprovalWaitingOffersScreen()),
    GetPage(
        name: TRoutes.bulkApprovedOffers,
        page: () => BulkApprovedOffersScreen()),
    GetPage(
        name: TRoutes.bulkApprovedWaitingOffers,
        page: () => BulkApprovalWaitingOffersScreen()),
    GetPage(name: TRoutes.rejectedOffers, page: () => RejectedOffersScreen()),

    // Users
    GetPage(name: TRoutes.customer, page: () => CustomerScreen()),

    // Payment & Plans
    GetPage(name: TRoutes.payment, page: () => PaymentScreen()),
    GetPage(
        name: TRoutes.subscriptionPlan, page: () => SubscriptionPlanScreen()),

    // Profile
    GetPage(name: TRoutes.profile, page: () => ProfileScreen()),
  ];
}
