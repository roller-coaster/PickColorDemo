//
//  ViewController.m
//  PickColorDemo
//
//  Created by Mr.D on 2017/7/21.
//  Copyright © 2017年 Mr.D. All rights reserved.
//

#import "ViewController.h"
#import "JRPickColorView.h"

@interface ViewController ()

@property (nonatomic, weak) JRPickColorView *pickColorView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (!_pickColorView) {
        JRPickColorView *customView = [[JRPickColorView alloc] initWithFrame:CGRectMake(0, 0, 200, 30) colors:@[[UIColor lightGrayColor], [UIColor blackColor], [UIColor orangeColor], [UIColor greenColor], [UIColor grayColor], [UIColor darkGrayColor], [UIColor redColor], [UIColor magentaColor], [UIColor purpleColor]]];
        [customView setmagnifierImage:[UIImage imageNamed:@"shuidi"]];
        customView.center = self.view.center;
        [self.view addSubview:customView];
        _pickColorView = customView;
    }
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
