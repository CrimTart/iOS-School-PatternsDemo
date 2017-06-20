//
//  Observer.m
//  patternsDemo
//
//  Created by iOS-School-1 on 17.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import "Observer.h"

@interface Observer ()

@property (nonatomic, strong) NSMutableSet<id<ObserverProtocol>> *addobservers;
@property (nonatomic, strong) NSMutableSet<id<ObserverProtocol>> *removeobservers;
@property (nonatomic, strong) NSMutableSet<id<ObserverProtocol>> *updateobservers;


@end

@implementation Observer

-(instancetype) init {
    self = [super init];
    if (self) {
        self.addobservers = [NSMutableSet new];
        self.removeobservers = [NSMutableSet new];
        self.updateobservers = [NSMutableSet new];
    }
    return self;
}

-(void) addObserver:(id<ObserverProtocol>)observer forEvent:(EventType)type {
    switch (type) {
        case EventTypeAddItem: {
            [_addobservers addObject:observer];
            break;
        }
        case EventTypeRemoveItem: {
            [_removeobservers addObject:observer];
            break;
        }
        case EventTypeUpdateItem: {
            [_updateobservers addObject:observer];
            break;
        }
    }
}

-(void) removeObserver:(id<ObserverProtocol>)observer forEvent:(EventType)type{
    switch (type) {
        case EventTypeAddItem: {
            [_addobservers removeObject:observer];
            break;
        }
        case EventTypeRemoveItem: {
            [_removeobservers removeObject:observer];
            break;
        }
        case EventTypeUpdateItem: {
            [_updateobservers removeObject:observer];
            break;
        }
    }
}

-(void) removeAllObservers {
    [_addobservers removeAllObjects];
    [_removeobservers removeAllObjects];
    [_updateobservers removeAllObjects];
}

-(void) sendEvent:(EventType)type {
    switch (type) {
        case EventTypeAddItem: {
            [_addobservers.allObjects enumerateObjectsUsingBlock:^(id<ObserverProtocol>  _Nonnull observer, NSUInteger idx, BOOL * _Nonnull stop) {
                [observer didRecieveEvent:EventTypeAddItem];
            }];
            break;
        }
        case EventTypeRemoveItem: {
            [_removeobservers.allObjects enumerateObjectsUsingBlock:^(id<ObserverProtocol>  _Nonnull observer, NSUInteger idx, BOOL * _Nonnull stop) {
                [observer didRecieveEvent:EventTypeRemoveItem];
            }];
            break;
        }
        case EventTypeUpdateItem: {
            [_updateobservers.allObjects enumerateObjectsUsingBlock:^(id<ObserverProtocol>  _Nonnull observer, NSUInteger idx, BOOL * _Nonnull stop) {
                [observer didRecieveEvent:EventTypeUpdateItem];
            }];
            break;
        }
    }
}

@end
