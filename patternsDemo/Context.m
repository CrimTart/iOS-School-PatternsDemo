//
//  Context.m
//  patternsDemo
//
//  Created by iOS-School-1 on 20.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import "Context.h"
#import "Strategy.h"

@implementation Context

-(int) executeStrategyWithA: (int)a B: (int)b {
    return [self.strategy executeWithA:a B:b];
}

@end
