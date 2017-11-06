//
//  ViewController.h
//  dd_homework_2
//
//  Created by Сергей Тришин on 13.10.2017.
//  Copyright © 2017 Сергей Тришин. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StringWithRange.h"



@protocol ViewControllerDelegate <NSObject>

- (void)removeForegroundColorAttributeWithRange:(NSRange)range;

@end


@interface ViewController : UIViewController <ViewControllerDelegate>

@property (retain, nonatomic) IBOutlet UITextView *textView;

@end

