import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_test/module/widget/custom_button.dart';

import '../controller/checkbox_controller.dart';
import '../model/checkbox_model.dart';
import '../widget/custom_checkbox.dart';

class CheckBoxScreen extends StatelessWidget {
  CheckBoxScreen({super.key});
  final controller = Get.put(CheckboxController());
  final checkboxModel = CheckboxModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Check Box Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Obx(
            () => Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: controller.checkboxList
                      .asMap()
                      .entries
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: CustomCheckBox(
                            checkboxModel: e.value,
                            onTap: () {
                              controller.checkboxList[e.key].isChecked =
                                  !controller.checkboxList[e.key].isChecked;
                              controller.checkboxList.refresh();
                            },
                          ),
                        ),
                      )
                      .toList(),
                ),
                const Spacer(),
                CustomButton(
                  isDisabled: controller.checkboxList[0].isChecked ||
                          controller.checkboxList[1].isChecked ||
                          controller.checkboxList[2].isChecked ||
                          controller.checkboxList[3].isChecked ||
                          controller.checkboxList[4].isChecked ||
                          controller.checkboxList[5].isChecked
                      ? controller.checkboxList[6].isChecked
                          ? true
                          : false
                      : true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
