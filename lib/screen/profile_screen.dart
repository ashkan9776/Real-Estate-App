import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wei = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: hei * 0.02),
                child: Container(
                  width: wei * 0.85,
                  height: hei * 0.15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: const Offset(4, 9),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset("assets/images/profile1.png"),
                      ),
                      SizedBox(width: wei * 0.01),
                      Padding(
                        padding: EdgeInsets.only(top: hei * 0.03),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Ashkan Tirandazi",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: hei * 0.005),
                            const Text(
                              "atirandazi@gmail.com",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: hei * 0.01),
                            Row(
                              children: [
                                const Icon(
                                  Icons.facebook,
                                  color: Color(0xFF4975E9),
                                ),
                                SizedBox(width: wei * 0.01),
                                const Icon(
                                  Icons.telegram,
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(width: wei * 0.01),
                                const Icon(
                                  Icons.wechat,
                                  color: Colors.green,
                                ),
                                SizedBox(width: wei * 0.01),
                                const Icon(
                                  Icons.call,
                                  color: Colors.amber,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: hei * 0.07),
                child: Container(
                  width: wei * 0.85,
                  height: hei * 0.44,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey.shade300),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: const Offset(4, 9),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/icon1.png'),
                            SizedBox(width: wei * 0.03),
                            const Text(
                              "My Account",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Image.asset('assets/images/icon2.png'),
                            SizedBox(width: wei * 0.03),
                            const Text(
                              "Notifications",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Image.asset('assets/images/icon3.png'),
                            SizedBox(width: wei * 0.03),
                            const Text(
                              "Settings",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Image.asset('assets/images/icon4.png'),
                            SizedBox(width: wei * 0.03),
                            const Text(
                              "My Favorite",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Image.asset('assets/images/icon5.png'),
                            SizedBox(width: wei * 0.03),
                            const Text(
                              "Privacy Policy",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: hei * 0.03,
              ),
              Container(
                height: hei * 0.07,
                width: wei * 0.5,
                decoration: BoxDecoration(
                    color: const Color(0xFF4975E9),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "Log out",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: hei * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
