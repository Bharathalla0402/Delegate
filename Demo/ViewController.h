//
//  ViewController.h
//  Demo
//
//  Created by think360 on 04/09/17.
//  Copyright © 2017 bharat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController<SecondViewDelegate>
{
    SecondViewController *secondview;
}

@property (weak, nonatomic) IBOutlet UITextField *firstTextField;

@end

