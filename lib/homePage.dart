import 'package:flutter/material.dart';
import 'package:internet_feature_apps/theme/theme_helper.dart';
import 'package:internet_feature_apps/transactionHistory.dart';
import 'package:intl/intl.dart';
import 'theme/theme_helper.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Item> items = [
    Item(image: 'assets/images/f1.png', name: 'Rp.450.000', price: 450000),
    Item(image: 'assets/images/f1.png', name: 'Rp.250.000', price: 250000),
  ];
  List<Item> checkedItems = [];

  void _toggleCheck(Item item) {
    setState(() {
      if (checkedItems.contains(item)) {
        checkedItems.remove(item);
      } else {
        checkedItems.add(item);
      }
    });
  }

  List<bool> isShowDetail1 = [false, false, false];

  void toggleVisibility(int index) {
    setState(() {
      isShowDetail1[index] = !isShowDetail1[index];
    });
  }

  void _checkAll() {
    setState(() {
      checkedItems.clear();
      checkedItems.addAll(items);
    });
  }

  double _calculateTotal() {
    double total = 00;
    for (Item item in checkedItems) {
      total += item.price;
    }
    return total;
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        centerTitle: true,
        title: const Text(
          'Shopping Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 60,
              margin: const EdgeInsets.only(bottom: 20),

              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
              decoration: BoxDecoration(
                color: yellowColor1,
                border: Border.all(
                  color: yellowAmberA200,
                  width: 1,
                ),
              ).copyWith(borderRadius: BorderRadius.circular(6)),
              child: Row(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset('assets/images/info_out.png'),
                  Expanded(
                      child: Container(
                          width: 257,
                          margin: const EdgeInsets.only(left: 12, top: 1),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Perlu diketahui, proses verifikasi transaksi dapat\nmemakan waktu hingga",
                                    style: bodySmall),
                                TextSpan(text: " 1x24 jam.", style: labelLarge)
                              ]),
                              textAlign: TextAlign.left)))
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose  All:',
                  style: const TextStyle(color: Colors.black).copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: _checkAll,
                  child: const Text('Choose All'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 2, color: Colors.grey.withOpacity(0.2))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(children: [
                                Image.asset(
                                  item.image,
                                  width: 50,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.name,
                                      style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)
                                          .copyWith(color: neutralColorDark),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      'Due date on 16 Feb 2024',
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)
                                          .copyWith(color: neutralColor),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Checkbox(
                              activeColor: Colors.red,
                              value: checkedItems.contains(item),
                              onChanged: (value) {
                                _toggleCheck(item);
                              },
                            ),
                            // ListTile(
                            //   title: Text(item.name),
                            //   subtitle: Text('\$${item.price.toString()}'),
                            //   trailing: Checkbox(
                            //     value: checkedItems.contains(item),
                            //     onChanged: (value) {
                            //       _toggleCheck(item);
                            //     },
                            //   ),
                            // ),
                          ],
                        ),

                        Visibility(
                          visible: isShowDetail1[index],
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        width: 2,
                                        color: Colors.grey.withOpacity(0.2)))),
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Provider',
                                          style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400)
                                              .copyWith(
                                                  color: neutralColorDark),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Expanded(
                                          child: Text(
                                        'Nethome',
                                        style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400)
                                            .copyWith(color: neutralColorDark),
                                        textAlign: TextAlign.end,
                                      )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                        'Id Pelanggan',
                                        style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400)
                                            .copyWith(color: neutralColorDark),
                                        textAlign: TextAlign.start,
                                      )),
                                      Expanded(
                                          child: Text(
                                        '1123645718921',
                                        style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400)
                                            .copyWith(color: neutralColorDark),
                                        textAlign: TextAlign.end,
                                      )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                        'Paket layanan',
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400)
                                            .copyWith(color: neutralColorDark),
                                      )),
                                      Expanded(
                                          child: Text('Nethome 100 Mbps',
                                              textAlign: TextAlign.end,
                                              style: const TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400)
                                                  .copyWith(
                                                      color:
                                                          neutralColorDark))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 2,
                                      color: Colors.grey.withOpacity(0.2)))),
                          child: TextButton(
                              onPressed: () {
                                toggleVisibility(index);
                              },
                              child: Text(
                                isShowDetail1[index] ? 'Closed' : 'See Details',
                                style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)
                                    .copyWith(color: yipyRed),
                              )),
                        )

                        // Divider(height: 10 ,color: Colors.black45,),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/transaction_history');
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 108.0),
              child: Container(
                height: 60,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transaction History',
                      style: const TextStyle(color: Colors.black).copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
          )

          // SizedBox(height: 30,),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 100,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/ic_bill.png'),
                      const SizedBox(
                        width: 6,
                      ),
                      const Text(
                        'Total Payment',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    // rupiahFormat.format({_calculateTotal()})
                    'Rp ${_calculateTotal().toStringAsFixed(0)}'
                    ,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    // Logic for payment
                  },
                  child: Text('PAY NOW'),
                ),
              ),
            ],
          ),
        ),
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