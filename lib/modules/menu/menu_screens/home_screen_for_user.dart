// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:gogreenapp/controller/user/home_controller.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// import '../../../controller/user_controller.dart';
// import '../../../controller/utils/constants.dart';
// import '../../widgets/menu_widget.dart';
//
// class HomeScreenForUser extends StatelessWidget {
//   Widget _buildImage(String assetName, [double width = 350, Color color = Colors.black]) {
//     return Image.asset(
//       'assets/$assetName',
//       width: width,
//       color: color,
//     );
//   }
//
//   final List<Widget> imageSliders = imgList
//       .map((item) => Container(
//             margin: const EdgeInsets.all(2.0),
//             child: ClipRRect(
//                 borderRadius: const BorderRadius.all(Radius.circular(15.0)),
//                 child: Stack(
//                   children: <Widget>[
//                     Image.network(item, fit: BoxFit.cover, width: 1000.0),
//                     Positioned(
//                       bottom: 0.0,
//                       left: 0.0,
//                       right: 0.0,
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           gradient: LinearGradient(
//                             colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
//                             begin: Alignment.bottomCenter,
//                             end: Alignment.topCenter,
//                           ),
//                         ),
//                         padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//                         child: Text(
//                           imgList.indexOf(item) == 0
//                               ? '#${imgList.indexOf(item) + 1} - Recycling is our Target'
//                               : imgList.indexOf(item) == 1
//                                   ? '#${imgList.indexOf(item) + 1} - Recycling Plastic'
//                                   : '#${imgList.indexOf(item) + 1} - Join Us',
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )),
//           ))
//       .toList();
//
//   UserHomeController homeController = Get.put(UserHomeController());
//   late GoogleMapController mapController;
//
//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }
//
//   List<Marker> markers = [
//     Marker(
//         markerId: MarkerId('My Location'),
//         position: LatLng(double.parse(userSaved!.userData![0].latitude!), double.parse(userSaved!.userData![0].longitude!)),
//         infoWindow: InfoWindow(title: "My Location"),
//         icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed)),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               height: 150,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         MenuWidget(
//                           bg: kMainColor,
//                         ),
//                         const SizedBox(
//                           width: 10,
//                         ),
//                         GetX<UserController>(
//                           builder: (con) => Text(
//                             'Hi, ${con.username.value}',
//                             style: TextStyle(
//                               color: kMainColor,
//                               fontSize: 20,
//                               fontWeight: FontWeight.normal,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 60.0),
//                       child: Text(
//                         'Welcome back!',
//                         style: TextStyle(
//                           fontSize: 28,
//                           color: kMainColor,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               child: SingleChildScrollView(
//                 physics: const BouncingScrollPhysics(),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 30),
//                       child: Container(
//                         width: MediaQuery.of(context).size.width,
//                         height: 300,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                           color: kMainColor,
//                         ),
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: ClipRRect(
//                                 child: GoogleMap(
//                                   onMapCreated: _onMapCreated,
//                                   initialCameraPosition: CameraPosition(
//                                     target: LatLng(double.parse(userSaved!.userData![0].latitude!), double.parse(userSaved!.userData![0].longitude!)),
//                                     zoom: 14.0,
//                                   ),
//                                   markers: markers.toSet(),
//                                 ),
//                                 borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(15.0),
//                               child: Container(
//                                 width: MediaQuery.of(context).size.width,
//                                 height: 100,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(15),
//                                   color: Colors.white,
//                                 ),
//                                 child: GetX<UserController>(
//                                   builder: (con) => Row(
//                                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.symmetric(vertical: 18.0),
//                                         child: Column(
//                                           children: [
//                                             Text(
//                                               'Wallet',
//                                               style: TextStyle(color: kMainColor, fontSize: 20, fontWeight: FontWeight.w900),
//                                             ),
//                                             const SizedBox(
//                                               height: 10,
//                                             ),
//                                             Text(
//                                               "L.E ${con.walletAmount.value}",
//                                               style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       const Padding(
//                                         padding: EdgeInsets.symmetric(vertical: 15.0),
//                                         child: VerticalDivider(
//                                           thickness: 1,
//                                           color: Colors.grey,
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.symmetric(vertical: 18.0),
//                                         child: Column(
//                                           children: [
//                                             Text(
//                                               'User Type',
//                                               style: TextStyle(color: kMainColor, fontSize: 20, fontWeight: FontWeight.w900),
//                                             ),
//                                             const SizedBox(
//                                               height: 10,
//                                             ),
//                                             Text(
//                                               "${userSaved!.userData![0].typeName}",
//                                               style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     CarouselSlider(
//                       items: imageSliders,
//                       options: CarouselOptions(
//                         autoPlay: true,
//                         enlargeCenterPage: true,
//                         aspectRatio: 2.0,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 30, top: 20),
//                       child: Center(
//                         child: Text(
//                           'Categories',
//                           style: TextStyle(
//                             fontSize: 22,
//                             color: kMainColor,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 200,
//                       child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemBuilder: (context, index) {
//                           return Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: InkWell(
//                               onTap: () {
//                                 //     homeController.showProductsForCategory(homeController.categoriesLista.value!.categoryData![index].categoryID!);
//
//                                 FocusScopeNode currentFocus = FocusScope.of(context);
//
//                                 if (!currentFocus.hasPrimaryFocus) {
//                                   currentFocus.unfocus();
//                                 }
//
//                                 // Get.to(() => CategoriesDetailsScreen(
//                                 //     index: index, id: homeController.categoriesLista.value!.categoryData![index].categoryID!));
//                               },
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   color: kMainColor,
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                                 child: Stack(
//                                   children: [
//                                     Container(
//                                       width: 150,
//                                       height: 140,
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: homeController.randomCategoriesList![index].categoryImage == "" ||
//                                                   homeController.randomCategoriesList![index].categoryImage == null
//                                               ? NetworkImage(
//                                                   'https://www.plasticsmakeitpossible.com/wp-content/uploads/2010/11/Keep-California-Beautiful2-725x619.jpg')
//                                               : NetworkImage(kBaseCategoryImageUrl + homeController.randomCategoriesList![index].categoryImage!),
//                                           fit: BoxFit.fill,
//                                         ),
//                                         borderRadius: BorderRadius.circular(15),
//                                       ),
//                                     ),
//                                     const SizedBox(
//                                       height: 10,
//                                     ),
//                                     Positioned(
//                                       bottom: 0,
//                                       left: 20,
//                                       right: 20,
//                                       top: 135,
//                                       child: Center(
//                                         child: Text(
//                                           homeController.randomCategoriesList![index].categoryName!,
//                                           style: const TextStyle(
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                         itemCount: homeController.randomCategoriesList!.length,
//                         shrinkWrap: true,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 30, top: 20),
//                       child: Center(
//                         child: Text(
//                           'Services',
//                           style: TextStyle(
//                             fontSize: 22,
//                             color: kMainColor,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 200,
//                       child: homeController.buildServices(),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// final List<String> imgList = [
//   'https://media.istockphoto.com/photos/hand-holding-recycle-symbol-on-green-bokeh-background-eco-and-save-picture-id1023963786?k=20&m=1023963786&s=612x612&w=0&h=gnS5A4GBB8f7d3Wsg6d7wNcJXGSX_tXx4YCgHCDeOnY=',
//   'https://th-thumbnailer.cdn-si-edu.com/H8PdYv2c0QR9UK8D82JQOZ_b_Wc=/1072x720/filters:no_upscale()/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/f6/30/f6300fcc-c929-4e30-adaa-fc3b62a495a5/42-18260830edit.jpg',
//   'https://cdn.britannica.com/40/93540-050-48FF9C9E/items-recycling-centre.jpg',
//   'https://cpdonline.co.uk/wp-content/uploads/2021/09/Recycling-in-schools-1.jpg',
// ];
