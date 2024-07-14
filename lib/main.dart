import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:personal_expense_tracker_app/Core/Utils/app_router.dart';
import 'package:personal_expense_tracker_app/Core/Utils/constants.dart';
import 'package:personal_expense_tracker_app/Features/Home/Data/Repositories/Models/transaction_model.dart';
import 'package:personal_expense_tracker_app/Features/Home/Presentation/Managers/All%20Transactions%20Cubit/all_transactions_cubit.dart';

void main() async
{
  initializeDateFormatting('en_US').then((value) async
  {
    await Hive.initFlutter();
    Hive.registerAdapter(TransactionModelAdapter());
    await Hive.openBox<TransactionModel>(transactionsBox);
    runApp(const PersonalExpenseTrackerApp());
  });
}

class PersonalExpenseTrackerApp extends StatelessWidget
{
  const PersonalExpenseTrackerApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (context) => AllTransactionsCubit(),
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        designSize: Size(MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),

        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme(), brightness: Brightness.dark, useMaterial3: true),
        ),
      ),
    );
  }
}