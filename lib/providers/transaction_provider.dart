import 'package:flutter/foundation.dart';
import 'package:flutter_database/models/Transaction.dart';

class TransactionProvider with ChangeNotifier {
  List<Transaction> transactions = [
    Transaction(title: 'หนังสือ', amount: 500, date: DateTime.now()),
    Transaction(title: 'เสื้อผ้า', amount: 900, date: DateTime.now()),
    Transaction(title: 'กางเกง', amount: 400, date: DateTime.now()),
  ];

  List<Transaction> getTransaction() => transactions;

  addTransaction(Transaction statement) {
    transactions.add(statement);
  }
}
