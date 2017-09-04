//
//  ApiRequest.h
//  Demo
//
//  Created by think360 on 04/09/17.
//  Copyright © 2017 bharat. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ApiRequestDeledate;
@protocol ApirequestDelegate <NSObject>
@optional
- (void)responsewithToken: (NSMutableDictionary *)responseToken;
- (void)responsewithToken2: (NSMutableDictionary *)responseToken;
@end

@interface ApiRequest : NSObject

@property (nonatomic,assign) id <ApirequestDelegate> delegate;

-(void)sendRequest:(NSString*)parameters withUrl:(NSString *)strUrl;
-(void)sendRequest2:(NSString*)parameters withUrl:(NSString *)strUrl;


@end
