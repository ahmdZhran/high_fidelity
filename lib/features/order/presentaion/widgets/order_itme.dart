import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final int quantity;
  final Function(int) onQuantityChanged;

  const OrderItem({
    super.key,
    required this.quantity,
    required this.onQuantityChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey.shade100, width: 1)),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.orange.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Icon(Icons.coffee, color: Colors.orange.shade600),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Caffe Mocha',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade900,
                  ),
                ),
                Text(
                  'Deep Foam',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  if (quantity > 1) {
                    onQuantityChanged(quantity - 1);
                  }
                },
              ),
              Text('$quantity'),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () => onQuantityChanged(quantity + 1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}