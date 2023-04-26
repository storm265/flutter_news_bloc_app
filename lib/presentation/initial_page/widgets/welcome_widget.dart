import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/initial_page/cubit/initial_cubit.dart';
import 'package:todo_bloc_practice/presentation/initial_page/widgets/dot_pager_widget/dots_pager_widget.dart';
import 'package:todo_bloc_practice/services/route_service/route_service.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final initialCubitRead = context.read<InitialCubit>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<InitialCubit, InitialState>(
        builder: (context, state) => Stack(
          alignment: Alignment.center,
          children: [
            PageView.builder(
              controller: initialCubitRead.pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: initialCubitRead.assetsProvider.assets.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    const SizedBox(height: 120),
                    Image.asset(
                      initialCubitRead.assetsProvider.assets[index],
                      width: 220,
                      height: 230,
                    ),
                    Text(
                      initialCubitRead.assetsProvider.description[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DotsPagerWidget(
              itemCount: 3,
              pageIndex: state.selectedIndex,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CupertinoButton(
                    child: const Text('Back'),
                    onPressed: () {
                      initialCubitRead.changePageIndex(state.selectedIndex - 1);
                    },
                  ),
                  CupertinoButton(
                    child: const Text('Next'),
                    onPressed: () async {
                      state.selectedIndex == 2
                          ? await initialCubitRead
                              .saveIsFirstTimeVisitLocally(isFirstVisit: false)
                              .then(
                                (_) => AutoRouter.of(context)
                                    .replace(const NavigationRoute()),
                              )
                          : await initialCubitRead
                              .changePageIndex(state.selectedIndex + 1);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
