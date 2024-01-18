import 'package:flutter/material.dart';
import 'package:screens_task/utils/color.dart';

class ScrenSecond extends StatelessWidget {
  const ScrenSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.kgreenColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
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
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: MyColors.kgreenColor,
                height: MediaQuery.of(context).size.height * 0.21,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Total Rewards Balance",
                        style: TextStyle(
                            color: MyColors.kBlueColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "₹ 318.34",
                        style: TextStyle(
                            color: MyColors.kBlueColor,
                            fontSize: 42,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 210,
                            height: 50,
                            child: TextButton.icon(
                              onPressed: null,
                              icon: const Icon(
                                Icons.download,
                                color: Colors.white,
                                size: 20,
                              ),
                              style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(
                                  MyColors.kBlueColor,
                                ),
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
                                "Download Statement",
                                style: TextStyle(
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: TextButton.icon(
                              onPressed: null,
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
                                "Details",
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
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 177,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Center(
                      child: Container(
                        height: 8,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 221, 221, 221),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "All Diesel rewards",
                      style: TextStyle(
                        color: MyColors.kBlueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 230, 228, 228))),
                              surfaceTintColor: Colors.transparent,
                              elevation: 4,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(width: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            width: 1,
                                            color: Colors.grey,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        child: Image.asset(
                                          "assets/images/indian-oil-logo-DD50377900-seeklogo.com.png",
                                          height: 25,
                                          width: 25,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        "IOCL Rewards",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: MyColors.kBlueColor,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(width: 145),
                                      const IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 20,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Divider(
                                      color: Color.fromARGB(255, 201, 201, 201),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Current Balance",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: MyColors.kBlueColor,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "₹ 46.41",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: MyColors.kBlueColor,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Earned till date",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: MyColors.kBlueColor,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "7,551.05",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: MyColors.kBlueColor,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                      color: Color.fromARGB(255, 255, 231, 202),
                                    ),
                                    width: double.infinity,
                                    height: 40,
                                    child: const Center(
                                      child: Text(
                                        "4,500 IOCL point available to conver",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: MyColors.kBlueColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 230, 228, 228),
                                ),
                              ),
                              surfaceTintColor: Colors.transparent,
                              elevation: 4,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(width: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            width: 1,
                                            color: Colors.grey,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        child: Image.asset(
                                          "assets/images/indian-oil-logo-DD50377900-seeklogo.com.png",
                                          height: 25,
                                          width: 25,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        "HPCL Rewards",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: MyColors.kBlueColor,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(width: 145),
                                      const IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 20,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Divider(
                                      color: Color.fromARGB(255, 201, 201, 201),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Current Balance",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: MyColors.kBlueColor,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "₹ 46.41",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: MyColors.kBlueColor,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Earned till date",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: MyColors.kBlueColor,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "1,777.70",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: MyColors.kBlueColor,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 25),
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
