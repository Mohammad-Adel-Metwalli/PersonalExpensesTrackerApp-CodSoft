import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_expense_tracker_app/Features/Home/Presentation/Managers/All%20Transactions%20Cubit/all_transactions_cubit.dart';
import 'Widgets/custom_home_app_bar.dart';
import 'Widgets/customed_fab.dart';
import 'Widgets/home_view_body.dart';

class HomeView extends StatefulWidget
{
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
{
  @override
  void initState()
  {
    super.initState();
    BlocProvider.of<AllTransactionsCubit>(context).fetchAllTransactions();
  }

  @override
  void didChangeDependencies()
  {
    precacheImage(const AssetImage('Assets/Images/profile-image.png'), context);
    precacheImage(const AssetImage('Assets/Images/cash-wallet.png'), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: const CustomedFAB(),
        
        body: Stack(
          children: [
            FadeInUpBig(child: const HomeViewBody()),

            FadeInDownBig(duration: const Duration(seconds: 2), child: const CustomHomeAppBar()),
          ],
        ),
      ),
    );
  }
}