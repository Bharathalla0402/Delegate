//
//  ViewController.m
//  Demo
//
//  Created by think360 on 04/09/17.
//  Copyright © 2017 bharat. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "ApiRequest.h"

@interface ViewController ()<ApirequestDelegate>
{
    ApiRequest *request;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    secondview = [[SecondViewController alloc] init];
    secondview.delegate=self;
    
    request = [[ApiRequest alloc]init];
    request.delegate=self;
    
     self.title = @"First View";
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(notificationHappened:)
                                                 name:@"myname"
                                               object:nil];
    
    
    // Post Method Calling
   // NSString *post = [NSString stringWithFormat:@"module=%@&user_id=%@",@"",@""];
   // NSString *strurl=[NSString stringWithFormat:@"%@",@""];
   // [request sendRequest:post withUrl:strurl];
    
    
    //Get Method Calling
   // NSString *strurl=[NSString stringWithFormat:@"%@",@""];
  // [request sendRequest2:nil withUrl:strurl];
    
}

//-(void)viewWillAppear:(BOOL)animated
//{
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(notificationHappened:)
//                                                 name:@"myname"
//                                               object:nil];
//}

- (void)notificationHappened:(NSNotification *)notification
{
    NSDictionary *dict=notification.userInfo;
    _firstTextField.text=[NSString stringWithFormat:@"%@ %@",[dict valueForKey:@"first"],[dict valueForKey:@"Second"]];
}

- (IBAction)NextButtClicked:(id)sender
{
    SecondViewController *secondVC=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    secondVC.strdata=_firstTextField.text;
   // secondVC.delegate=self;
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
