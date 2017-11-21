//
//  AppDelegate.m
//  dd_homework_2
//
//  Created by Сергей Тришин on 13.10.2017.
//  Copyright © 2017 Сергей Тришин. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-(void)dealloc{
    
    [_window release];
    _window = nil;
    [super dealloc];
}

@end
