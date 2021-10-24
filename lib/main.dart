import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShopScreen extends StatelessWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen>
    with SingleTickerProviderStateMixin {}



// class ShopScreen extends StatelessWidget {

//   @override
//   Widget build(BuildContext context)  {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: AnnotatedRegion<SystemUiOverlayStyle>(
//           value: SystemUiOverlayStyle.dark,
//           child: ListView(
//             padding: EdgeInsets.symmetric(vertical: 60.0),
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 30.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(
//                       Icons.menu,
//                       size: 30.0,
//                       color: Colors.grey,
//                     ),
//                     Icon(
//                       Icons.shopping_cart,
//                       size: 30.0,
//                       color: Colors.grey,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20.0),
//               Padding(
//                 padding: EdgeInsets.only(left: 30.0),
//                 child: Text(
//                   'Melhores escolhas',
//                   style: TextStyle(
//                     fontSize: 24.0,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20.0)
//               TabBar(),
//             ],
//           ),
//         ),
//       );
//   }
// }
