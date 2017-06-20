//
//  RavenAdapter.h
//  patternsDemo
//
//  Created by iOS-School-1 on 20.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BirdProtocol.h"
@class Raven;

@interface RavenAdapter : NSObject <BirdProtocol>

-(instancetype) initWithRaven: (Raven *)raven;

@end
