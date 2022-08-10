
import 'package:ecommerce_mask/constants.dart';

class MaskModel{
  String? image;
  String? title;
  String? subTitle;
  SIZE? size;
  String? description;
  bool? isFav;

  MaskModel(
      {this.image,
      this.title,
      this.subTitle,
      this.size,
      this.description,
      this.isFav});
}