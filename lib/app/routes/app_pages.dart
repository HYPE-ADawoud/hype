import 'package:get/get.dart';
import 'package:hype/app/pages/account_allocation/acount_allocation_binding.dart';
import 'package:hype/app/pages/account_allocation/acount_allocation_view.dart';
import 'package:hype/app/pages/account_allocation_edit/edit_acount_allocation_binding.dart';
import 'package:hype/app/pages/account_allocation_edit/edit_acount_allocation_view.dart';
import 'package:hype/app/pages/admin/admin_binding.dart';
import 'package:hype/app/pages/admin/admin_view.dart';
import 'package:hype/app/pages/admin_department/admin_department_binding.dart';
import 'package:hype/app/pages/admin_department/admin_department_view.dart';
import 'package:hype/app/pages/auth/change_password/change_password_binding.dart';
import 'package:hype/app/pages/auth/change_password/change_password_view.dart';
import 'package:hype/app/pages/auth/forgot_password/forgot_password_binding.dart';
import 'package:hype/app/pages/auth/forgot_password/forgot_password_view.dart';
import 'package:hype/app/pages/auth/login/login_binding.dart';
import 'package:hype/app/pages/auth/login/login_view.dart';
import 'package:hype/app/pages/auth/new_password/new_password_binding.dart';
import 'package:hype/app/pages/auth/new_password/new_password_view.dart';
import 'package:hype/app/pages/auth/verify_mobile_number/verify_mobile_number_binding.dart';
import 'package:hype/app/pages/auth/verify_mobile_number/verify_mobile_number_view.dart';
import 'package:hype/app/pages/create_task/create_task_binding.dart';
import 'package:hype/app/pages/create_task/create_task_view.dart';
import 'package:hype/app/pages/department/department_binding.dart';
import 'package:hype/app/pages/department/department_view.dart';
import 'package:hype/app/pages/edit_admin_brief/edit_admin_brief_binding.dart';
import 'package:hype/app/pages/edit_admin_brief/edit_admin_brief_view.dart';
import 'package:hype/app/pages/edit_admin_usert_view/edit_admin_user_binding.dart';
import 'package:hype/app/pages/edit_admin_usert_view/edit_admin_user_view.dart';
import 'package:hype/app/pages/home/home_binding.dart';
import 'package:hype/app/pages/home/home_view.dart';
import 'package:hype/app/pages/side_menu/side_menu_binding.dart';
import 'package:hype/app/pages/side_menu/side_menu_view.dart';
import 'package:hype/app/pages/splash/splash_binding.dart';
import 'package:hype/app/pages/splash/splash_view.dart';

part 'app_routes.dart';

const _pageTransition = Transition.circularReveal;
const _transitionDuration = Duration(milliseconds: 700);

class AppPages {
  AppPages._();

  static const INITIAL = Routes.EDIT_ACCOUNT_ALLOCATION;

  static final routes = [
    GetPage(
        name: _Paths.SPLASH_VIEW,
        page: () => const SplashView(),
        binding: SplashBinding(),
        transition: _pageTransition,
        transitionDuration: _transitionDuration),
    GetPage(
        name: _Paths.LOGIN,
        page: () => const LoginView(),
        binding: LoginBinding(),
        transition: _pageTransition,
        transitionDuration: _transitionDuration),
    GetPage(
        name: _Paths.FORGOT_PASSWORD,
        page: () => ForgotPasswordView(),
        binding: ForgotPasswordBinding(),
        transition: _pageTransition,
        transitionDuration: _transitionDuration),
    GetPage(
        name: _Paths.VERIFY_AUTH,
        page: () => VerifyMobileNoView(),
        binding: VerifyMobileNoBinding(),
        transition: _pageTransition,
        transitionDuration: _transitionDuration),
    GetPage(
        name: _Paths.NEW_PASSWORD,
        page: () => NewPasswordView(),
        binding: NewPasswordBinding(),
        transition: _pageTransition,
        transitionDuration: _transitionDuration),
    GetPage(
        name: _Paths.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        transition: _pageTransition,
        transitionDuration: _transitionDuration),
    GetPage(
        name: _Paths.CHANGE_PASSWORD,
        page: () => ChangePasswordView(),
        binding: ChangePasswordBinding(),
        transition: _pageTransition,
        transitionDuration: _transitionDuration),
    GetPage(
        name: _Paths.SIDE_MENU,
        page: () => SideMenuView(),
        binding: SideMenuBinding(),
        transition: _pageTransition,
        transitionDuration: _transitionDuration),
    GetPage(
      name: _Paths.CREATE_TASK,
      page: () => CreateTaskView(),
      binding: CreateTaskBinding(),
    ),
    GetPage(
      name: _Paths.DEPARTMENT,
      page: () => DepartmentView(),
      binding: DepartmentBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_DEPARTMENT,
      page: () => AdminDepartmentView(),
      binding: AdminDepartmentBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN,
      page: () => AdminView(),
      binding: AdminBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_ADMIN_USER,
      page: () => EditAdminUserView(),
      binding: EditAdminUserBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_ADMIN_BRIEF,
      page: () => EditAdminBriefView(),
      binding: EditAdminBriefBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT_ALLOCATION,
      page: () => AccountAllocationView(),
      binding: AccountAllocationBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_ACCOUNT_ALLOCATION,
      page: () => EditAccountAllocationView(),
      binding: EditAccountAllocationBinding(),
    ),
  ];
}
