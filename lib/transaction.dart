class Transaction {
  final String id;
  final String itemName;
  final double amount;
  final DateTime date;

  Transaction({
    required this.id,
    required this.itemName,
    required this.amount,
    required this.date,
    // added the required keyword as it was giving error of unitialized
  });
}
