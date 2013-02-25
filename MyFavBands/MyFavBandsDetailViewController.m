//
//  MyFavBandsDetailViewController.m
//  MyFavBands
//
//  Created by Charles Konkol on 2/25/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "MyFavBandsDetailViewController.h"



@implementation MyFavBandsDetailViewController
@synthesize productName;

#pragma mark - Managing the detail item




- (void)viewDidLoad
{
    self.title = productName;
    NSString *imageName = [NSString stringWithFormat:@"%@.jpg", productName];
    self.productImageView.image = [UIImage imageNamed:imageName];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
