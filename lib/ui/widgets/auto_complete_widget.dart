import 'package:flutter/material.dart';
// import 'package:flutter_shorts/helper/icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AutocompleteWidget extends StatefulWidget {
  const AutocompleteWidget({super.key});

  @override
  State<AutocompleteWidget> createState() => _AutocompleteWidgetState();
}

class _AutocompleteWidgetState extends State<AutocompleteWidget> {
  static const List<String> options = <String>[
    'Jhon',
    'Dominic',
    'Charlie',
    'James',
    'Ava',
    'Kyle',
    'Alexander',
    'Jessica',
    'Amelia',
    'Charlotte',
    'Anderson',
  ];
  String selectedOption = '';
  // static const List<String> options = <String>[
  //   'Like',
  //   'Share',
  //   'Comment',
  //   'Subscribe',
  // ];
  // FaIconButtonWidget? like;
  // FaIconButtonWidget? share;
  // FaIconButtonWidget? comment;
  // FaIconButtonWidget? subscribe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autocomplete Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Autocomplete<String>(
              optionsMaxHeight: 400,
              initialValue: const TextEditingValue(text: 'Jhon'),
              fieldViewBuilder: (
                context,
                textEditingController,
                focusNode,
                onFieldSubmitted,
              ) {
                return TextFormField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  onFieldSubmitted: (String value) {
                    onFieldSubmitted();
                  },
                  style: const TextStyle(fontSize: 24),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                );
              },
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return options.where((String option) {
                  return option
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase());
                });
              },
              onSelected: (String selection) {
                selectedOption = 'You just selected $selection';
                setState(() {});
              },
            ),
            const SizedBox(height: 40),
            Text(
              selectedOption,
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(24),
      //   child: Column(
      //     children: [
      //       Autocomplete<String>(
      //         fieldViewBuilder: (
      //           context,
      //           textEditingController,
      //           focusNode,
      //           onFieldSubmitted,
      //         ) {
      //           return TextFormField(
      //             controller: textEditingController,
      //             focusNode: focusNode,
      //             onFieldSubmitted: (String value) {
      //               onFieldSubmitted();
      //             },
      //             style: const TextStyle(fontSize: 24),
      //             decoration: const InputDecoration(
      //               border: OutlineInputBorder(
      //                 borderRadius: BorderRadius.all(
      //                   Radius.circular(8),
      //                 ),
      //               ),
      //             ),
      //           );
      //         },
      //         optionsBuilder: (TextEditingValue textEditingValue) {
      //           if (textEditingValue.text == '') {
      //             return const Iterable<String>.empty();
      //           }
      //           return options.where((String option) {
      //             return option
      //                 .toLowerCase()
      //                 .contains(textEditingValue.text.toLowerCase());
      //           });
      //         },
      //         onSelected: (String selection) {
      //           switch (selection) {
      //             case 'Like':
      //               like = const FaIconButtonWidget(
      //                 backgroundColor: Colors.lightBlue,
      //                 shadowColor: Colors.red,
      //                 faIcon: FaIcon(
      //                   FontAwesomeIcons.thumbsUp,
      //                   size: 40,
      //                 ),
      //                 iconText: 'Like',
      //                 textColor: Colors.white,
      //               );
      //               break;
      //             case 'Share':
      //               share = const FaIconButtonWidget(
      //                 backgroundColor: Colors.blueGrey,
      //                 shadowColor: Colors.red,
      //                 faIcon: FaIcon(
      //                   FontAwesomeIcons.share,
      //                   size: 40,
      //                 ),
      //                 iconText: 'Share',
      //                 textColor: Colors.white,
      //               );
      //               break;
      //             case 'Comment':
      //               comment = const FaIconButtonWidget(
      //                 backgroundColor: Colors.lime,
      //                 shadowColor: Colors.red,
      //                 faIcon: FaIcon(
      //                   FontAwesomeIcons.commentDots,
      //                   size: 40,
      //                 ),
      //                 iconText: 'Comment',
      //                 textColor: Colors.white,
      //               );
      //               break;
      //             case 'Subscribe':
      //               subscribe = const FaIconButtonWidget(
      //                 backgroundColor: Colors.red,
      //                 shadowColor: Colors.red,
      //                 faIcon: FaIcon(
      //                   FontAwesomeIcons.bell,
      //                   size: 40,
      //                 ),
      //                 iconText: 'Subscribe',
      //                 textColor: Colors.white,
      //               );
      //               break;
      //           }
      //           setState(() {});
      //         },
      //       ),
      //       const SizedBox(height: 40),
      //       Padding(
      //         padding: const EdgeInsets.only(bottom: 34),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             const SizedBox(height: 40),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: <Widget>[
      //                 if (like != null) like!,
      //                 if (share != null) share!,
      //               ],
      //             ),
      //             const SizedBox(height: 40),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: <Widget>[
      //                 if (comment != null) comment!,
      //                 if (subscribe != null) subscribe!,
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
