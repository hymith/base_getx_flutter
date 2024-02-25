import 'package:get/get.dart';

import '../data/repository/auth_repo.dart';

class AuthController extends GetxController implements GetxService {
  final AuthRepo authRepo;

  AuthController({required this.authRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void saveUserToken(String token) {
    authRepo.saveUserToken(token);
  }

  Future<String> getUserToken() async {
    final userToken = await authRepo.getUserToken();
    return userToken;
  }
}
