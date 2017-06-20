//
//  Singleton.m
//  patternsDemo
//
//  Created by iOS-School-1 on 17.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

+(instancetype) sharedInstance {
    static Singleton *sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    /*@synchronized (self) {
        if (sharedInstance == nil) {
            sharedInstance = [[self alloc] init];
        }
    }*/
    
    return sharedInstance;
}

@end
