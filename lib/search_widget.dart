import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  String searchText = "";
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5, right: 10, left: 10),
      child: Column(
        children: [
          Text(searchText, style: TextStyle(color: Colors.white)),
          Container(
            alignment: .centerRight,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              controller: _textController,
              onChanged: (value) {
                setState(() {
                  searchText = _textController.value.text;
                });
              },

              textDirection: TextDirection.rtl,

              decoration: InputDecoration(
                border: InputBorder.none,
                // contentPadding: EdgeInsets.all(20),
                hintText: "إبحث هنا ",

                // fillColor: Colors.grey,
                // filled: true,
                labelStyle: TextStyle(color: Colors.white),
                hintStyle: TextStyle(color: Colors.white54),
                hintTextDirection: TextDirection.rtl,
                suffixIcon: Icon(Icons.search, color: Colors.white54),
              ),
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
