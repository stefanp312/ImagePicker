# ImagePicker
A highly encapsulated and fully functional open-source image picker written in Objc based on Photokit. Including album list, asset list, selection preview, camera and short video taking.

Please use it in non-commercial ways, thx.

# Module Introductions
## Overview
This Image Picker is developed and re-encapsulated based on QBImagePicker, MWPhotoBrowser, VIMVideoPlayer, LLSimpleCamera and the Photokit Sample Code by WWDC. You can find these librarys on Github. I did some customized modification to them in order to avoid some conflicts with your existing project. You can safely import VIMVideoPlayer and LLSimpleCamera if you already have them in your project. QBImagePicker and MWPhotoBrowser have been totally modified and minimized into some parts of this whole project.

Unauthorized situations have alse been considered already. When your app doesn't have the access to Photo or Camera or MicroPhone, an unauthorized view will appear and guide user to the system setting of the app's privacy. You can customize this view yourself.

To import this library into your project, you should follow these steps:

1. Make sure your project has already imported VIMVideoPlayer and LLSimpleCamera, the source code of these two librarys are in this project. You can also search them on Github and import them using CocoaPod of Carthage.
2. Drag and remember to copy every useful files with the prefix RT- into your project.
3. If there is still some troubles, just bring me with an issue.
4. The usage is truly simple:

```Objective-C

RTImagePickerViewController *imagePickerController = [RTImagePickerViewController new];
imagePickerController.delegate = self;
imagePickerController.mediaType = RTImagePickerMediaTypeImage;
imagePickerController.allowsMultipleSelection = YES;
imagePickerController.showsNumberOfSelectedAssets = YES;
imagePickerController.maximumNumberOfSelection = 9;

[self presentViewController:imagePickerController animated:YES completion:^{
}];

```

you should comform your controller to `RTImagePickerViewControllerDelegate` and implement these protocols, remember you should choose whether to dismiss or not yourself:


```Objective-C

- (void)rt_imagePickerController:(RTImagePickerViewController *)imagePickerController didFinishPickingAssets:(NSArray *)assets;
- (void)rt_imagePickerController:(RTImagePickerViewController *)imagePickerController didFinishPickingImages:(NSArray<UIImage *> *)images;
- (void)rt_imagePickerController:(RTImagePickerViewController *)imagePickerController didFinishPickingVideoWithFileName:(NSString *)fileName withCaptureImage:(UIImage *)image;
- (void)rt_imagePickerControllerDidCancel:(RTImagePickerViewController *)imagePickerController;

```
## AssetsList

![image](https://raw.githubusercontent.com/SergioChan/ImagePicker/master/Image/imagePicker_1.jpg)

## AlbumsList

![image](https://raw.githubusercontent.com/SergioChan/ImagePicker/master/Image/imagePicker_2.jpg)

## SelectionPreview

![image](https://raw.githubusercontent.com/SergioChan/ImagePicker/master/Image/imagePicker_7.jpg)
![image](https://raw.githubusercontent.com/SergioChan/ImagePicker/master/Image/imagePicker_6.jpg)

## Camera

![image](https://raw.githubusercontent.com/SergioChan/ImagePicker/master/Image/imagePicker_3.jpg)

## ShortVideo-Taking

![image](https://raw.githubusercontent.com/SergioChan/ImagePicker/master/Image/imagePicker_4.jpg)
![image](https://raw.githubusercontent.com/SergioChan/ImagePicker/master/Image/imagePicker_5.jpg)