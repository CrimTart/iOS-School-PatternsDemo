//
//  StringPrinter.h
//  patternsDemo
//
//  Created by iOS-School-1 on 20.06.17.
//  Copyright © 2017 user. All rights reserved.
//

@protocol StringPrinter <NSObject>

-(void) printString;

-(void) setString: (NSString *)string;
-(NSString *) string;

@end
