import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jahsevents/modules/app_layout/controllers/app_contoller.dart';
import 'package:jahsevents/modules/jahs/home/presentation/controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Get.put(AppController()).toggleDrawer();
          },
        ),
      ),
      body: GetX(
        init: controller,
        initState: (state) {
          controller.getBannersData();
          controller.getCategoriesData();
          debugPrint('size = ${controller.banners.length}');
        },
        builder: (_) => SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              CarouselSlider(
                items: controller.homeImageSliders(controller.banners.value),
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                ),
              ),
              Center(
                child: Text('${controller.categs.value!.message}'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
