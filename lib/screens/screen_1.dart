import 'package:flutter/material.dart';
import 'package:screens_task/screens/screen2.dart';
import 'package:screens_task/utils/color.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 229, 229),
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: TextButton.icon(
              style: const ButtonStyle(
                iconColor: MaterialStatePropertyAll(Colors.blue),
                side: MaterialStatePropertyAll(
                  BorderSide(color: Color.fromARGB(255, 195, 194, 194)),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.info),
              label: const Text(
                "How Rewards work",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: const Color.fromARGB(255, 231, 229, 229),
              height: MediaQuery.of(context).size.height * 0.38,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "IOCL Rewards Balance",
                              style: TextStyle(
                                  color: MyColors.kBlueColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "₹ 46.41",
                              style: TextStyle(
                                  color: MyColors.kBlueColor,
                                  fontSize: 42,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                              "assets/images/indian-oil-logo-DD50377900-seeklogo.com.png"),
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(195, 238, 220, 180),
                        ),
                        height: MediaQuery.of(context).size.height * 0.175,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Convert Point to rewards",
                                    style: TextStyle(
                                        color: MyColors.kBlueColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "(1 Point = ₹ 1)",
                                    style: TextStyle(
                                        color: MyColors.kBlueColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Divider(color: Color.fromARGB(255, 98, 98, 111)),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Available Points",
                                        style: TextStyle(
                                          color: MyColors.kBlueColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "4,500",
                                        style: TextStyle(
                                          color: MyColors.kBlueColor,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: null,
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                        MyColors.kBlueColor,
                                      ),
                                    ),
                                    child: Text(
                                      "CONVERT NOW",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ScrenSecond(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: MyColors.kBlueColor,
                          size: 30,
                        ),
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                50,
                              ),
                              side: const BorderSide(
                                color: MyColors.kBlueColor,
                              ),
                            ),
                          ),
                        ),
                        label: const Text(
                          "View Details",
                          style: TextStyle(
                            color: MyColors.kBlueColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Center(
                    child: Container(
                      height: 8,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 231, 229, 229),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: null,
                        child: Text(
                          "Earned",
                          style: TextStyle(
                            color: MyColors.kBlueColor,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: null,
                        child: Text(
                          "Converted",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: null,
                        child: Text(
                          "Reedeemed",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 3,
                    width: 120,
                    color: MyColors.kBlueColor,
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 40,
                            width: double.infinity,
                            color: const Color.fromRGBO(241, 240, 240, 0.875),
                            child: const Padding(
                              padding: EdgeInsets.only(top: 8, left: 10),
                              child: Text(
                                "04 Jan 2024",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 146, 142, 142),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  "assets/images/indian-oil-logo-DD50377900-seeklogo.com.png",
                                  height: 20,
                                  width: 20,
                                ),
                                const Text(
                                  "Reward point earned For 3 JAN 2024",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: MyColors.kBlueColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: const Padding(
                              padding: EdgeInsets.only(left: 36.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Owned by ABDUL SAJID",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(223, 171, 171, 172),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "Created at 04 Jan 2024, 15.07",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(223, 171, 171, 172),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            trailing: const Padding(
                              padding: EdgeInsets.only(bottom: 38),
                              child: Text(
                                "+ 104.56",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Divider(),
                          ),
                          ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/indian-oil-logo-DD50377900-seeklogo.com.png",
                                  height: 20,
                                  width: 20,
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  "TDA Withheld",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: MyColors.kBlueColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: const Padding(
                              padding: EdgeInsets.only(left: 36.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Owned by ABDUL SAJID",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(223, 171, 171, 172),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "Debited at :04 Jan 2024, 15:07 PM",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(223, 171, 171, 172),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            trailing: const Padding(
                              padding: EdgeInsets.only(bottom: 38),
                              child: Text(
                                "-10.46",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
