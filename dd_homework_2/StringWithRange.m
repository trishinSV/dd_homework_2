//
//  StringWithRange.m
//  dd_homework_2
//
//  Created by Сергей Тришин on 28.10.2017.
//  Copyright © 2017 Сергей Тришин. All rights reserved.
//

#import "StringWithRange.h"

@implementation StringWithRange
- (id)initWithText:(NSAttributedString *)text
             range:(NSRange)range {
    if (self = [super init]) {
        self.text = text;
        self.range = range;
    }
    return self;
}
@end
