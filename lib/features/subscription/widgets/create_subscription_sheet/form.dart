import 'package:flutter/material.dart';
import 'package:subscription_app/features/subscription/widgets/create_subscription_sheet/form_fields/server_select_field.dart';

class CreateSubscriptionForm extends StatefulWidget {
  final Function(Map<String, dynamic>)? onSubmit;

  const CreateSubscriptionForm({
    super.key,
    this.onSubmit,
  });

  @override
  State<CreateSubscriptionForm> createState() => _CreateSubscriptionFormState();
}

class _CreateSubscriptionFormState extends State<CreateSubscriptionForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          ServerSelectField(),
        ],
      ),
    );
  }
}
