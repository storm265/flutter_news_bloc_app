part of 'news_bloc.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

class NewsInitialState extends NewsState {}

class NewsLoadingState extends NewsState {}

class NewsLoadedState extends NewsState {
  final TopHeadlineModel topHeadlineModel;
  const NewsLoadedState({required this.topHeadlineModel});
}

class NewsErrorState extends NewsState {
  final String error;
  const NewsErrorState({required this.error});
}
