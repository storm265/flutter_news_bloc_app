import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:dash_flags/dash_flags.dart';
import 'package:todo_bloc_practice/utils/is_light_theme.dart';

final pageController = PageController(viewportFraction: 0.2);

class RegionsListWidget extends StatelessWidget {
  const RegionsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const  Text('News region:'),
          SizedBox(
            width: double.infinity,
            height: 70,
            child: PageView.builder(
              itemCount: regions.length,
              controller: pageController,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: isLightTheme(context: context)
                        ? CupertinoColors.white
                        : CupertinoColors.black,
                    boxShadow: [
                      BoxShadow(
                        color: isLightTheme(context: context)
                            ? CupertinoColors.black
                            : CupertinoTheme.of(context).primaryColor,
                        spreadRadius: 1,
                        blurRadius: 2,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(regions.keys.elementAt(index)),
                      const SizedBox(width: 5),
                      CountryFlag(
                        height: 25,
                        country: regions.values.elementAt(index),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Map<String, Country> regions = {
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
