import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_expense_tracker_app/Core/Utils/styles.dart';
import 'package:personal_expense_tracker_app/Features/Home/Presentation/Managers/Add%20Transaction%20Cubit/add_transaction_cubit.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'custom_bottom_sheet.dart';
import 'customed_label_fab.dart';

class CustomedFAB extends StatelessWidget
{
  const CustomedFAB({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return FadeInRightBig(
      child: FloatingActionButton.extended(
        backgroundColor: black,
        label: const CustomedLabelFAB(),
        splashColor: white.withOpacity(0.4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.5), side: const BorderSide(color: white, width: 3.5)),
        onPressed: ()
        {
          var addTransactionCubit = context.read<AddTransactionCubit>();

          showModalBottomSheet(
            context: context,
            backgroundColor: white,
            isScrollControlled: true,
            shape: Styles.modalBottomSheetStyle,
            builder: (context) => BlocProvider.value(
              value: addTransactionCubit,
              child: Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(child: CustomBottomSheet()),
              ),
            ),
          );
        },
      ),
    );
  }
}