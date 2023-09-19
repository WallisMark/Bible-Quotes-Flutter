import 'package:flutter/material.dart';
import 'package:flutter_application_1/bibleverse.dart';

void main() =>runApp( const MaterialApp(
home: QuoteList(),
));
class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<BibleVerse> bibleVerses = [
    // " Hebrews 11:1 (NIV) Now faith is confidence in what we hope for and assurance about what we do not see.",
    // "Ephesians 2:8-9 (NIV) For it is by grace you have been saved, through faith—and this is not from yourselves, it is the gift of God—not by works, so that no one can boast.",
    // "Matthew 17:20 (NIV) He replied, 'Because you have so little faith. Truly I tell you, if you have faith as small as a mustard seed, you can say to this mountain, 'Move from here to there,' and it will move. Nothing will be impossible for you.",
    // "Galatians 2:20 (NIV) I have been crucified with Christ and I no longer live, but Christ lives in me. The life I now live in the body, I live by faith in the Son of God, who loved me and gave himself for me.",
    // "James 2:17 (NIV) In the same way, faith by itself, if it is not accompanied by action, is dead."


  BibleVerse(author:"Hebrews 11:1 (NIV):", bibleVerse: " Now faith is confidence in what we hope for and assurance about what we do not see."),
  BibleVerse(author:"Ephesians 2:8-9 (NIV):" ,bibleVerse: " For it is by grace you have been saved, through faith—and this is not from yourselves, it is the gift of God—not by works, so that no one can boast."),
  BibleVerse(author:"Matthew 17:20 (NIV):" ,bibleVerse: " He replied, 'Because you have so little faith. Truly I tell you, if you have faith as small as a mustard seed, you can say to this mountain, 'Move from here to there,' and it will move. Nothing will be impossible for you."),
  BibleVerse(author:"Galatians 2:20 (NIV):" ,bibleVerse: " I have been crucified with Christ and I no longer live, but Christ lives in me. The life I now live in the body, I live by faith in the Son of God, who loved me and gave himself for me."),
  BibleVerse(author:"James 2:17 (NIV):" ,bibleVerse: " In the same way, faith by itself, if it is not accompanied by action, is dead.")
  ];

  Widget bibleQuotes(bibleVerse){
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
            Text(
              bibleVerse.bibleVerse,
              style: TextStyle(
                fontSize: 16.0,
                color:Colors.grey[600],
              ),
            ),
            Text(
              bibleVerse.author,
              style: TextStyle(
                fontSize: 14.0,
                color:Colors.grey[800],
              ),
            ),
            
      
           ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(" Faith Bibble Verses"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: bibleVerses.map((bibleVerse)=>bibleQuotes(bibleVerse)).toList(),
        )
    );
  }
}