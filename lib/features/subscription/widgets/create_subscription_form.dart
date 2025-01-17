import 'package:flutter/material.dart';

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
    return Container();
  }
}
