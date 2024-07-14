import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_expense_tracker_app/Core/Utils/constants.dart';
import 'package:personal_expense_tracker_app/Features/Home/Presentation/Managers/Add%20Transaction%20Cubit/add_transaction_cubit.dart';
import 'package:personal_expense_tracker_app/Features/Home/Presentation/Views/home_view.dart';

abstract class AppRouter
{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => BlocProvider(
          create: (context) => AddTransactionCubit(),
          child: const HomeView(),
        ),
      ),
    ],
  );
}