import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:arabic_font/arabic_font.dart';
import 'package:poetry/Poetry.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController inputTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('بوصلة الشعر'),
        backgroundColor: Colors.brown.shade500,
        foregroundColor: Colors.white,
        titleTextStyle:
            ArabicTextStyle(arabicFont: ArabicFont.dubai, fontSize: 25),
        toolbarHeight: 100,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 180),
            child: Text(
              'إبحث عن أدبك',
              style: ArabicTextStyle(
                arabicFont: ArabicFont.dubai,
                fontSize: 36,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: inputTextController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'شعر أو شاعر...',
                  hintStyle: ArabicTextStyle(
                      arabicFont: ArabicFont.dubai, fontSize: 16),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(width: 2, color: Colors.brown.shade400)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 3, color: Colors.brown))),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: sampleNotes.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.grey.shade200,
                    child: ListTile(
                        contentPadding: EdgeInsets.all(15),
                        title: RichText(
                            text: TextSpan(
                                style: ArabicTextStyle(
                                    arabicFont: ArabicFont.amiri,
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                                text: '${sampleNotes[index].content}')),
                        subtitle: RichText(
                          text: TextSpan(
                              style: ArabicTextStyle(
                                  arabicFont: ArabicFont.dubai,
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                              text: 'الشاعر: ',
                              children: [
                                TextSpan(
                                    style: ArabicTextStyle(
                                        arabicFont: ArabicFont.dubai,
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    text: '${sampleNotes[index].name}'),
                              ]),
                        )),
                  );
                }),
          ))
        ],
      ),
    );
  }
}
