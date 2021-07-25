import 'package:get/get.dart';

import 'package:rtb_driver/app/modules/chat/bindings/chat_binding.dart';
import 'package:rtb_driver/app/modules/chat/views/chat_view.dart';
import 'package:rtb_driver/app/modules/edit_profile/bindings/edit_profile_binding.dart';
import 'package:rtb_driver/app/modules/edit_profile/views/edit_profile_view.dart';
import 'package:rtb_driver/app/modules/en_route/bindings/en_route_binding.dart';
import 'package:rtb_driver/app/modules/en_route/views/en_route_view.dart';
import 'package:rtb_driver/app/modules/example/bindings/example_binding.dart';
import 'package:rtb_driver/app/modules/example/views/example_view.dart';
import 'package:rtb_driver/app/modules/finish_trip/bindings/finish_trip_binding.dart';
import 'package:rtb_driver/app/modules/finish_trip/views/finish_trip_view.dart';
import 'package:rtb_driver/app/modules/home/bindings/home_binding.dart';
import 'package:rtb_driver/app/modules/home/views/home_view.dart';
import 'package:rtb_driver/app/modules/login/bindings/login_binding.dart';
import 'package:rtb_driver/app/modules/login/views/login_view.dart';
import 'package:rtb_driver/app/modules/menus/bindings/menus_binding.dart';
import 'package:rtb_driver/app/modules/menus/views/menus_view.dart';
import 'package:rtb_driver/app/modules/messages/bindings/messages_binding.dart';
import 'package:rtb_driver/app/modules/messages/views/messages_view.dart';
import 'package:rtb_driver/app/modules/notification/bindings/notification_binding.dart';
import 'package:rtb_driver/app/modules/notification/views/notification_view.dart';
import 'package:rtb_driver/app/modules/pit_stop/bindings/pit_stop_binding.dart';
import 'package:rtb_driver/app/modules/pit_stop/views/pit_stop_view.dart';
import 'package:rtb_driver/app/modules/profile/bindings/profile_binding.dart';
import 'package:rtb_driver/app/modules/profile/views/profile_view.dart';
import 'package:rtb_driver/app/modules/reviews/bindings/reviews_binding.dart';
import 'package:rtb_driver/app/modules/reviews/views/reviews_view.dart';
import 'package:rtb_driver/app/modules/seat_chart/bindings/seat_chart_binding.dart';
import 'package:rtb_driver/app/modules/seat_chart/views/seat_chart_view.dart';
import 'package:rtb_driver/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:rtb_driver/app/modules/splash_screen/views/splash_screen_view.dart';
import 'package:rtb_driver/app/modules/trip_details/bindings/trip_details_binding.dart';
import 'package:rtb_driver/app/modules/trip_details/views/trip_details_view.dart';
import 'package:rtb_driver/app/modules/trips/bindings/trips_binding.dart';
import 'package:rtb_driver/app/modules/trips/views/trips_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.MENUS,
      page: () => MenusView(),
      binding: MenusBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGES,
      page: () => MessagesView(),
      binding: MessagesBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.TRIPS,
      page: () => TripsView(),
      binding: TripsBinding(),
    ),
    GetPage(
      name: _Paths.REVIEWS,
      page: () => ReviewsView(),
      binding: ReviewsBinding(),
    ),
    GetPage(
      name: _Paths.TRIP_DETAILS,
      page: () => TripDetailsView(),
      binding: TripDetailsBinding(),
    ),
    GetPage(
      name: _Paths.FINISH_TRIP,
      page: () => FinishTripView(),
      binding: FinishTripBinding(),
    ),
    GetPage(
      name: _Paths.SEAT_CHART,
      page: () => SeatChartView(),
      binding: SeatChartBinding(),
    ),
    GetPage(
      name: _Paths.EN_ROUTE,
      page: () => EnRouteView(),
      binding: EnRouteBinding(),
    ),
    GetPage(
      name: _Paths.PIT_STOP,
      page: () => PitStopView(),
      binding: PitStopBinding(),
    ),
    GetPage(
      name: _Paths.EXAMPLE,
      page: () => ExampleView(),
      binding: ExampleBinding(),
    ),
  ];
}
