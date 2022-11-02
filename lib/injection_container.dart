import 'package:get_it/get_it.dart';

import 'app/data/services/permission/permission_handle_permission_service.dart';
import 'app/data/services/permission/permission_service.dart';

final sl = GetIt.instance;
Future<void> init() async {
  sl.registerSingleton<PermissionService>(
    PermissionHandlerPermissionService(),
  );
}
