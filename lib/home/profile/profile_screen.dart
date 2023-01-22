import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Profile",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.edit_note,
                color: Colors.black,
              ),
            ],
          ),
        ),
        nameSection(),
        detailSection(),
        buttons()
      ],
    ));
  }

  Widget nameSection() {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width * 0.3,
            height: size.width * 0.3,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            width: size.width * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //name
                Container(
                  padding: const EdgeInsets.all(4),
                  child: const Text(
                    "Emma Philips",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                //comapny name
                Container(
                  padding: const EdgeInsets.all(4),
                  child: const Text(
                    "Blue Cold",
                    style: TextStyle(),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget detailSection() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      child: ListView(
        children: [
          detailTile(
              name: "Phone",
              detail: "6363865667",
              icon: CupertinoIcons.phone_fill),
          detailTile(
              name: "Email",
              detail: "sunil@gmail.com",
              icon: CupertinoIcons.mail_solid),
          detailTile(
              name: "Address",
              detail:
                  "Lorem Ipsum sit amet, consectetur elit, sed do incididunt ut",
              icon: CupertinoIcons.location_solid)
        ],
      ),
    );
  }

  Widget detailTile(
      {required String name, required String detail, required IconData icon}) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
        ],
      ),
      title: Text(detail),
      subtitle: Text(name),
    );
  }

  Widget buttons() {
    return Column(
      children: [
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.settings),
          title: const Text(
            "Settings",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.logout,
            color: Colors.red.shade900,
          ),
          title: Text(
            "Logout",
            style: TextStyle(
              color: Colors.red.shade900,
            ),
          ),
        )
      ],
    );
  }
}
