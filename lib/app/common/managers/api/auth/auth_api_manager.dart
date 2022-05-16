import 'package:hype/app/common/managers/api/auth/_model/login_model.dart';
import 'package:hype/app/common/managers/api/auth/i_auth_api_manager.dart';
import 'package:hype/services/http/http_lib.dart';

class AuthApiManager implements IAuthApiManager{
  final IHttpService _httpService;

  AuthApiManager(this._httpService);

  @override
  Future<LoginResponse?> login(LoginRequest? loginRequest) async{
    var request = HttpRequest(method: HttpMethod.post, url: 'Authenticate', data: loginRequest)..addJsonHeaders();
    //
    var resp = await _httpService.sendRequest(request);
    //
    if(resp != null && resp.statusCode == 200 && resp.data != null){
      return LoginResponse()..deserialize(resp.data!);
    }
    return null;
  }

}