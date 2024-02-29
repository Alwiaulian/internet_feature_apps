import 'package:flutter/material.dart';
import 'package:internet_feature_apps/main.dart';
import 'package:internet_feature_apps/theme/theme_helper.dart';
import 'package:internet_feature_apps/transactionDetail.dart';

class TransactionHistoryPage extends StatelessWidget {
  List<Item> items = [
    Item(image: 'assets/images/f1.png', name: 'Nethome', price: 450000),
    Item(image: 'assets/images/f2.png', name: 'Bizzcom', price: 250000),
    Item(image: 'assets/images/f2.png', name: 'Nethome', price: 450000),
    Item(image: 'assets/images/f1.png', name: 'Bizzcom', price: 250000),
    Item(image: 'assets/images/f2.png', name: 'Bizzcom', price: 250000),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ), // Change the back icon here
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'Transaction History',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
          color: Colors.white,
          width: double.infinity,
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => TransactionDetailPage(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Image.asset(
                                item.image,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item.name,
                                            style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600)
                                                .copyWith(
                                                    color:
                                                        neutralColorDark),
                                          ),
                                          const SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            'Due date on 16 Feb 2024',
                                            style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400)
                                                .copyWith(
                                                    color: neutralColor),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 70.0, top: 10),
                                        child: Text(
                                          item.price.toStringAsFixed(0),
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ).copyWith(
                                              color: neutralColorDark),
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                ],
                              ),
                              
                            ]),
                            
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 10,
                      color: yipyGrey,
                      thickness: 1,
                      indent: 18,
                      endIndent: 18,
                    ),
                  ],
                );
              })
              ),
    );
  }
}

class Item {
  final String image;
  final String name;
  final double price;

  Item({required this.image, required this.name, required this.price});
}
