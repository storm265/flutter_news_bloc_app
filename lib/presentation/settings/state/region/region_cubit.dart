import 'package:bloc/bloc.dart';
import 'package:dash_flags/dash_flags.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import 'package:todo_bloc_practice/services/storage_service.dart';

part 'region_state.dart';

class RegionCubit extends Cubit<RegionState> {
  final StorageService _storageService;
  RegionCubit({required StorageService storageService})
      : _storageService = storageService,
        super(const RegionInitialState(country: Country.us)) {
    _setRegion();
  }

  Future<void> _setRegion() async {
    final currentRegion = await _storageService.getLocalRegion();
    if (currentRegion == null) {
      emit(const RegionInitialState());
    } else {
      // final countryString =
      //     regionList.keys.where((element) => element == currentRegion).first;
      final country = regionList.values
          .where((element) => element.name == currentRegion)
          .first;
      emit(RegionUpdatedState(country: country));
    }
  }

  Future<void> showRegionDialog(BuildContext context) async {
    int selectedIndex = 0;
    await showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('News regions'),
        content: SizedBox(
          width: double.infinity,
          height: 90,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: regionList.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                selectedIndex = index;
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      regionList.keys.elementAt(index),
                      style: const TextStyle(fontSize: 20),
                    ),
                    CountryFlag(
                      height: 20,
                      country: regionList.values.elementAt(index),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () async {
              emit(
                RegionUpdatedState(
                  country: regionList.values.elementAt(selectedIndex),
                ),
              );
              await _storageService
                  .saveRegion(region: regionList.keys.elementAt(selectedIndex))
                  .then((_) => Navigator.pop(context));
            },
            child: const Text('Ok'),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  Map<String, Country> regionList = {
    'ae': Country.ae,
    'ar': Country.ar,
    'at': Country.at,
    'au': Country.au,
    'be': Country.be,
    'bg': Country.bg,
    'br': Country.br,
    'ca': Country.ca,
    'ch': Country.ch,
    'cn': Country.cn,
    'co': Country.co,
    'cu': Country.cu,
    'cz': Country.cz,
    'de': Country.de,
    'eg': Country.eg,
    'fr': Country.fr,
    'gb': Country.gb,
    'gr': Country.gr,
    'hk': Country.hk,
    'hu': Country.hu,
    'id': Country.id,
    'ie': Country.ie,
    'pl': Country.pl,
    'pt': Country.pt,
    'ro': Country.ro,
    'rs': Country.rs,
    'ru': Country.ru,
    'sa': Country.sa,
    'se': Country.se,
    'sg': Country.sg,
    'si': Country.si,
    'sk': Country.sk,
    'th': Country.th,
    'tr': Country.tr,
    'tw': Country.tw,
    'ua': Country.ua,
    'us': Country.us,
    've': Country.ve,
    'za': Country.za,
  };
}
