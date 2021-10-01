import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/models/customer.dart';
import 'package:http/http.dart' as http;

class CustomerService extends ChangeNotifier {
  final String _baseUrl = '192.168.0.105:8000';

  final List<Customer> customers = [];
  bool isLoading = true;

  CustomerService() {
    this.loadCustomers();
  }

  List<Customer> parseCustomer(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Customer>((json) => Customer.fromJson(json)).toList();
  }
  //Fetch Data

  Future<List<Customer>> loadCustomers() async {
    this.isLoading = true;
    notifyListeners();

    final url = Uri.http(_baseUrl, 'api/customers');
    final resp = await http.get(url);
    final Map<String, dynamic> customerMap = json.decode(resp.body);
    for (var customer in customerMap["customers"]) {
      final tempCustomer = Customer.fromMap(customer);
      this.customers.add(tempCustomer);
    }

    this.isLoading = false;
    notifyListeners();

    return this.customers;
  }
}
