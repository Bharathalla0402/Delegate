//
//  SecondViewController.h
//  Demo
//
//  Created by think360 on 04/09/17.
//  Copyright © 2017 bharat. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SecondViewDelegate;
@protocol SecondViewDelegate <NSObject>

@optional
- (void)responsewithToken: (NSString *)first : (NSString *)second;
@end


@interface SecondViewController : UIViewController

@property (nonatomic, assign) id <SecondViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITextField *secondTextField;

@property (nonatomic, retain) NSString *strdata;

@end
