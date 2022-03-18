import 'package:flutter/material.dart';
import 'package:fuodz/constants/app_colors.dart';
import 'package:fuodz/view_models/taxi.vm.dart';
import 'package:fuodz/widgets/busy_indicator.dart';
import 'package:fuodz/widgets/buttons/custom_text_button.dart';
import 'package:measure_size/measure_size.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:fuodz/translations/taxi.i18n.dart';

class TripDriverSearch extends StatelessWidget {
  const TripDriverSearch(this.vm, {Key key}) : super(key: key);
  final TaxiViewModel vm;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: MeasureSize(
        onChange: (size) {
          vm.updateGoogleMapPadding(height: size.height);
        },
        child: VStack(
          [

            //cancel order button
            "Searching for a driver. Please wait...".i18n.text.makeCentered(),
            //loading indicator
            BusyIndicator().centered().py12(),
            //only show if driver is yet to be assigned
            Visibility(
              visible: vm.onGoingOrderTrip.canCancelTaxi,
              child: CustomTextButton(
                title: "Cancel Booking".i18n,
                titleColor: AppColor.getStausColor("failed"),
                loading: vm.busy(vm.onGoingOrderTrip),
                onPressed: vm.cancelTrip,
              ).centered(),
            ),
          ],
        )
            .p20()
            .scrollVertical()
            .box
            .color(context.backgroundColor)
            .topRounded(value: 30)
            .shadow5xl
            .make(),
      ),
    );
  }
}
