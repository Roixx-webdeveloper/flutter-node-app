import 'package:flutter/material.dart';
import 'package:flutter_contacts/models/customer.dart';

class CustomerTile extends StatelessWidget {
  final Customer customer;

  const CustomerTile({Key? key, required this.customer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.contacts_rounded),
      title: Text(customer.name),
    );
  }
}
