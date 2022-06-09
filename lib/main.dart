import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
      author: "Oscar Wilde",
      text: "Be yourself; everyone else is already taken",
    ),
    Quote(
      author: "Julius Monke",
      text: "I have nothing to declare except my genius",
    ),
    Quote(
      author: "Oscar Wilder",
      text: "I have nothing to declare except my genius",
    ),
  ];
  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Column(
        children: <Widget>[
          Text(
            quote.text,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 7.0),
          Text(
            quote.author,
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.purple[600],
      ),
      body: Column(
        children: quotes
            .map((quote) => Text("${quote.text} - ${quote.author}"))
            .toList(),
      ),
    );
  }
}
