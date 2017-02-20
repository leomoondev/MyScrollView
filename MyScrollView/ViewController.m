//
//  ViewController.m
//  MyScrollView
//
//  Created by Hyung Jip Moon on 2017-02-20.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) viewDidAppear:(BOOL)animated {
    
    self.view.frame = CGRectMake(self.view.frame.origin.x, -100, self.view.frame.size.width, self.view.frame.size.height);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
