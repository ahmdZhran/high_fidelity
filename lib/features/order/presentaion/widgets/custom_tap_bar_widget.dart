import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:high_fidelity/features/order/presentaion/screens/delivery_tracking_screen.dart';
import 'package:high_fidelity/features/order/presentaion/widgets/address_section_widget.dart';
import 'package:high_fidelity/features/order/presentaion/widgets/delever_method_selector.dart';
import 'package:high_fidelity/features/order/presentaion/widgets/disscount_banner.dart';
import 'package:high_fidelity/features/order/presentaion/widgets/order_footer.dart';
import 'package:high_fidelity/features/order/presentaion/widgets/order_itme.dart';
import 'package:high_fidelity/features/order/presentaion/widgets/order_summery_widget.dart';

class CustomOrderTab extends HookWidget {
  const CustomOrderTab({super.key});

  @override
  Widget build(BuildContext context) {
    final deliveryMethod = useState('deliver');
    final quantity = useState(1);
    final showDiscount = useState(true);
    final itemPrice = 4.53;
    final originalDeliveryFee = 2.0;
    final discountedDeliveryFee = 1.0;

    final subtotal = itemPrice * quantity.value;
    final deliveryFee =
        deliveryMethod.value == 'deliver' ? discountedDeliveryFee : 0.0;
    final total = subtotal + deliveryFee;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: DeliveryMethodSelector(
                        selectedMethod: deliveryMethod.value,
                        onChanged: (method) => deliveryMethod.value = method,
                      ),
                    ),
                    if (deliveryMethod.value == 'deliver')
                      AddressSectionWidget(),
                    OrderItem(
                      quantity: quantity.value,
                      onQuantityChanged:
                          (newQuantity) => quantity.value = newQuantity,
                    ),
                    if (showDiscount.value) DiscountBanner(),
                    OrderSummary(
                      deliveryMethod: deliveryMethod.value,
                      quantity: quantity.value,
                      subtotal: subtotal,
                      originalDeliveryFee: originalDeliveryFee,
                      discountedDeliveryFee: discountedDeliveryFee,
                      total: total,
                    ),
                  ],
                ),
              ),
            ),
            OrderFooter(
              deliveryMethod: deliveryMethod.value,
              total: total,
              onOrderPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => DeliveryTrackingScreen(
                          deliveryMethod: deliveryMethod.value,
                          orderTotal: total,
                        ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
