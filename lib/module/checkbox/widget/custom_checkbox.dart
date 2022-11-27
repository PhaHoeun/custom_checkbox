import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_test/module/checkbox/model/checkbox_model.dart';

import '../controller/checkbox_controller.dart';

class CustomCheckBox extends StatelessWidget {
  CustomCheckBox({
    super.key,
    this.checkboxModel,
    this.onTap,
  });
  final CheckboxModel? checkboxModel;
  final controller = Get.put(CheckboxController());
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          checkboxModel!.isChecked
              ? Container(
                  width: 15,
                  height: 15,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.check,
                    size: 12,
                    color: Colors.white,
                  ),
                )
              : Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(checkboxModel!.title ??
                'hellooooooooooooooooooooooooooooooooooooooooooooooooo'),
          ),
        ],
      ),
    );
  }
}
