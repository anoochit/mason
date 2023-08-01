import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BookBodyView extends GetView {
  const BookBodyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Book',
      ),
    );
  }
}
