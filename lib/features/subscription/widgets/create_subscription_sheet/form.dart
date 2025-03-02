import 'package:flutter/material.dart';
import 'package:subscription_app/core/data/entities/service.dart';
import 'package:subscription_app/features/subscription/widgets/create_subscription_sheet/form_fields/custom_fields.dart';
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
  //表单数据
  late Service _formData;

  @override
  void initState() {
    super.initState();
    // 初始化空表单数据
    _formData = Service.empty();
  }

  //选择服务
  void _handleServerSelected(int? id) {
    setState(() {
      _formData = _formData.copyWith(id: id, name: null, logo: null);
    });
  }

  //修改名称
  void _handleNameChanged(String name) {
    setState(() {
      _formData = _formData.copyWith(name: name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          ServerSelectField(
            onServerSelected: _handleServerSelected,
            serverId: _formData.id,
          ),
          SizedBox(height: 12),
          if (_formData.isCustom)
            CustomFields(onNameChanged: _handleNameChanged),
        ],
      ),
    );
  }
}
