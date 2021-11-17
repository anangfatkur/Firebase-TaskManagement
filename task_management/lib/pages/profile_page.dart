import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management/pages/auth/login_page.dart';
import 'package:task_management/ui/widgets/button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/profile.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.20,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 60,
                  // radius: 60,
                  backgroundImage: AssetImage("images/profile.jpg"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 70),
          // ignore: sized_box_for_whitespace
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "aa@gmail.com",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 70),
          Center(
            child: MyButton(
              label: "Logout",
              onTap: () async {
                await Get.to(const LoginPage());
                // _taskController.getTasks();
              },
            ),
          ),
        ],
      ),
    );
  }
}
