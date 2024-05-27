// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:ffi';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:rxdart/rxdart.dart';

Future onProjectLoad() async {
  // copy code of ref_religion collection in firestore to app state religionRef data type
// Assuming you have already initialized Firestore in your Flutter app

  Future getCollectionData(String coll_name) async {
    // Get a reference to the ref_religion collection in Firestore
    CollectionReference refCollection =
        FirebaseFirestore.instance.collection(coll_name);

    // Get the documents in the ref_religion collection
    QuerySnapshot refCollectionSnapshot = await refCollection.get();

    // Create a list to hold the religion data

    // Loop through the documents and add the data to the list

    refCollectionSnapshot.docs.forEach((doc) {
      DtRefTableStruct item = DtRefTableStruct();

      item.code = doc.get('code');
      item.source = doc.get('source');
      item.desc = doc.get('desc');
      item.lng = doc.get('lng');

      if (item.lng == FFAppState().currentLanguage) {
        FFAppState().update(() {
          FFAppState().appStateRefData.add(item);
        });
      }
    });
  }

// add list of numbers to the age, weight and height
  addListOfNumbers(String data_source, int value_from, int value_to) {
    // add numbers to app state

    for (int i = value_from; i <= value_to; i++) {
      DtRefTableStruct item = DtRefTableStruct();

      item.code = i;
      item.source = data_source;
      item.desc = i.toString();
      item.lng = 0; // all languages

      FFAppState().update(() {
        FFAppState().appStateRefData.add(item);
      });
    }
  }

  await getCollectionData('ref_data');

  addListOfNumbers('weight', 40, 150);
  addListOfNumbers('height', 130, 240);
  addListOfNumbers('age', 18, 70);
}
