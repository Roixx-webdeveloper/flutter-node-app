import 'package:flutter/material.dart';
import 'package:flutter_contacts/services/customer_service.dart';
import 'package:flutter_contacts/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final customerService = Provider.of<CustomerService>(context);

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Customer'),
          ),
          body: ListView.builder(
              itemCount: customerService.customers.length,
              itemBuilder: (BuildContext context, int index) =>
                  CustomerTile(customer: customerService.customers[index]))),
    );
  }
}
