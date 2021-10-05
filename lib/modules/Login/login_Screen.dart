
import 'package:flutter/material.dart';

class Login_2 extends StatelessWidget {
  const Login_2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(backgroundColor: Colors.lightBlue[50],
      elevation: 0.0,),
      

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         
          children: [
            Text('Let\'s Get Started !',
            style: TextStyle(fontSize: 35.0,
            fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 10.0,
            ),

            Text('Create an account to Q Allure to get all features'
            ,style: TextStyle(color: Colors.black45,fontSize: 15.0)),

            SizedBox(
              height: 40.0,
            ),

              Container(
              
              width: 300.0,
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'User Name',
                
                
                prefixIcon: Icon(
                  Icons.perm_identity,
                  
                ),
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)
                ),
                
                ),
              ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Container(
              
              width: 300.0,
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Email Address',
                
                prefixIcon: Icon(
                  Icons.email,
                  
                ),
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)
                ),
                ),
              ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Container(
              width: 300.0,
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Phone',
                
                prefixIcon: Icon(
                  Icons.phone_android,
                  
                ),

                
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)
                ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),

            Container(
              width: 300.0,
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password',
                suffixIcon: Icon(Icons.remove_red_eye),
                prefixIcon: Icon(
                  Icons.lock,
                  
                ),

                
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)
                ),
                ),
              ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Container(
              width: 300.0,
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Comfirm Password',
                suffixIcon: Icon(Icons.remove_red_eye),
                prefixIcon: Icon(
                  Icons.lock,
                  
                ),

                
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)
                ),
                ),
              ),
            ),


            SizedBox(
              height: 40.0,

            ),

            Container(
              width: 130.0,
              height: 50.0,
              decoration: BoxDecoration(color: Colors.blue[900],
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),)]
              ),
                                
              child: MaterialButton(
                
                
                onPressed: 
              (){},
              
              child: Text('CREATE',
              
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
 
              ),
             
              ),
              
              
            ),

            SizedBox(
              height: 40.0,
            ),     

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have account? ',
                style: TextStyle(color: Colors.black45,fontSize: 15.0)),

                TextButton(onPressed: (){}, child: 
              Text('Login here'
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