//
//  MyFavBandsDetailViewController.h
//  MyFavBands
//
//  Created by Charles Konkol on 2/25/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyFavBandsDetailViewController : UIViewController

{
    NSString *productName;
    CGFloat previousScale;
    CGFloat previousRotation;
    CGFloat beginX;
    CGFloat beginY;
}
@property (strong, nonatomic) IBOutlet UIImageView *productImageView;
@property (strong, nonatomic) NSString *productName;
@end
