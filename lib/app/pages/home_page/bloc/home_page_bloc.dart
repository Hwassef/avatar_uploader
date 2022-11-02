import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'dart:io';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageInitial()) {
    on<ProfilaAvatarChanged>(_onProfilaAvatarChanged);
  }

  void _onProfilaAvatarChanged(ProfilaAvatarChanged event, Emitter<HomePageState> emit) {
    emit(
      state.copyWith(
        profileImage: event.profileImage,
      ),
    );
  }
}
