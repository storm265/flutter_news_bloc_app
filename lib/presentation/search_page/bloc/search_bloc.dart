import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_bloc_practice/domain/entities/everything_entity.dart';
import 'package:todo_bloc_practice/domain/repository/news_remote_repository.dart';
import 'package:todo_bloc_practice/services/connection_status_service.dart';
import 'package:todo_bloc_practice/services/storage_service.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState>
    with ConnectionStatusMixin {
  final StorageService _storageService;
  final NewsRemoteRepository _newsRemoteRepository;
  final searchTextController = TextEditingController();

  SearchBloc({
    required NewsRemoteRepository newsRemoteRepository,
    required StorageService storageService,
  })  : _newsRemoteRepository = newsRemoteRepository,
        _storageService = storageService,
        super(const SearchInitialState()) {
    on<SearchEvent>((event, emit) async {
      await _onGetEverythingEvent(event, emit);
    });
  }

  Future<void> _onGetEverythingEvent(
      SearchEvent event, Emitter<SearchState> emit) async {
    if (event is GetEverythingEvent) {
      emit(const SearchLoadingState());
      try {
        if (await isConnected()) {
          final everythingEntity = await _getEverything();
          emit(SearchFetchedState(everythingEntity: everythingEntity));
        } else {
          emit(const SearchNoNetworkState(
              errorMessage: 'Check internet connection'));
        }
      } catch (e) {
        emit(SearchErrorState(errorMessage: e.toString()));
      }
    }
  }

  Future<EverythingEntity> _getEverything() async =>
      await _newsRemoteRepository.getEverything(
        title: searchTextController.text,
        language: await _storageService.getLocalRegion() ?? 'en',
      );
}
