import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePicture extends StatefulWidget {
  @override
  _ProfilePictureState createState() => _ProfilePictureState();

  const ProfilePicture({
    Key? key,
    required this.image
  }) : super(key: key);

  final String image;
}

class _ProfilePictureState extends State<ProfilePicture> {

  ValueNotifier<File?> image = ValueNotifier(null);
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
        child: Column(
          children: [
            ValueListenableBuilder<File?>(
              valueListenable: image,
              builder: (BuildContext context, File? file, Widget? children) {
                return Container(
                  height: size.height * 0.25,
                  width: size.width * 0.375,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: image.value == null
                      ? Stack(
                        children: [
                          Center(
                            child: Container(
                              height: size.height * 0.25,
                              width: size.width * 0.375,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                      : Image.file(
                          image.value!,
                          fit: BoxFit.cover,
                      )
                  ),
                  // TODO FADE IN IMAGE FOR USER PROFILE
                  // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
                );
              }
            ),
            SizedBox(height: size.height * 0.02),
            GestureDetector(
              onTap: () => pickImage(),
              child: Text(
                "Upload Profile Picture",
                style: TextStyle(
                  color: Color(0XFF5783C3),
                  fontFamily: "NunitoSans",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        )
    );
  }

  Future pickImage() async {
    try {
      final XFile? _pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (_pickedFile == null)
        return;

      File? croppedImage = await ImageCropper.cropImage(
        sourcePath: _pickedFile.path,
        aspectRatio: CropAspectRatio(
          ratioX: 1.15, ratioY: 1.25,
        ),
        compressQuality: 100,
        maxWidth: 700,
        maxHeight: 700,
        compressFormat: ImageCompressFormat.jpg,
        androidUiSettings: AndroidUiSettings(
          toolbarColor: Colors.transparent,
          toolbarTitle: "Image Cropper",
          statusBarColor: Colors.transparent,
          backgroundColor: Colors.white
        )
      );

      setState(() {
        image.value = File(croppedImage!.path);
      });
    } on PlatformException {

    }
  }
}
