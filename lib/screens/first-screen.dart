import 'package:flutter/material.dart';
import 'package:listview/screens/second-screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    for (int i = 0; i < 5; i++) {
      users.add(Intern(
        id: 1083,
        firstName: "Phawhan Saii",
        lastName: "Gajjalakonda",
        userName: "Phawhan",
        mailId: "saii@divami.com",
        phoneNumber: 955034633,
        bloodGroup: "AB-",
        college: "LBRCE",
        branch: "ECE",
        location: "Vijayawada",
      ));
      users.add(Intern(
          id: 1084,
          firstName: "Syed",
          lastName: "Juned",
          userName: "juned",
          mailId: "juned@divami.com",
          phoneNumber: 630068406,
          bloodGroup: "A+",
          college: "CMR",
          branch: "CSE",
          location: "Nizamabad"));
      users.add(Intern(
          id: 1085,
          firstName: "sikha",
          lastName: "madhu",
          userName: "sikhamadhu",
          mailId: "sikha@divami.com",
          phoneNumber: 0000000000,
          bloodGroup: "0+",
          college: "CMR",
          branch: "CSE",
          location: "earth "));
      users.add(Intern(
        id: 1086,
        firstName: "Harsha",
        lastName: "Reddy",
        userName: "akkatamudu",
        mailId: "akkatammudu@divami.com",
        phoneNumber: 7896325410,
        bloodGroup: "A+",
        college: "CMR",
        branch: "CSE",
        location: "Nizambad",
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Divami-Interns"),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("S.No : "),
                      Text(users[index].id.toString())
                    ],
                  ),
                  Row(
                    children: [Text("Name : "), Text(users[index].firstName)],
                  ),
                  TextButton(
                      onPressed: () => {
                            Navigator.pushNamed(context, "details",
                                arguments: users[index])
                          },
                      child: Icon(Icons.details_rounded))
                ],
              ),
            );
          }),
    );
  }
}

class Intern {
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

  Intern({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.mailId,
    required this.phoneNumber,
    required this.bloodGroup,
    required this.college,
    required this.branch,
    required this.location,
  }) {}
}

List<Intern> users = [];
