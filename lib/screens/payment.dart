
// // ignore_for_file: unnecessary_null_comparison

// import 'package:cruapp/bricks/controllers/usercontroller.dart';
// import 'package:flutter/material.dart';

// class PaymentPage extends StatefulWidget {
//   const PaymentPage(Set<Object?> set, {required Key key}) : super(key: key);

//   @override
//   _PaymentPageState createState() => _PaymentPageState();
// }

// class _PaymentPageState extends State<PaymentPage> {
//   //Create variables
//   late int selectedIndex;

//   int price = 0;

//   String email = "//User Email Here";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             //Choose a plan
//             Container(
//               alignment: Alignment.center,
//               child: const Text(
//                 "Choose\nYour Plan",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//               ),
//             ),

//             const SizedBox(
//               height: 20,
//             ),

//             //GridView
//             Expanded(
//               child: GridView(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 5,
//                     mainAxisSpacing: 10),
//                 children: List.generate(plans.length, (index) {
//                   final data = plans[index];

//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedIndex = index;
//                         price = data["price"]!;
//                       });
//                     },
//                     child: Card(
//                       shadowColor:  const Color.fromARGB(255, 11, 8, 45),
//                       elevation: 5,
//                       child: Container(
//                         padding: const EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                           color: selectedIndex == null
//                               ? null
//                               : selectedIndex == index
//                                   ? const Color.fromARGB(255, 11, 8, 45)
//                                   : null,
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "GHS ${data["price"]}",
//                               style: const TextStyle(fontSize: 25),
//                             ),
//                             Text(
//                               "Get ${data["items"]} More",
//                             ),
//                             const Text(
//                               "Items",
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 }),
//               ),
//             ),

//             GestureDetector(
//               onTap: () {
//                 if (selectedIndex == null) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(content: Text("Please select a plan")));
//                 } else {
//                   //Call Paystack payment
//                   print(price);
//                   UserController(ctx: context, email: email, price: price)
//                       .chargeCardAndMakePayment();
//                 }
//               },
//               child: Container(
//                 alignment: Alignment.center,
//                 width: MediaQuery.of(context).size.width,
//                 padding: const EdgeInsets.all(15),
//                 decoration: const BoxDecoration(color: Colors.green),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     //icon
//                     const Icon(Icons.security, color: Colors.white),
//                     const SizedBox(
//                       width: 15,
//                     ),
//                     const Text(
//                       "Proceed to payment",
//                       style: TextStyle(color: Colors.white),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   final plans = [
//     {"price": 500, "items": 4},
//     {"price": 1000, "items": 6},
//     {"price": 3500, "items": 9},
//     {"price": 5600, "items": 10},
//   ];
// }
