//
//  StringWithRange.h
//  dd_homework_2
//
//  Created by Сергей Тришин on 28.10.2017.
//  Copyright © 2017 Сергей Тришин. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringWithRange : NSObject
@property (nonatomic) NSAttributedString * _Nonnull  text;
@property (nonatomic) NSRange range;

- (id _Nonnull )initWithText:(NSAttributedString *_Nonnull)text
                       range:(NSRange)range;


@end
