// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'navigation_cubit.dart';

abstract class NavigationState extends Equatable {
  final int pageIndex;
  const NavigationState({required this.pageIndex});

  @override
  List<Object?> get props => [pageIndex];
}

class NavigationInitialState extends NavigationState {
  const NavigationInitialState({required super.pageIndex});
}

class UpdateNavigationState extends NavigationState {
  const UpdateNavigationState({required super.pageIndex});
}
