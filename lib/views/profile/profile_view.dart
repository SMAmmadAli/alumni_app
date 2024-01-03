import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  height: 180,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                      ),
                      color: Color(0xffEBF2FF)),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/gresh.png"),
                        ),
                        title: Text(
                          "Gresh Kumar",
                          style: TextStyle(
                              color: Color(0xff2C2B2B),
                              fontWeight: FontWeight.w500,
                              fontSize: 24),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Card(
                  elevation: 1.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.person_3_outlined,
                      color: Color(0xff2C2B2B),
                      size: 25,
                    ),
                    title: Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: Color(0xff2C2B2B),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff2C2B2B),
                      size: 18,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Card(
                  elevation: 1.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.notifications_none_outlined,
                      color: Color(0xff2C2B2B),
                      size: 25,
                    ),
                    title: Text(
                      "Notifications",
                      style: TextStyle(
                          color: Color(0xff2C2B2B),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff2C2B2B),
                      size: 18,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Card(
                  elevation: 1.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.language_sharp,
                      color: Color(0xff2C2B2B),
                      size: 25,
                    ),
                    title: Text(
                      "Language",
                      style: TextStyle(
                          color: Color(0xff2C2B2B),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff2C2B2B),
                      size: 18,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Card(
                  elevation: 1.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.contact_page_outlined,
                      color: Color(0xff2C2B2B),
                      size: 25,
                    ),
                    title: Text(
                      "Contact Us",
                      style: TextStyle(
                          color: Color(0xff2C2B2B),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff2C2B2B),
                      size: 18,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Card(
                  elevation: 1.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.logout_outlined,
                      color: Color(0xff2C2B2B),
                      size: 25,
                    ),
                    title: Text(
                      "Log out",
                      style: TextStyle(
                          color: Color(0xff2C2B2B),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff2C2B2B),
                      size: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
