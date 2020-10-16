import 'dart:io';

import 'package:flutter/material.dart';
import 'package:grate_places/providers/great_places.dart';
import 'package:grate_places/widgets/image_input.dart';
import 'package:provider/provider.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = '/add_place';

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();
  File _pickedImage;

  void _selectImage (File pickedImage){
     _pickedImage = pickedImage;
  }

  void _savePlace(){
    var greatPlace = Provider.of<GreatPlaces>(context, listen: false);
    if(_titleController.text.isEmpty || _pickedImage == null){
      print(_pickedImage);
      print(_titleController.text);

      return;
    }
    greatPlace.addPlace(_titleController.text, _pickedImage);
    Navigator.of(context).pop();


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new place'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),

              child: Column(children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Title'),
                  controller: _titleController,
                ),
                SizedBox(height: 10,),
                ImageInput(_selectImage),


              ],),
            ),
          )),
          Container(
            child: RaisedButton.icon(
                elevation: 0,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: _savePlace,
                color: Theme.of(context).accentColor,
                icon: Icon(Icons.add),
                label: Text('Add Place')),
          )
        ],
      ),
    );
  }
}