import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/data/models/top_headline_model/top_headline_model.dart';
import 'package:todo_bloc_practice/domain/repository/news_remote_repository.dart';
import 'package:todo_bloc_practice/services/connection_status_service.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> with ConnectionStatusMixin {
  final NewsRemoteRepository _newsRemoteRepository;

  NewsBloc({required NewsRemoteRepository newsRemoteRepository})
      : _newsRemoteRepository = newsRemoteRepository,
        super(NewsInitialState()) {
    on<NewsEvent>((event, emit) async {
      await _onGetNewsEvent(event, emit);
    });
  }

  Future<void> _onGetNewsEvent(NewsEvent event, Emitter<NewsState> emit) async {
    if (event is GetNewsEvent) {
      emit(NewsLoadingState());
      try {
        if (await isConnected()) {
          final topTitlesModel = await _getTopTitles();
          emit(NewsLoadedState(topHeadlineModel: topTitlesModel));
        } else {
          emit(const NewsNoNetworkState(error: 'Check internet connection'));
        }
      } catch (e) {
        emit(NewsErrorState(error: e.toString()));
      }
    }
  }

  Future<TopHeadlineModel> _getTopTitles({
    String countryCode = 'us',
    String category = 'general',
  }) async =>
      await _newsRemoteRepository.getTopHeadlines(
        category: category,
        countryCode: countryCode,
      );
}
