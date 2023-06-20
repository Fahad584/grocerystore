import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';
import '../model/GroceryModel.dart';
import 'package:flutter/services.dart' as rootBundle;

class MuttonScreen extends StatefulWidget {
  static const routeName = '/muttonScreen';
  const MuttonScreen({Key? key}) : super(key: key);

  @override
  State<MuttonScreen> createState() => _MuttonScreenState();
}

class _MuttonScreenState extends State<MuttonScreen> {
  Future<List<GroceryModel>> ReadJsonData() async {
    final jsondata =
    await rootBundle.rootBundle.loadString('jsonfiles/mutton.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => GroceryModel.fromJson(e)).toList();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ReadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: sixthColor,
        appBar: AppBar(
          backgroundColor: greenColor,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: thirdColor,
              )),
          title: Text(
            "Mutton",
            style: GoogleFonts.acme(
                color: thirdColor, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        body: FutureBuilder(
          future: ReadJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<GroceryModel>;
              return ListView.builder(
                  itemCount: items == null ? 0 : items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              child: Image(
                                image: NetworkImage(
                                    items[index].imageURL.toString()),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8),
                                        child: Text(
                                          items[index].name.toString(),
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
