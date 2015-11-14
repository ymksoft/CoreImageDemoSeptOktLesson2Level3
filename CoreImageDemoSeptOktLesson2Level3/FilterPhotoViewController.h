//
//  FilterPhotoViewController.h
//  CoreImageDemoSeptOktLesson2Level3
//
//  Created by Nikolay Shubenkov on 13/11/15.
//  Copyright © 2015 Nikolay Shubenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FilterPhotoViewController : UIViewController

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) CIFilter *filter;

@end
