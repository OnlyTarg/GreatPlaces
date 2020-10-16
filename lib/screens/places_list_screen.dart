import 'package:flutter/material.dart';
import 'package:grate_places/providers/great_places.dart';
import 'package:grate_places/screens/add_place_screen.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your places'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
          )
        ],
      ),
      body: Consumer<GreatPlaces>(
        child: Center(
          child: const Text('Got no places yet,statt adding some'),
        ),
        builder: (context, greatplaces, child) => greatplaces.items.length <= 0
            ? child
            : ListView.builder(
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(greatplaces.items[index].image),
                  ), title: Text(greatplaces.items[index].title),
                  onTap: () {
                    //go to detail page
                  },
                ),
                itemCount: greatplaces.items.length,
              ),
      ),
    );
  }
}
