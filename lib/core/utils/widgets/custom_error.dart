import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/widgets.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errorMessage});
final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errorMessage,style: Styles.textStyle18,);
  }
}