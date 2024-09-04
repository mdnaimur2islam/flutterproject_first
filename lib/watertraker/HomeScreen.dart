import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final TextEditingController _glassNoTEController =
      TextEditingController(text: '1');
  List<WaterTrack> waterTrackList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Count No. of Glass water'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         _TotalWaterGlassCount(),
          const SizedBox(height: 5,width: 10,),
          Expanded(
            child: _SerialWiseListView()
          ),
        ],
      ),
    );
  }
  Widget _SerialWiseListView(){
    return ListView.separated(
      itemCount: waterTrackList.length,
      itemBuilder: (context, index) {
        final WaterTrack waterTrack=waterTrackList[index];
        return ListTile(
          tileColor: Colors.teal,
          title: Text('${waterTrack.dateTime.hour}:${waterTrack.dateTime.minute}'),
          subtitle: Text('${waterTrack.dateTime.day}/${waterTrack.dateTime.month}/${waterTrack.dateTime.year}'),
          leading: CircleAvatar(
              backgroundColor: Colors.cyanAccent,
              child: Text('${index}')),

          trailing: CircleAvatar(
            backgroundColor: Colors.cyanAccent,
            child: IconButton(
              onPressed: ()=>_DeleteOnTap(index),
              icon: Icon(Icons.delete),
              ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },

    );
  }
 Widget _TotalWaterGlassCount(){
    return  Column (
      children: [
        CircleAvatar(
          backgroundColor: Colors.cyanAccent,
          radius: 50,
          child: Text(
            style: TextStyle(fontWeight: FontWeight.bold),
            CountTotalGlass().toString(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: const Text("Glasses"),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 75,
                  height: 35,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _glassNoTEController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                  )),
              SizedBox(height: 5,width: 10,),
              ElevatedButton(
                onPressed: _AddWaterTraker,
                child: Text("ADD"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyanAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
}
  int CountTotalGlass() {
    int TotalGlass = 0;
    for (WaterTrack t in waterTrackList) {
      TotalGlass += t.noOfGlass;
    }
    // print(TotalGlass);
    return TotalGlass;
  }

  void _AddWaterTraker() {
    if (_glassNoTEController.text.isEmpty) {
      _glassNoTEController.text = '1';
    }
    final int noOfGlass = int.tryParse(_glassNoTEController.text) ?? 1;
    WaterTrack waterTrack =
        WaterTrack(noOfGlass: noOfGlass, dateTime: DateTime.now());
    waterTrackList.add(waterTrack);
    setState(() {});
  }
  void _DeleteOnTap(int index){
    waterTrackList.removeAt(index);
    setState(() {

    });
  }
}

class WaterTrack {
  final int noOfGlass;
  final DateTime dateTime;
  WaterTrack({required this.noOfGlass, required this.dateTime});
}
