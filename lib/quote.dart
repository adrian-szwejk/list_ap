class Quote {
  //Variables
  String? text;
  String? author;

  //Constructor

  Quote({this.text = "", this.author = ""});
  /*  This is another way of writing what's below
  Quote({txt = "", String auth = ""}) {
    text = txt;
    author = auth;
  }
  */
}

//Quote myQuote = Quote(txt: "this is an example", auth: "spaghetti man");  //EXAMPLE
