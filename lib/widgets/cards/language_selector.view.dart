import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:fuodz/widgets/menu_item.dart';
import 'package:velocity_x/velocity_x.dart';

class AppLanguageSelector extends StatelessWidget {
  const AppLanguageSelector({this.onSelected, Key key}) : super(key: key);

  //
  final Function(String) onSelected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: VStack(
        [
          //
          "Selecione seu idioma preferido"
              .text
              .xl
              .semiBold
              .make()
              .py20()
              .px12(),

          //Portuguese
          MenuItem(
            title: "Português",
            suffix: Flag.fromString('PT-BR', height: 24, width: 24),
            onPressed: () => onSelected('pt'),
          ),
//English
          MenuItem(
            title: "English",
            suffix: Flag.fromString('US', height: 24, width: 24),
            onPressed: () => onSelected('en'),
          ),

          //Spanish
          MenuItem(
            title: "Spanish",
            suffix: Flag.fromString('ES', height: 24, width: 24),
            onPressed: () => onSelected('es'),
          ),

          //ADD YOUR CUSTOM LANGUAGE HERE
          // MenuItem(
          //   title: "LANGUAGE_NAME",
          //   suffix: Flag.fromString('COUNRTY_CODE', height: 24, width: 24),
          //   onPressed: () => onSelected('LANGUAGE_CODE'),
          // ),
        ],
      ).scrollVertical(),
    );
  }
}
