//
//  ViewController.m
//  PureDataTest
//
//  Created by kztskawamu on 2015/05/07.
//  Copyright (c) 2015年 cazcawa. All rights reserved.
//

#import "ViewController.h"
#import "PdBase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    [PdBase openFile:@"fork.pd" path:[[NSBundle mainBundle] resourcePath]];
    [PdBase openFile:@"Noise.pd" path:[[NSBundle mainBundle] resourcePath]];
    if (![PdBase openFile:@"fork.pd" path:[[NSBundle mainBundle] resourcePath]]) {
        NSLog(@"Failed to open patch!");
    }
    if (![PdBase openFile:@"Noise.pd" path:[[NSBundle mainBundle] resourcePath]]) {
        NSLog(@"Failed to open patch!");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bang:(id)sender {
    [PdBase sendBangToReceiver:@"fork"];
}
- (IBAction)bang1:(id)sender {
    [PdBase sendBangToReceiver:@"Noise"];
}

@end
