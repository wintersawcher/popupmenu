import 'package:flutter/material.dart';

import 'enum.dart';
import 'enum.dart';
class Mybottomshet extends StatefulWidget {
  //const Mybottomshet({Key? key}) : super(key: key);

  @override
  State<Mybottomshet> createState() => _MybottomshetState();
}

class _MybottomshetState extends State<Mybottomshet> {
  String thu =  "";
  int tuois = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SafeArea(
        child: Column(
          children: [
            Container(
                //margin: EdgeInsets.only(top: 50),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        thu,style: TextStyle(color: Colors.red,fontSize: 20,
                      )
                        ,),
                      Text(tuois.toString(),style: TextStyle(fontSize: 24),)
                    ],
                  ),)),
            ElevatedButton(
                onPressed: () =>
                  _onBottomSheet()
                ,
                child:Text("Bam vao")
            )
          ],
        ),
      ),
    );
  }
  void _onBottomSheet() {
      showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context){
            return FractionallySizedBox(
              heightFactor: 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: ListView.builder(
                        shrinkWrap: true,
                       itemCount: Thu.values.length,
                        itemBuilder: (context,index){
                         return GestureDetector(
                           onTap: (){
                             setState(() {
                               thu = Chonthu(Thu.values[index],);
                               print("that ki la");
                             });
                           },
                               child: Container(
                                   padding: EdgeInsets.only(top: 20),
                                   child: Text(Thu.values[index].name,style: TextStyle(fontSize: 16,color: Colors.orange),)));

                    }
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tuoi"),
                      Container(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                            itemCount: tuoi.length,
                            itemBuilder: (context,index){
                              return GestureDetector(
                                onTap: (){
                                 setState(() {
                                    tuois = tuoi[index]; 
                                 });
                                },
                                child: Container(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Row(
                                      children: [
                                        Text(tuoi[index].toString(),style: TextStyle(fontSize: 16,color: Colors.red),
                                        )
                                      ]),
                                ),

                              );
                            }
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            );
          }
      );
}

}

