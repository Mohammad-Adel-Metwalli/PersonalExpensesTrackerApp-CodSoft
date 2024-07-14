import '../../../Features/Home/Data/Repositories/Models/transaction_model.dart';

(int personalCare, int education, int food, int utilities, int allCategories) numberOfCategories({required List<TransactionModel> allTransactions})
{
  int personalCare = 0, education = 0, food = 0, utilities = 0;

  for(int i = 0; i < allTransactions.length; i++)
  {
    if(allTransactions[i].category == 'Personal Care')
    {
      personalCare++;
    }

    else if(allTransactions[i].category == 'Education')
    {
      education++;
    }

    else if(allTransactions[i].category == 'Food')
    {
      food++;
    }

    else
    {
      utilities++;
    }
  }

  return (personalCare, education, food, utilities, allTransactions.length);
}