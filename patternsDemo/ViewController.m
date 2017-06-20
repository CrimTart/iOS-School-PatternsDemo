//
//  ViewController.m
//  patternsDemo
//
//  Created by iOS-School-1 on 17.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"
#import "Button.h"
#import "Observer.h"
#import "PlainPrinter.h"
#import "PrinterDecorator.h"
#import "Raven.h"
#import "RavenAdapter.h"
@import UIKit;

@interface ViewController () <ObserverProtocol>

@property (nonatomic, strong) Observer *observer;

@end

@implementation ViewController

-(void) dealloc {
    [_observer removeAllObservers];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [Singleton sharedInstance];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(self.view.bounds.size.width / 2 - 20, 40, 40, 20);
    [btn setTitle:@"Click" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleColor:[[UIColor blackColor] colorWithAlphaComponent:0.5] forState:UIControlStateHighlighted];
    [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    Button *addButton = [Button buttonWithType:ButtonTypeAdd];
    [addButton draw];
    [addButton size];
    
    //[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(observe:) name:nil object:nil];
    
    self.observer = [Observer new];
    [_observer addObserver:self forEvent:EventTypeAddItem];
    [_observer addObserver:self forEvent:EventTypeRemoveItem];
}

-(void) buttonClick: (UIButton *)sender {
    //1//
    //Use breakpoints to check singleton's single time creation
    //[Singleton sharedInstance];
    /*2
    [_observer sendEvent:EventTypeAddItem];
    [_observer sendEvent:EventTypeAddItem];
    [_observer sendEvent:EventTypeRemoveItem];*/
    /*3
    NSString *test = @"I like turtles";
    PlainPrinter *printer = [PlainPrinter new];
    printer.string = test;
    PrinterDecorator *decorator = [[PrinterDecorator alloc] initWithPrinter:printer];
    [decorator printString];*/
    Raven *raven = [Raven new];
    RavenAdapter *adapter = [[RavenAdapter alloc] initWithRaven:raven];
    [adapter fly];
    [adapter sing];
}

-(void) observe: (NSNotification *)notification {
    NSLog(@"%@", notification.description);
}

#pragma mark - ObserverProtocol

-(void) didRecieveEvent:(EventType)type {
    NSLog(@"%@", @(type));
}

@end
