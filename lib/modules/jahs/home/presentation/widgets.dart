import 'package:flutter/material.dart';

import '../domain/entities/banners.dart';

class SharedWidgets {
  static List<Widget> homeImageSliders(List<HomeBanners> h) {
    return h
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Container(
                      width: 1000.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                            image: NetworkImage(item.homeBannerImage),
                            fit: BoxFit.cover,
                          )),
                    )),
              ),
            ))
        .toList();
  }
}
