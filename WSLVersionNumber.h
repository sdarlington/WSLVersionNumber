//
//  WSLVersionNumber.h
//  timesince
//
//  Created by Stephen Darlington on 21/11/2013.
//  Copyright (c) 2013 Wandle Software Limited. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WSLVersionNumber : NSObject

@property (nonatomic,copy) NSString* version;

@property (nonatomic,assign) NSInteger major;
@property (nonatomic,assign) NSInteger minor;
@property (nonatomic,assign) NSInteger revision;

- (instancetype)initWithString:(NSString*)version;

- (NSComparisonResult)compare:(WSLVersionNumber*)version;

@end
