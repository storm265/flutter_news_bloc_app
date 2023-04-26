import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/initial_page/widgets/welcome_widget.dart';
import 'package:todo_bloc_practice/services/route_service/route_service.dart';
import 'cubit/initial_cubit.dart';



@RoutePage()
class InititialPage extends StatefulWidget {
  const InititialPage({super.key});

  @override
  State<InititialPage> createState() => _InititialPageState();
}

class _InititialPageState extends State<InititialPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: FutureBuilder<bool>(
        future: context.read<InitialCubit>().isFirstUserVisit(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final isFirstVisit = snapshot.data;
            if (isFirstVisit == true) {
              return const WelcomeWidget();
            } else {
              AutoRouter.of(context).push(const NavigationRoute());
              return const CircularProgressIndicator.adaptive();
            }
          } else {
            return const CircularProgressIndicator.adaptive();
          }
        },
      ),
    );
  }
}
