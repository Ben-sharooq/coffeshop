import 'package:coffeshop/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material (
      child: Container(
        padding: EdgeInsets.only(top: 100,bottom: 40),
        decoration: BoxDecoration(
          color: Colors.black,
            image: DecorationImage(
              image: NetworkImage('https://images.unsplash.com/photo-1512568400610-62da28bc8a13?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            fit: BoxFit.cover,
            opacity: 0.6,)
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('coffee shop',style: GoogleFonts.pacifico(
              fontSize: 50,color: Colors.white,
            ),),
            Column(
              children: <Widget>[
                Text(
                  'Feeling Low? Take a sip of coffee',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),

                ),
                SizedBox(height: 30),
                Material(
                  child: InkWell(
                      child: AnimatedButton(
                        height: 70,
                        width: 150,
                        text: ('Get Start'),
                        isReverse: true,
                        selectedTextColor: Colors.brown,
                        transitionType: TransitionType.RIGHT_TO_LEFT,
                        backgroundColor:  Color(0xFFE57734),
                        borderColor: Colors.black,
                        borderRadius: 10,
                        borderWidth: 1,
                        onPress: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>HomeScreen()
                          ),
                          );
                        },
                      ),
                  
                      ),
                ),

              ],
            )
          ],
        ),
        ),
    );

  }
}
