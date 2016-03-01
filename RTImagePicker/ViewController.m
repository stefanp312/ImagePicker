//
//  ViewController.m
//  RTImagePicker
//
//  Created by 叔 陈 on 2/18/16.
//  Copyright © 2016 叔 陈. All rights reserved.
//

#import "ViewController.h"
#import "RTImagePickerViewController.h"
#import <Photos/Photos.h>
#import "RTShortVideoViewController.h"

@interface ViewController () <RTImagePickerViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Btn:(id)sender {
//    switch ([PHPhotoLibrary authorizationStatus]) {
//        case PHAuthorizationStatusNotDetermined:
//        {
//            [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
//                if(status == PHAuthorizationStatusAuthorized) {
//                    RTImagePickerViewController *imagePickerController = [RTImagePickerViewController new];
//                    imagePickerController.delegate = self;
//                    imagePickerController.mediaType = RTImagePickerMediaTypeImage;
//                    imagePickerController.allowsMultipleSelection = YES;
//                    imagePickerController.showsNumberOfSelectedAssets = YES;
//                    imagePickerController.maximumNumberOfSelection = 9;
//                    
//                    [self presentViewController:imagePickerController animated:YES completion:^{
//                    }];
//                }
//            }];
//        }
//            break;
//        case PHAuthorizationStatusAuthorized:
//        {
            RTImagePickerViewController *imagePickerController = [RTImagePickerViewController new];
            imagePickerController.delegate = self;
            imagePickerController.mediaType = RTImagePickerMediaTypeImage;
            imagePickerController.allowsMultipleSelection = YES;
            imagePickerController.showsNumberOfSelectedAssets = YES;
            imagePickerController.maximumNumberOfSelection = 9;
            
            [self presentViewController:imagePickerController animated:YES completion:^{
            }];
//        }
//            break;
//        case PHAuthorizationStatusDenied:
//        case PHAuthorizationStatusRestricted:
//        {
//            NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
//            if ([[UIApplication sharedApplication] canOpenURL:url]) {
//                [[UIApplication sharedApplication] openURL:url];
//            }
//        }
//            break;
//        default:
//            break;
//    }
}

- (void)rt_imagePickerController:(RTImagePickerViewController *)imagePickerController didFinishPickingImages:(NSArray<UIImage *> *)images
{
    NSLog(@"Send %@",images);
    
    [imagePickerController dismissViewControllerAnimated:YES completion:^{
    }];
}

- (void)rt_imagePickerControllerDidCancel:(RTImagePickerViewController *)imagePickerController
{
    [imagePickerController dismissViewControllerAnimated:YES completion:^{
    }];
}

- (void)rt_imagePickerController:(RTImagePickerViewController *)imagePickerController didFinishPickingVideoWithURL:(NSURL *)videoURL
{
    NSLog(@"didFinishPickingVideoWithURL : %@",videoURL);
    [imagePickerController dismissViewControllerAnimated:YES completion:^{
    }];
}
@end
