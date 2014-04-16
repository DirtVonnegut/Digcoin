//
//  APPViewController.m
//  Digcoin
//
//  Created by Graham Sullivan on 1/7/14.
//  Copyright (c) 2014 Graham Sullivan. All rights reserved.
//

#import "APPViewController.h"

@interface APPViewController ()

@end

@implementation APPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

- (IBAction)moveDigcoinLeft {
    
    if (self.digCoin.center.x - (self.digCoin.image.size.width/2) > 0) {
        CGRect frame = self.digCoin.frame;
        frame.origin.x -= 5;
        
        self.digCoin.frame = frame;
    }
}

- (IBAction)moveDigcoinRight {
    
    if (self.digCoin.center.x + (self.digCoin.image.size.width/2) < self.view.bounds.size.width) {
        CGRect frame = self.digCoin.frame;
        frame.origin.x += 5;
    
        self.digCoin.frame = frame;
    }
}

- (IBAction)moveDigcoinUp {
    
    if ((self.digCoin.center.y + (self.digCoin.image.size.height/2)) < self.view.bounds.size.height) {
        CGRect frame = self.digCoin.frame;
        frame.origin.y -= 5;
    
        self.digCoin.frame = frame;
    }
}

- (IBAction)moveDigcoinDown {
    
    if (self.digCoin.center.y > 0) {
        CGRect frame = self.digCoin.frame;
        frame.origin.y += 5;
    
        self.digCoin.frame = frame;
    }
}

- (void)collisionWithBlocks {
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
