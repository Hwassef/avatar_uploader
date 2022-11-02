part of 'home_page_bloc.dart';

class HomePageState extends Equatable {
  HomePageState({
    this.profileImage,
  });

  final File? profileImage;

  HomePageState copyWith({
    File? profileImage,
  }) {
    return HomePageState(
      profileImage: profileImage ?? this.profileImage,
    );
  }

  @override
  List<Object?> get props => [
        profileImage,
      ];
}

class HomePageInitial extends HomePageState {}
