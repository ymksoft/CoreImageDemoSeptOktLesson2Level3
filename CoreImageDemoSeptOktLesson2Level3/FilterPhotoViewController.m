//
//  FilterPhotoViewController.m
//  CoreImageDemoSeptOktLesson2Level3
//
//  Created by Nikolay Shubenkov on 13/11/15.
//  Copyright © 2015 Nikolay Shubenkov. All rights reserved.
//

#import "FilterPhotoViewController.h"

@interface FilterPhotoViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *originalImageView;
@property (weak, nonatomic) IBOutlet UIImageView *filteredImageView;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *filterValue;
@property (weak, nonatomic) IBOutlet UILabel *maxFilterValue;
@property (weak, nonatomic) IBOutlet UILabel *minFilterValue;

@end

@implementation FilterPhotoViewController

#pragma mark - View LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
    
}

#pragma mark - Setup

-(void) setup {
    UIImage *image = [UIImage imageNamed:@"HDtimelapse.net_City_1150_hirez"];
    self.originalImageView.image = image;
    self.image = image;
    
    [self filterImage];
}

-(void) filterImage {
    CIImage *imageToFilter = [CIImage imageWithCGImage:self.image.CGImage];
    CIFilter *filter = [CIFilter filterWithName:@"CISepiaTone"];
    
    [filter setValue:imageToFilter forKey:kCIInputImageKey];
    
    NSParameterAssert(filter);
    
    [filter setValue:@0.8 forKey:@"inputIntensity"];
    
    CIImage *result = [filter outputImage];
    
    self.filteredImageView.image = [UIImage imageWithCIImage:result];
    
}

#pragma mark - UI Events

- (IBAction)selectPhotoPressed:(id)sender {
    
}

- (IBAction)filterValueChanged:(id)sender {
    
}

@end
