import 'package:flutter/material.dart';
import 'package:listview/screens/first-screen.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    Intern user = ModalRoute.of(context)?.settings.arguments as Intern;
    return Scaffold(
      appBar: AppBar(
        title: Text("Intern Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
        child: Table(
          children: [
            TableRow(children: [Text("ID : "), Text(user.id.toString())]),
            TableRow(children: [Text("First Name : "), Text(user.firstName)]),
            TableRow(children: [Text("Last Name : "), Text(user.lastName)]),
            TableRow(children: [Text("User Name : "), Text(user.userName)]),
            TableRow(children: [
              Text("Phone Number : "),
              Text(user.phoneNumber.toString())
            ]),
            TableRow(children: [Text("E-Mail Id : "), Text(user.mailId)]),
            TableRow(children: [Text("Blood Group : "), Text(user.bloodGroup)]),
            TableRow(children: [Text("College : "), Text(user.college)]),
            TableRow(children: [Text("Branch : "), Text(user.branch)]),
            TableRow(children: [Text("Address : "), Text(user.location)]),
          ],
        ),
      ),
    );
  }
}
