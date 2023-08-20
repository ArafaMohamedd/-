import 'package:flutter/material.dart';

List dataList = [
  {
    "categoryName": "Sports test",
    "Color": Colors.blue,
    "data": [
      {
        "question": "Who is the greatest player in history ?",
        "answer": [
          {"ans": "messi", "Score": 0},
          {"ans": "ronaldo", "Score": 0},
          {"ans": "zidan", "Score": 1},
          {"ans": "neymar", "Score": 0},
        ]
      },
      {
        "question": "who is the first clup won the Champions League",
        "answer": [
          {"ans": "ajax", "Score": 0},
          {"ans": "Bayarn", "Score": 0},
          {"ans": "Barcelona", "Score": 0},
          {"ans": "Real Madrid", "Score": 1},
        ]
      },

      {
        "question": "Who is the greatest player in Egypt ?",
        "answer": [
          {"ans": "Abotrika", "Score": 0},
          {"ans": "Al khateb", "Score": 0},
          {"ans": "zidan", "Score": 1},
          {"ans": "mo salah", "Score": 0},
        ]
      },

      {
        "question": "Who is the first country to win the World Cup ?",
        "answer": [
          {"ans": "Uruguay", "Score": 0},
          {"ans": "Brazil", "Score": 0},
          {"ans": "France", "Score": 1},
          {"ans": "England", "Score": 0},
        ]
      },

      {
        "question": "Which country has won the most World Cup titles ?",
        "answer": [
          {"ans": "Uruguay", "Score": 0},
          {"ans": "Brazil", "Score": 0},
          {"ans": "France", "Score": 1},
          {"ans": "England", "Score": 0},
        ]
      },

      {
        "question": "Which sport is known as the 'gentleman's game'?",
        "answer": [
          {"ans": "Football", "Score": 0},
          {"ans": "Rugby", "Score": 0},
          {"ans": "Cricket", "Score": 1},
          {"ans": "Tennis", "Score": 0}
        ]
      }


    ]
  },
  {
    "categoryName": "Calculating test",
    "Color": Colors.red,
    "data": [
      {
        "question": "What is 9 + 10",
        "answer": [
          {"ans": "10", "Score": 1},
          {"ans": "55", "Score": 0},
          {"ans": "19", "Score": 0},
          {"ans": "12", "Score": 0},
        ]
      },

      {
        "question": "What is the square root of 64?",
        "answer": [
          {"ans": "8", "Score": 1},
          {"ans": "16", "Score": 0},
          {"ans": "4", "Score": 0},
          {"ans": "32", "Score": 0}
        ]
      },


      {
        "question": "What is 7 * 11",
        "answer": [
          {"ans": "77", "Score": 0},
          {"ans": "1", "Score": 1},
          {"ans": "11", "Score": 0},
          {"ans": "22", "Score": 0},
        ]
      },

      {
        "question": "What is 7 * 10",
        "answer": [
          {"ans": "70", "Score": 0},
          {"ans": "1", "Score": 1},
          {"ans": "11", "Score": 0},
          {"ans": "22", "Score": 0},
        ]
      },

      {
        "question": "What is 8 * 10",
        "answer": [
          {"ans": "70", "Score": 0},
          {"ans": "1", "Score": 1},
          {"ans": "11", "Score": 0},
          {"ans": "80", "Score": 0},
        ]
      },

      {
        "question": "What is 7 * 11",
        "answer": [
          {"ans": "70", "Score": 0},
          {"ans": "77", "Score": 1},
          {"ans": "11", "Score": 0},
          {"ans": "22", "Score": 0},
        ]
      },



    ]
  },
  {
    "categoryName": "History test",
    "Color": Colors.yellow,
    "data": [
      {
        "question": "Who introduced Islam to Egypt?",
        "answer": [
          {"ans": "Amr ibn al-Aas", "Score": 1},
          {"ans": "Muhammed El Fateh", "Score": 0},
          {"ans": "Abu Bakr", "Score": 0},
          {"ans": "Omar Ibn Khattab", "Score": 0},
        ]
      },
      {
        "question": "The first muslim of the Muslim army",
        "answer": [
          {"ans": "Abu Bakr", "Score": 1},
          {"ans": "khaled Ibn elwaleed", "Score": 0},
          {"ans": "Omar Ibn Khattab", "Score": 0},
          {"ans": "Muhammed El Fateh", "Score": 0},
        ]
      },

      {
        "question": "Which war was fought between North and South in the United States?",
        "answer": [
          {"ans": "World War I", "Score": 0},
          {"ans": "Vietnam War", "Score": 0},
          {"ans": "American Civil War", "Score": 1},
          {"ans": "World War II", "Score": 0}
        ]
      },

      {
        "question": "Which ancient civilization built the pyramids?",
        "answer": [
          {"ans": "Greece", "Score": 0},
          {"ans": "Rome", "Score": 0},
          {"ans": "Egypt", "Score": 1},
          {"ans": "China", "Score": 0}
        ]
      }
    ]
  },

  {
    "categoryName": "Geography test",
    "Color": Colors.blueGrey,
    "data": [
      {
        "question": "What is the capital of France?",
        "answer": [
          {"ans": "Berlin", "Score": 0},
          {"ans": "London", "Score": 0},
          {"ans": "Paris", "Score": 1},
          {"ans": "Madrid", "Score": 0}
        ]
      },

      {
        "question": "Which river is the longest in the world?",
        "answer": [
          {"ans": "Nile", "Score": 1},
          {"ans": "Amazon", "Score": 0},
          {"ans": "Yangtze", "Score": 0},
          {"ans": "Mississippi", "Score": 0}
        ]
      },
      {
        "question": "What is the largest desert in the world?",
        "answer": [
          {"ans": "Sahara", "Score": 1},
          {"ans": "Gobi", "Score": 0},
          {"ans": "Arabian", "Score": 0},
          {"ans": "Antarctic", "Score": 0}
        ]
      },
    ]
  },

  {
    "categoryName": "Science test",
    "Color": Colors.pink,
    "data": [
      {
        "question": "What is the chemical symbol for gold?",
        "answer": [
          {"ans": "Au", "Score": 1},
          {"ans": "Ag", "Score": 0},
          {"ans": "Cu", "Score": 0},
          {"ans": "Fe", "Score": 0}
        ]
      },

      {
        "question": "What is the process by which plants make their own food?",
        "answer": [
          {"ans": "Respiration", "Score": 0},
          {"ans": "Photosynthesis", "Score": 1},
          {"ans": "Fermentation", "Score": 0},
          {"ans": "Transpiration", "Score": 0}
        ]
      },

      {
        "question": "What is the smallest unit of matter?",
        "answer": [
          {"ans": "Atom", "Score": 1},
          {"ans": "Molecule", "Score": 0},
          {"ans": "Cell", "Score": 0},
          {"ans": "Proton", "Score": 0}
        ]
      },
    ]
  },

  {
    "categoryName": "Literature test",
    "Color": Colors.purple,
    "data": [
      {
        "question": "Who wrote the play 'Romeo and Juliet'?",
        "answer": [
          {"ans": "Charles Dickens", "Score": 0},
          {"ans": "William Shakespeare", "Score": 1},
          {"ans": "Jane Austen", "Score": 0},
          {"ans": "Mark Twain", "Score": 0}
        ]
      },

      {
        "question": "Which novel features a white whale named Moby-Dick?",
        "answer": [
          {"ans": "War and Peace", "Score": 0},
          {"ans": "Moby-Dick", "Score": 1},
          {"ans": "Pride and Prejudice", "Score": 0},
          {"ans": "To Kill a Mockingbird", "Score": 0}
        ]
      },
      {
        "question": "Who is the author of '1984'?",
        "answer": [
          {"ans": "George Orwell", "Score": 1},
          {"ans": "Aldous Huxley", "Score": 0},
          {"ans": "Ray Bradbury", "Score": 0},
          {"ans": "J.K. Rowling", "Score": 0}
        ]
      },
    ]
  }
];

TextEditingController userNameControler = TextEditingController();
