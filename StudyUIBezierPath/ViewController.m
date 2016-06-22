//
//  ViewController.m
//  StudyUIBezierPath
//
//  Created by zhangzhihua on 16/5/30.
//  Copyright © 2016年 zhangzhihua. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TestView *View = [[TestView alloc]initWithFrame:self.view.bounds];
    View.backgroundColor = [UIColor redColor];
    [self.view addSubview:View];
    [View setNeedsDisplay];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
