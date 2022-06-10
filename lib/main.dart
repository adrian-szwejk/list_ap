import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

//Class to house and display all quotes
class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

//State to allow for changing information
class _QuoteListState extends State<QuoteList> {
  //list of quotes
  List<Quote> quotes = [
    Quote(
      author: "Oscar Wilde",
      text: "Be yourself; everyone else is already taken",
    ),
    Quote(
      author: "Knaye West",
      text: "I am the reincarnation of Jesus Christ",
    ),
    Quote(
      author: "Spaghetti man",
      text: "I have nothing to declare except my genius",
    ),
    Quote(
      author: "Pablo",
      text: "Why do I live, just to suffer ",
    ),
  ];
  //Build function to display quotes as a column of QuoteCards(separate class)
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
        //Has a list of children mapped to a quotecard list through an anonymous function
        children: quotes
            .map((quote) => QuoteCard(
                  quote: quote,
                  //Delete requires a function to be passed in since we need a function for the onPressed feature of the delete button
                  delete: () {
                    //Define a setState function to remove a quote from the list of quotes above
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
