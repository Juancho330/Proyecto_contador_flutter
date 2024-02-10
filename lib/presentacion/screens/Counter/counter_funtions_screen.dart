import 'package:flutter/material.dart';

class CounterFunctionsScreent extends StatefulWidget {


  const CounterFunctionsScreent({super.key});

  @override
  State<CounterFunctionsScreent> createState() => _CounterFunctionsScreentState();
}

class _CounterFunctionsScreentState extends State<CounterFunctionsScreent> {
  int clickcounter = 0;

  @override
  Widget build(BuildContext context) {
    return   Scaffold( 
      appBar: AppBar(
        title: const Text("Ventana Contador"),
        actions: [
         IconButton (
          icon: Icon(Icons.refresh_rounded) , 
          onPressed: () { 
            setState(() {
              clickcounter =0;
            });
           },
          )
        ],
      ),
      body:  Center(
  
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('$clickcounter', style: const TextStyle( fontSize: 300, fontWeight: FontWeight.w100),),
            Text('Click${ clickcounter == 1 ? '' : 's'}', style: const TextStyle( fontSize: 100),)
            // if(clickcounter == 1)
            // const Text("Has hecho un click", style: TextStyle(fontSize: 100),), 

            // if(clickcounter >= 2)
            // const Text("Has hecho varios clicks", style: TextStyle(fontSize: 100),),
          ],
        ) ,
        
      ),
      floatingActionButton: Column(
        mainAxisAlignment:  MainAxisAlignment.end,
        children: [

          CustomButton(icon: Icons.refresh_outlined,
            onPressed: (){
               clickcounter = 0;
               setState(() {});
            },
          ),

          const SizedBox( height:  15,),

          CustomButton(icon: Icons.plus_one,
            onPressed: () {
              clickcounter++;
              setState(() {}); 
            },
          ),

          const SizedBox( height:  15,),
          
          CustomButton(icon: Icons.read_more_sharp,
            onPressed: () {
              if(clickcounter == 0) return;
              clickcounter--;
              setState(() {}); 
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 5,
      backgroundColor: Colors.blue,
      shape: const StadiumBorder(),
      onPressed:onPressed,
      child:  Icon(icon),
    );
  }
}