import 'package:get/get.dart';
import 'package:hype/app/pages/auth/email_reset_password/email_reset_password_binding.dart';
import 'package:hype/app/pages/auth/email_reset_password/email_reset_password_view.dart';
import 'package:hype/app/pages/add_admin_user/add_admin_user_binding.dart';
import 'package:hype/app/pages/add_admin_user/add_admin_user_view.dart';
import 'package:hype/app/pages/add_brief_type/add_brief_type_binding.dart';
import 'package:hype/app/pages/add_brief_type/add_brief_type_view.dart';
import 'package:hype/app/pages/admin_department_add/add_admin_department_binding.dart';
import 'package:hype/app/pages/admin_department_add/add_admin_department_view.dart';
import 'package:hype/app/pages/auth/forgot_password/forgot_password_binding.dart';
import 'package:hype/app/pages/auth/forgot_password/forgot_password_view.dart';
import 'package:hype/app/pages/auth/login/login_binding.dart';
import 'package:hype/app/pages/auth/login/login_view.dart';
import 'package:hype/app/pages/auth/new_password/new_password_binding.dart';
import 'package:hype/app/pages/auth/new_password/new_password_view.dart';
import 'package:hype/app/pages/auth/verify_email/verify_email_binding.dart';
import 'package:hype/app/pages/auth/verify_email/verify_email_view.dart';
import 'package:hype/app/pages/client_edit/edit_client_binding.dart';
import 'package:hype/app/pages/client_edit/edit_client_view.dart';
import 'package:hype/app/pages/edit_admin_user/edit_admin_user_binding.dart';
import 'package:hype/app/pages/edit_admin_user/edit_admin_user_view.dart';
import 'package:hype/app/pages/home/home_binding.dart';
import 'package:hype/app/pages/home/home_view.dart';
import 'package:hype/app/pages/main/main_binding.dart';
import 'package:hype/app/pages/main/main_view.dart';
import 'package:hype/app/pages/notification/notification_binding.dart';
import 'package:hype/app/pages/notification/notification_view.dart';
import 'package:hype/app/pages/splash/splash_binding.dart';
import 'package:hype/app/pages/splash/splash_view.dart';
import 'package:hype/app/pages/task/task_binding.dart';
import 'package:hype/app/pages/task/task_view.dart';
import 'package:hype/app/pages/task_edit/edit_task_binding.dart';
import 'package:hype/app/pages/task_edit/edit_task_view.dart';

part 'app_routes.dart';

const _pageTransition = Transition.circularReveal;
const _transitionDuration = Duration(milliseconds: 700);

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_VIEW;

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
        page: () => VerifyEmailView(),
        binding: VerifyEmailBinding(),
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
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ADMIN_DEPARTMENT,
      page: () => AddAdminDepartmentView(),
      binding: AddAdminDepartmentBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ADMIN_USER,
      page: () => const AddAdminUserView(),
      binding: AddAdminUserBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_ADMIN_USER,
      page: () => EditAdminUserView(),
      binding: EditAdminUserBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_ADMIN_BRIEF,
      page: () => const AddBriefTypeView(),
      binding: AddBriefTypeBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_CLIENT,
      page: () => EditClientView(),
      binding: EditClientBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.TASK,
      page: () => TaskView(),
      binding: TaskBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_TASK,
      page: () => EditTaskView(),
      binding: EditTaskBinding(),
    ),
    GetPage(
        name: _Paths.SPLASH_VIEW,
        page: () =>  EmailResetPasswordView(),
        binding: EmailResetPasswordBinding(),
        transition: _pageTransition,
        transitionDuration: _transitionDuration),
  ];
}
