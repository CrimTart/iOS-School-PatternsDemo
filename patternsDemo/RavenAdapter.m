//
//  RavenAdapter.m
//  patternsDemo
//
//  Created by iOS-School-1 on 20.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import "RavenAdapter.h"
#import "BirdProtocol.h"
#import "Raven.h"

@interface RavenAdapter ()

@property (nonatomic, strong) Raven *raven;

@end

@implementation RavenAdapter

-(instancetype)initWithRaven:(Raven *)raven {
    self = [super init];
    if (self) {
        _raven = raven;
    }
    return self;
}

-(void) fly {
    [self.raven flySeekAndDestroy];
}

-(void) sing {
    [self.raven voice];
}

@end
