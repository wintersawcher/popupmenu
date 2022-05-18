import 'package:flutter/material.dart';
class Count extends StatelessWidget {
  final int? count;
  final VoidCallback? onCountSelected;
  final Function(int)? onCountChange;
  Count({@required this.count,@required this.onCountSelected,this.onCountChange});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: () =>   onCountChange!(1) ,
            icon: Icon(Icons.add),
        ),
        ElevatedButton(
          onPressed: () => onCountSelected,
          child: Text("$count"),
        ),
        IconButton(onPressed: () =>(count! > 0 ) ? onCountChange!(-1) : ""  ,
          icon: Icon(Icons.remove),
        ),
      ],
    );
  }
}
