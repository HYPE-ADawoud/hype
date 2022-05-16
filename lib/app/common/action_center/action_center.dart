import 'package:get/get.dart';
import 'package:hype/services/connectivity/connectivity_lib.dart';
import 'package:hype/services/http/http_classes.dart';
import 'package:hype/services/logger/log.dart';
import 'package:hype/setup.dart';
import 'package:hype/utils/ui/dialog/overlay_helper.dart';

import 'app_exception.dart';

class ActionCenter {

  final _connectivityService = DI.find<IConnectivityService>();

  static bool displayErrorDetails = false;

  ActionCenter();

  Future<bool> execute(Future<void> Function() action,
      {bool checkConnection = false, bool Function(Object)? errorHandler}) async {
    try {
      // if check connection
      if (checkConnection) {
        if (!await _connectivityService.isConnected()) {
          Log.info('ActionCenter', 'No Internet Connection');
          OverlayHelper.showErrorToast('No Internet Connection');
          return false;
        }
      }

      await action();

      return true;
    } catch (ex, st) {
      // the handler sent by the caller
      if (errorHandler != null && errorHandler(ex)) {
        Log.error('error', ex);
        return false;
      }
      //
      if (ex is AppException) {
        Log.error(ex.message, ex.description);
        Log.error('original exception', ex.originalException);
        OverlayHelper.showErrorToast('Something wrong');
      } else if (ex is ApiTimeoutException) {
        Log.error('Timeout');
        Log.error('original exception', ex.originalException);
        OverlayHelper.showErrorToast('Timeout error');
      } else if (ex is ApiResponseException) {
        Log.error('${ex.statusCode} : ${ex.message}', ex.description);
        Log.error('original exception', ex.originalException);
        OverlayHelper.showErrorToast('Something wrong try again');
      } else {
        Log.error('exception', ex);
        OverlayHelper.showErrorToast('Something wrong');
      }
      Log.debug('stack trace', st);
      //
      // show the error for testers if configured from the debug page

      if (displayErrorDetails) {
        Get.defaultDialog(
            title: 'Error',
            middleText: ex.toString(),
        );
      }
      //
      return false;
    } finally {}
  }
}
