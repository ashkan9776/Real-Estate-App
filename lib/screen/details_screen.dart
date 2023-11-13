import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final String img;
  final String title;
  const DetailsScreen({super.key, required this.img, required this.title});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wei = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: wei * 1,
              height: 240,
              child: Image(
                fit: BoxFit.fitWidth,
                image: AssetImage(widget.img),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      widget.title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: hei * 0.01),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 16, 36, 255),
                      ),
                      Text(
                        "Alexander City, Alamba",
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                      SizedBox(width: wei * 0.25),
                      const Icon(Icons.star, color: Colors.amber),
                      const Text("4.9")
                    ],
                  ),
                  SizedBox(height: hei * 0.01),
                  Padding(
                    padding: const EdgeInsets.only(left: 9.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.bed,
                              color: Colors.grey.shade300,
                            ),
                            SizedBox(width: wei * 0.01),
                            Text("2")
                          ],
                        ),
                        SizedBox(width: wei * 0.05),
                        Row(
                          children: [
                            Icon(
                              Icons.apartment,
                              color: Colors.grey.shade300,
                            ),
                            SizedBox(width: wei * 0.01),
                            Text("3")
                          ],
                        ),
                        SizedBox(width: wei * 0.05),
                        Row(
                          children: [
                            Icon(
                              Icons.reviews,
                              color: Colors.grey.shade300,
                            ),
                            SizedBox(width: wei * 0.01),
                            Text("750")
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: hei * 0.004),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        const Text(
                          "\$750",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 6, 55, 170),
                          ),
                        ),
                        Text(
                          "/mo",
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                        SizedBox(width: wei * 0.12),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: hei * 0.01,
                  ),
                  const Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "About House",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text(
                        "A paired home is two homes that share a wall and have opposite side entries. The whole building is designed to look like one single larger home. Unlike a front to front duplex, the paired home helps provide more privacy for the homeowners."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Lesting Agent",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Image3.png"),
                        SizedBox(width: wei * 0.05),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lyia Alone",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              "Owner",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(width: wei * 0.17),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.message,
                            color: Color.fromARGB(255, 163, 163, 164),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.call,
                            color: Color(0xFF4975E9),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 100,
          height: 50,
          decoration: ShapeDecoration(
            color: const Color(0xFF4975E9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.bookmark, color: Colors.white),
              Text(
                "Book Now",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
