import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_state.dart';

class Navigation extends Cubit<NavigationState> {
  Navigation() : super(NavigationState(selectedIndexBody:0));

  void navigateTo(index) => emit(NavigationState(selectedIndexBody: index));
}
