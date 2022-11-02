import 'package:change_profile_avatar/app/data/services/media_service.dart';
import 'package:change_profile_avatar/app/data/services/media_service_implementation.dart';
import 'package:change_profile_avatar/app/pages/home_page/bloc/home_page_bloc.dart';
import 'package:get_it/get_it.dart';

import 'app/data/services/permission/permission_handle_permission_service.dart';
import 'app/data/services/permission/permission_service.dart';

final sl = GetIt.instance;
Future<void> init() async {
  sl.registerSingleton<PermissionService>(
    PermissionHandlerPermissionService(),
  );
  sl.registerSingleton<MediaService>(
    MediaServiceImplementation(),
  );
  sl.registerSingleton<HomePageBloc>(
    HomePageBloc(),
  );
}
