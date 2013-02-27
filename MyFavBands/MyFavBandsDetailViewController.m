//
//  MyFavBandsDetailViewController.m
//  MyFavBands
//
//  Created by Charles Konkol on 2/25/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "MyFavBandsDetailViewController.h"



@implementation MyFavBandsDetailViewController
//1) Add sythesize
@synthesize productName;

#pragma mark - Managing the detail item

//2) Delete or Comment Out - (void)setDetailItem Section

//- (void)setDetailItem:(id)newDetailItem
//{
//    if (_detailItem != newDetailItem) {
//        _detailItem = newDetailItem;

// Update the view.
//        [self configureView];
//    }
//}

//3) Delete or Comment Out - (void)configureView Section

//- (void)configureView
//{
// Update the user interface for the detail item.

//    if (self.detailItem) {
//        self.detailDescriptionLabel.text = [self.detailItem description];
//    }
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//4) Modify ViewDidLoad
    self.title = productName;
    NSString *imageName = [NSString stringWithFormat:@"%@.jpg", productName];
    self.productImageView.image = [UIImage imageNamed:imageName];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
