//
//  Button.m
//  patternsDemo
//
//  Created by iOS-School-1 on 17.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import "Button.h"
#import "DefaultButton.h"
#import "AddButton.h"
#import "RemoveButton.h"

@implementation Button

+(instancetype) buttonWithType:(ButtonType)type {
    Button *button = nil;
    switch (type) {
        case ButtonTypeDefault: {
            button = [DefaultButton new];
            break;
        }
        case ButtonTypeAdd: {
            button = [AddButton new];
            break;
        }
        case ButtonTypeRemove: {
            button = [RemoveButton new];
            break;
        }
    }
    return button;
}

-(void) draw {
    NSAssert(NO, @"Method should be implemented in a subclass!");
}

-(CGSize) size {
    NSAssert(NO, @"Method should be implemented in a subclass!");
    return CGSizeZero;
}

@end
