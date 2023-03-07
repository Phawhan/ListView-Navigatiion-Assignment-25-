import 'package:flutter/material.dart';

class intern {
  late int id;
  late String firstName;
  late String lastName;
  late String userName;
  late String mailId;
  late int phoneNumber;
  late String bloodGroup;
  late String college;
  late String branch;
  late String location;

  intern(
      this.id,
      this.firstName,
      this.lastName,
      this.userName,
      this.mailId,
      this.phoneNumber,
      this.bloodGroup,
      this.college,
      this.branch,
      this.location) {}
}

List<intern> users = [];
