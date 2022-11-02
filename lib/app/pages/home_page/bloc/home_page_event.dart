part of 'home_page_bloc.dart';

abstract class HomePageEvent extends Equatable {
  const HomePageEvent();

  @override
  List<Object?> get props => [];
}

class ProfilaAvatarChanged extends HomePageEvent {
  const ProfilaAvatarChanged({required this.profileImage});
  final File? profileImage;
  @override
  List<Object?> get props => [
        profileImage,
      ];
}
