import 'package:flutter/material.dart';
import 'package:flutter_intro_ui/slider_componets/model/page_view_model.dart';

class IntroContent extends StatelessWidget {
  final PageViewModel page;

  const IntroContent({Key key, @required this.page}) : super(key: key);

  Widget _buildWidget(Widget widget, String text, TextStyle style) {
    return widget ?? Text(text, style: style, textAlign: TextAlign.center);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: page.decoration.contentPadding,
      child: Column(
        children: [
          Padding(
            padding: page.decoration.titlePadding,
            child: _buildWidget(
              page.titleWidget,
              page.title,
              page.decoration.titleTextStyle,
            ),
          ),
          Padding(
            padding: page.decoration.descriptionPadding,
            child: _buildWidget(
              page.bodyWidget,
              page.body,
              page.decoration.bodyTextStyle,
            ),
          ),
          if (page.footer != null)
            Padding(
              padding: page.decoration.footerPadding,
              child: page.footer,
            ),
        ],
      ),
    );
  }
}
