// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'navigation_cubit.dart';

abstract class NavigationState {
  const NavigationState();
}

class NavigationInitialState extends NavigationState {
  const NavigationInitialState();
}

class UpdateNavigationState extends NavigationState {
  const UpdateNavigationState();
}
