//
//  APPViewController.h
//  Digcoin
//
//  Created by Graham Sullivan on 1/7/14.
//  Copyright (c) 2014 Graham Sullivan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/CAAnimation.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreMotion/CoreMotion.h>

@interface APPViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *digCoin;

@property (assign, nonatomic) CGPoint currentPoint;

-(IBAction)moveDigcoinLeft;
-(IBAction)moveDigcoinRight;
-(IBAction)moveDigcoinDown;
-(IBAction)moveDigcoinUp;

@end
