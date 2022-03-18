import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fuodz/constants/app_colors.dart';
import 'package:fuodz/constants/app_strings.dart';
import 'package:fuodz/translations/vendor_details.i18n.dart';
import 'package:fuodz/utils/ui_spacer.dart';
import 'package:fuodz/view_models/vendor_details.vm.dart';
import 'package:velocity_x/velocity_x.dart';

class UploadPrescriptionFab extends StatelessWidget {
  const UploadPrescriptionFab(this.model, {Key key}) : super(key: key);

  final VendorDetailsViewModel model;
  @override
  Widget build(BuildContext context) {
    return model.vendor.isPharmacyType && AppStrings.enableUploadPrescription
        ? FloatingActionButton.extended(
            onPressed: model.uploadPrescription,
            backgroundColor: AppColor.primaryColor,
            label: "Upload Prescription".i18n.text.black.make(),
            icon: Icon(
              FlutterIcons.pills_faw5s,
              color: Colors.black,
              size: 22,
            ),
          )
        : UiSpacer.emptySpace();
  }
}
