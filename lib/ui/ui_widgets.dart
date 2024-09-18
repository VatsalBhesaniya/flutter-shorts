import 'package:flutter/material.dart';
import 'package:flutter_shorts/ui/widgets/align_widget.dart';
import 'package:flutter_shorts/ui/widgets/app_bar_widget.dart';
import 'package:flutter_shorts/ui/widgets/aspectratio_widget.dart';
import 'package:flutter_shorts/ui/widgets/auto_complete_widget.dart';
import 'package:flutter_shorts/ui/widgets/badge_widget.dart';
import 'package:flutter_shorts/ui/widgets/baseline_widget.dart';
import 'package:flutter_shorts/ui/widgets/card_widget.dart';
import 'package:flutter_shorts/ui/widgets/column_widget.dart';
import 'package:flutter_shorts/ui/widgets/constrained_box_widget.dart';
import 'package:flutter_shorts/ui/widgets/container_widget.dart';
import 'package:flutter_shorts/ui/widgets/elevated_button_widget.dart';
import 'package:flutter_shorts/ui/widgets/expanded_widget.dart';
import 'package:flutter_shorts/ui/widgets/fittedbox_widget.dart';
import 'package:flutter_shorts/ui/widgets/floating_action_button_widget.dart';
import 'package:flutter_shorts/ui/widgets/fractionally_sizedbox_widget.dart';
import 'package:flutter_shorts/ui/widgets/icon_button_widget.dart';
import 'package:flutter_shorts/ui/widgets/icon_widget.dart';
import 'package:flutter_shorts/ui/widgets/image_widget.dart';
import 'package:flutter_shorts/ui/widgets/intrinsic_height_width_widget.dart';
import 'package:flutter_shorts/ui/widgets/outlined_button_widget.dart';
import 'package:flutter_shorts/ui/widgets/row_widget.dart';
import 'package:flutter_shorts/ui/widgets/scaffold_widget.dart';
import 'package:flutter_shorts/ui/widgets/segmented_button_widget.dart';
import 'package:flutter_shorts/ui/widgets/slider_widget.dart';
import 'package:flutter_shorts/ui/widgets/text_button_widget.dart';
import 'package:flutter_shorts/ui/widgets/text_widget.dart';
import 'package:flutter_shorts/ui/widgets/transform_widget.dart';
import 'package:flutter_shorts/ui/widgets/wrap_widget.dart';

class UIWidgets extends StatelessWidget {
  const UIWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            _buildButton(
              context: context,
              title: 'AppBar Widget',
              widget: const AppBarWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Column Widget',
              widget: const ColumnWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Container Widget',
              widget: const ContainerWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Elevated Button Widget',
              widget: const ElevatedButtonWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Text Button Widget',
              widget: const TextButtonWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Row Widget',
              widget: const RowWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Scaffold Widget',
              widget: const ScaffoldWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Text Widget',
              widget: const TextWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Image Widget',
              widget: const ImageWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Icon Widget',
              widget: const IconWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Align Widget',
              widget: const AlignWidget(),
            ),
            _buildButton(
              context: context,
              title: 'AspectRatio Widget',
              widget: const AspectRatioWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Baseline Widget',
              widget: const BaselineWidget(),
            ),
            _buildButton(
              context: context,
              title: 'ConstrainedBox Widget',
              widget: const ConstrainedBoxWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Expanded Widget',
              widget: const ExpandedWidget(),
            ),
            _buildButton(
              context: context,
              title: 'FittedBox Widget',
              widget: const FittedBoxWidget(),
            ),
            _buildButton(
              context: context,
              title: 'IntrinsicHeight & IntrinsicWidth Widget',
              widget: const IntrinsicHeightWidthWidget(),
            ),
            _buildButton(
              context: context,
              title: 'FractionallySizedBox Widget',
              widget: const FractionallySizedBoxWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Transform Widget',
              widget: const TransformWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Outlined Button Widget',
              widget: const OutlinedButtonWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Card Widget',
              widget: const CardWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Autocomplete Widget',
              widget: const AutocompleteWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Slider Widget',
              widget: const SliderWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Wrap Widget',
              widget: const WrapWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Floating Action Button Widget',
              widget: const FloatingActionButtonWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Icon Button Widget',
              widget: const IconButtonWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Segmented Button Widget',
              widget: const SegmentedButtonWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Badge Widget',
              widget: const BadgeWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton({
    required BuildContext context,
    required String title,
    required Widget widget,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => widget,
            ),
          );
        },
        padding: const EdgeInsets.all(8),
        color: Colors.orange.shade200,
        shape: const StadiumBorder(),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
