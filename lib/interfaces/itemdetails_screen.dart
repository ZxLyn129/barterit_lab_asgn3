import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../config_server.dart';
import '../models/item.dart';
import '../models/user.dart';

class BuyerItemDetailsScreen extends StatefulWidget {
  final Item itemdetails;
  final User user;

  const BuyerItemDetailsScreen(
      {super.key, required this.itemdetails, required this.user});

  @override
  State<BuyerItemDetailsScreen> createState() => _BuyerItemDetailsScreenState();
}

class _BuyerItemDetailsScreenState extends State<BuyerItemDetailsScreen> {
  late double screenHeight, screenWidth, resWidth;
  final CarouselController _carouselController = CarouselController();
  int currentIndex = 0;
  int qty = 0;
  int userqty = 1;
  double totalprice = 0.0;
  double singleprice = 0.0;
  final df = DateFormat('dd/MM/yyyy hh:mm a');

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth <= 600) {
      resWidth = screenWidth;
    } else {
      resWidth = screenWidth * 0.75;
      screenHeight = 1080;
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Item Details")),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
            child: SizedBox(
              width: screenWidth,
              child: Column(
                children: [
                  CarouselSlider(
                    carouselController: _carouselController,
                    items: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 10,
                        child: SizedBox(
                          width: screenWidth,
                          height: screenHeight * 0.5,
                          child: CachedNetworkImage(
                            fit: BoxFit.contain,
                            imageUrl:
                                "${MyConfig().server}/barterit/assets/itemImages/${widget.itemdetails.itmId}i.png",
                            placeholder: (context, url) =>
                                const LinearProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 10,
                        child: SizedBox(
                          width: screenWidth,
                          height: screenHeight * 0.5,
                          child: CachedNetworkImage(
                            fit: BoxFit.contain,
                            imageUrl:
                                "${MyConfig().server}/barterit/assets/itemImages/${widget.itemdetails.itmId}ii.png",
                            placeholder: (context, url) =>
                                const LinearProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 10,
                        child: SizedBox(
                          width: screenWidth,
                          height: screenHeight * 0.5,
                          child: CachedNetworkImage(
                            fit: BoxFit.contain,
                            imageUrl:
                                "${MyConfig().server}/barterit/assets/itemImages/${widget.itemdetails.itmId}iii.png",
                            placeholder: (context, url) =>
                                const LinearProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 200.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 1000),
                      viewportFraction: 0.8,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                  DotsIndicator(
                    dotsCount: 3,
                    position: currentIndex,
                    onTap: (position) {
                      setState(() {
                        currentIndex = position;
                      });
                      _carouselController.jumpToPage(currentIndex);
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 370,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 196, 255, 241),
                border: Border.all(color: Colors.blueGrey, width: 1),
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(10),
            child: Text(widget.itemdetails.itmName.toString(),
                textAlign: TextAlign.center,
                style: GoogleFonts.patuaOne(
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(23, 12, 23, 20),
            child: Table(
              columnWidths: const {
                0: FlexColumnWidth(3),
                1: FlexColumnWidth(7),
              },
              children: [
                TableRow(children: [
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text(
                        "Type",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.teal.shade800,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text(
                        widget.itemdetails.itmType.toString(),
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  )
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text(
                        "Description",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.teal.shade800,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text(
                        widget.itemdetails.itmDes.toString(),
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  )
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text(
                        "Quantity",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.teal.shade800,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text(
                        widget.itemdetails.itmQty.toString(),
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  )
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text(
                        "Price",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.teal.shade800,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text(
                        "RM ${double.parse(widget.itemdetails.itmPrice.toString()).toStringAsFixed(2)}",
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  )
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text(
                        "Location",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.teal.shade800,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text(
                        "${widget.itemdetails.itmLocality} / ${widget.itemdetails.itmState}",
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  )
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text(
                        "Date",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.teal.shade800,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text(
                        df.format(DateTime.parse(
                            widget.itemdetails.itmDate.toString())),
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
