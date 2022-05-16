

import 'package:hype/services/http/http_classes.dart';
import 'package:hype/utils/serialization/serialization_lib.dart';

abstract class IHttpService{

  Future<HttpResponse?> sendRequest(HttpRequest<Serializable> request);

  //void addMonitor(HttpMonitor monitor, [int? index]);

  void setTimeout(int seconds);

}

