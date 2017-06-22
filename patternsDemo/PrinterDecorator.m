//
//  PrinterDecorator.m
//  patternsDemo
//
//  Created by iOS-School-1 on 20.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import "PrinterDecorator.h"

@interface PrinterDecorator ()

@property (nonatomic, strong) id<StringPrinter> printer;

@end

@implementation PrinterDecorator

-(instancetype) initWithPrinter: (id<StringPrinter>)printer {
    self = [super init];
    if(self) {
        _printer = printer;
    }
    return self;
}

-(void) printString {
    NSString *str = [NSString stringWithFormat:@"%@%@", self.printer.string, @"!!!"];
    self.printer.string = str;
    [self.printer printString];
}

@end
