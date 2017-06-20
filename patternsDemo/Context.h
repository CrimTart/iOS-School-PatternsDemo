//
//  Context.h
//  patternsDemo
//
//  Created by iOS-School-1 on 20.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol Strategy;

@interface Context : NSObject

@property (nonatomic, strong) id<Strategy> strategy;

-(int) executeStrategyWithA: (int)a B: (int)b;

@end
