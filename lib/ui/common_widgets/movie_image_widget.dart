import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_networkimage/flutter_advanced_networkimage.dart';
import 'package:flutter_advanced_networkimage/transition_to_image.dart';
import 'package:flutter_bloc_movies/utils/ImageHelper.dart';
import 'package:transparent_image/transparent_image.dart';

enum IMAGE_TYPE {POSTER, BACKDROP}

class MovieImage extends StatelessWidget {
  final IMAGE_TYPE imageType;
  final String size;
  final String imagePath;

	MovieImage({this.imagePath, this.imageType, this.size});

  @override
  Widget build(BuildContext context) {
//		return getAdvancedNetworkImage();
	return getFadeInImage();
  }

  Widget getFadeInImage() {
  	return FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: ImageHelper.getImagePath(imagePath, size));
	}

	Widget getAdvancedNetworkImage() {
  	return new TransitionToImage(AdvancedNetworkImage(ImageHelper.getImagePath(imagePath, size)),
				useReload: false, fallbackWidget: SizedBox(height: 300.0));
	}
}