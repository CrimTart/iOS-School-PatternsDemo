//
//  Button.h
//  patternsDemo
//
//  Created by iOS-School-1 on 17.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreGraphics;

typedef NS_ENUM(NSInteger, ButtonType) {
    ButtonTypeDefault,
    ButtonTypeAdd,
    ButtonTypeRemove
};

@interface Button : NSObject

+(instancetype) buttonWithType: (ButtonType)type;

-(void) draw;
-(CGSize) size;

@end
