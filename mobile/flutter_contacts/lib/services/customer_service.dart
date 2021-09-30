import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_contacts/models/customer.dart';
import 'package:http/http.dart' as http;

class CustomerService extends ChangeNotifier {
  final String _baseUrl = '192.168.1.115:8000';

  final List<Customer> customers = [];
  bool isLoading = true;

  CustomerService() {
    this.loadCustomers();
  }

  //Fetch Data

  Future loadCustomers() async {
    final url = Uri.http(_baseUrl, 'api/customers');
    // print(url);
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    print(decodedData["customers"][0]);
    // print(customerMap);
  }
}
