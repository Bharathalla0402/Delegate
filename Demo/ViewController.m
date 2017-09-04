//
//  ViewController.m
//  Demo
//
//  Created by think360 on 04/09/17.
//  Copyright © 2017 bharat. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    secondview = [[SecondViewController alloc] init];
    secondview.delegate=self;
    
     self.title = @"First View";
}

- (IBAction)NextButtClicked:(id)sender
{
    SecondViewController *secondVC=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    secondVC.strdata=_firstTextField.text;
    secondVC.delegate=self;
    [self.navigationController pushViewController:secondVC animated:YES];
}

-(void)responsewithToken:(NSString *)first :(NSString *)second
{
    _firstTextField.text=[NSString stringWithFormat:@"%@ %@",first,second];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
