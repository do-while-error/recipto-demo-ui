import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:project_app/project_page/project_main_controller.dart';
import 'package:project_app/widgets/cards.dart';

class ProjectMainScreen extends GetView<MainProjectController> {
  const ProjectMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipto'),
        centerTitle: true,
        // automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            // color: Colors.tealAccent,
                            height: 80,
                            width: 100,
                            child: Image.asset('assets/images/mb.png'),
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Magnolia Bakery',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 3),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '3% Cashback • ₹250 Welcome Bonus',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                // SizedBox(height: 4),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13),
                      child: Text(
                        'Claim Deals',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    height: 530,
                    // color: Colors.teal,
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        // childAspectRatio: 1.0,
                        mainAxisExtent: 250.0,
                      ),
                      padding: const EdgeInsets.all(10.0),
                      children: const [
                        MyCards(
                          color: Color.fromARGB(255, 181, 220, 250),
                          ImageString: 'assets/images/Pay at store.png',
                          LightText: 'Pay using my',
                          DarkText: 'Balance ⦿ 500',
                          ButtonText: 'Pay Bill',
                        ),
                        MyCards(
                          color: Color.fromARGB(255, 241, 204, 248),
                          ImageString: 'assets/images/Buy Coins.png',
                          LightText: 'Buy ⦿ 500',
                          DarkText: 'for just ₹450',
                          ButtonText: 'Get for ₹450',
                        ),
                        MyCards(
                          color: Color.fromARGB(255, 248, 240, 168),
                          ImageString: 'assets/images/Offers.png',
                          LightText: 'Shop above ₹899',
                          DarkText: '& get ⦿ 50',
                          ButtonText: 'Shop now',
                        ),
                        MyCards(
                          color: Color.fromARGB(255, 140, 250, 246),
                          ImageString: 'assets/images/Store Cashback.png',
                          LightText: 'Purchase at store',
                          DarkText: '& get 5% back',
                          ButtonText: 'Purchase now',
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isDismissible: true,
                      elevation: 1,
                      barrierColor: Colors.transparent,
                      // showDragHandle: true,
                      useSafeArea: true,
                      // isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30.0), // Curved radius on top
                        ),
                      ),
                      builder: (context) => Container(
                        // color: Colors.cyan,
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        width: double.infinity,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 15),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Proof of Transaction',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            // SizedBox(height: 5),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Scan Receipt/share payment screenshot to earn',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        side: const BorderSide(
                                            color: Colors.grey, width: 1.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        elevation: 0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Share Payment image',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 80, 98, 216),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(width: 5),
                                          Image.asset(
                                            'assets/images/UPI Image.png',
                                            width: 40,
                                            height: 40,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 80, 98, 216),
                                        side: const BorderSide(
                                            color: Colors.grey, width: 1.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        elevation: 0,
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Scan Receipt',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Add proof of payment',
                    style: TextStyle(
                        color: Colors.blueGrey[400],
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
