class OrderHistory {
  final String id;
  final int price;
  final String status;
  final DateTime date;
  final String orderType; // Values: 'order_id' or 'withdraw'

  OrderHistory({
    required this.id,
    required this.price,
    required this.status,
    required this.date,
    required this.orderType,
  });
}