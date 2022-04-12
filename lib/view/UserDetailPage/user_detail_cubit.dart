import 'package:bloc/bloc.dart';

class UserDetailCubit extends Cubit<bool> {
  UserDetailCubit() : super(false);

  void toggle() => emit(!state);
}
