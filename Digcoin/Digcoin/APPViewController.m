//
//  APPViewController.m
//  Digcoin
//
//  Created by Graham Sullivan on 1/7/14.
//  Copyright (c) 2014 Graham Sullivan. All rights reserved.
//

#import "APPViewController.h"
#import "Counter.h"

@interface APPViewController ()

@end

@implementation APPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.FailLabel.hidden = true;
}

- (IBAction)moveDigcoinLeft {
    
    if (self.digCoin.center.x - (self.digCoin.image.size.width/2) > 0) {
        self.FailLabel.hidden = true;
        CGRect frame = self.digCoin.frame;
        frame.origin.x -= 10;
        
        self.digCoin.frame = frame;
        self.counter.text = [[NSString alloc] initWithFormat:@"%d", increment_counter()];
    }else{
        self.FailLabel.hidden = false;
    }
}

- (IBAction)moveDigcoinRight {
    
    if (self.digCoin.center.x + (self.digCoin.image.size.width/2) < self.view.bounds.size.width) {
        self.FailLabel.hidden = true;
        CGRect frame = self.digCoin.frame;
        frame.origin.x += 10;
    
        self.digCoin.frame = frame;
        self.counter.text = [[NSString alloc] initWithFormat:@"%d", increment_counter()];
    }else{
        self.FailLabel.hidden = false;
    }
}

- (IBAction)moveDigcoinUp {
    
    if ((self.digCoin.center.y - (self.digCoin.image.size.height/2)) > 15) {
        self.FailLabel.hidden = true;
        CGRect frame = self.digCoin.frame;
        frame.origin.y -= 10;
    
        self.digCoin.frame = frame;
        self.counter.text = [[NSString alloc] initWithFormat:@"%d", increment_counter()];
    }else{
        self.FailLabel.hidden = false;
    }
}

- (IBAction)moveDigcoinDown {
    
    if ((self.digCoin.center.y + (self.digCoin.image.size.height/2)) < (self.view.bounds.size.height - self.view.bounds.size.height/4 * 2)) {
        self.FailLabel.hidden = true;
        CGRect frame = self.digCoin.frame;
        frame.origin.y += 10;
    
        self.digCoin.frame = frame;
        self.counter.text = [[NSString alloc] initWithFormat:@"%d", increment_counter()];
    }else{
        self.FailLabel.hidden = false;
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
