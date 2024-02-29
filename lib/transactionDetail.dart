import 'package:flutter/material.dart';
import 'package:internet_feature_apps/theme/theme_helper.dart';

class TransactionDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ), // Change the back icon here
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title:
            Text('Transaction Details', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
      Container(
          // color: Colors.yellow,
          // height: 100,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Image.asset('assets/images/pembayaran.png'),
            ],
          )),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            color: Colors.white,
            width: double.infinity,
            // height: 100,
            child: Column(
              children: [
                
                   const  SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Provider',
                      style: const TextStyle(color: Colors.black).copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text('Nethome',
                        style:
                            const TextStyle(color: Colors.black).copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                
                   const  SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ID Pelanggan',
                        style:
                            const TextStyle(color: Colors.black).copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                    Text('1123645718921',
                        style:
                            const TextStyle(color: Colors.black).copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                
                   const  SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Paket Layanan',
                        style:
                            const TextStyle(color: Colors.black).copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                    Text('Nethome 100 Mbps'),
                  ],
                ),
                
                   const  SizedBox(height: 20,),
              ],
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            color: Colors.white,
            width: double.infinity,
            // height: 100,
            child: Column(
              children: [
                
                   const  SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('No. Transaksi',
                        style:
                            const TextStyle(color: Colors.black).copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                    Text('BC444724669887648110',
                        style:
                            const TextStyle(color: Colors.black).copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  height: 0,
                  indent: 3,
                  endIndent: 3,
                  color: Colors.grey,
                ),
                
                   const  SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Waktu Transaksi',
                        style:
                            const TextStyle(color: Colors.black).copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                    Text('15 Feb 2024 10:32',
                        style:
                            const TextStyle(color: Colors.black).copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  height: 0,
                  indent: 3,
                  endIndent: 3,
                  color: Colors.grey,
                ),
                
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Jumlah Tagihan',
                        style:
                            const TextStyle(color: Colors.black).copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                    Text('Rp450.000',
                        style:
                            const TextStyle(color: Colors.black).copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  height: 0,
                  indent: 3,
                  endIndent: 3,
                  color: Colors.grey,
                ),
                
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Convenience Fee',
                        style:
                            const TextStyle(color: Colors.black).copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                    Text('Rp5.000',
                        style:
                            const TextStyle(color: Colors.black).copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  height: 0,
                  indent: 3,
                  endIndent: 3,
                  color: Colors.grey,
                ),
                
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Payment Method',
                        style:
                            const TextStyle(color: Colors.black).copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                    Text('BCA Virtual Account',
                        style:
                            const TextStyle(color: Colors.black).copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                
                
                const SizedBox(
                  height: 20,
                ),
              ],
            )),
      ),
      const SizedBox(
                  height: 20,
                ),
      Container(
          child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text:
                        "Perlu diketahui, proses verifikasi transaksi dapat memakan waktu \n hingga",
                    style: bodySmall.copyWith(color: neutralColor)),
                TextSpan(text: " 1x24 jam.", style: labelLarge)
              ]),
              textAlign: TextAlign.center))
        ],
      ),
    );
  }
}
