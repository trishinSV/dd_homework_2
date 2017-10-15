//
//  ViewController.m
//  dd_homework_2
//
//  Created by Сергей Тришин on 13.10.2017.
//  Copyright © 2017 Сергей Тришин. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   [_textView setEditable:NO];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)redButton:(id)sender {
    
    NSRange selectedRange = _textView.selectedRange;
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                   initWithAttributedString:_textView.attributedText];
    
    [attributedString addAttribute:NSForegroundColorAttributeName
                             value:[UIColor redColor]
                             range:selectedRange];
    
    _textView.attributedText = attributedString;
}

- (IBAction)blueButton:(id)sender {
    NSRange selectedRange = _textView.selectedRange;
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                   initWithAttributedString:_textView.attributedText];
    
    [attributedString addAttribute:NSForegroundColorAttributeName
                             value:[UIColor blueColor]
                             range:selectedRange];
    
    _textView.attributedText = attributedString;
}

- (IBAction)orangeButton:(id)sender {
    NSRange selectedRange = _textView.selectedRange;
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                   initWithAttributedString:_textView.attributedText];
    
    [attributedString addAttribute:NSForegroundColorAttributeName
                             value:[UIColor orangeColor]
                             range:selectedRange];
    
    _textView.attributedText = attributedString;
}

- (IBAction)greenButton:(id)sender {
    NSRange selectedRange = _textView.selectedRange;
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                   initWithAttributedString:_textView.attributedText];
    
    [attributedString addAttribute:NSForegroundColorAttributeName
                             value:[UIColor greenColor]
                             range:selectedRange];
    
    _textView.attributedText = attributedString;
}

- (IBAction)clearButton:(id)sender {

    _textView.textColor =[UIColor blackColor];
}

@end
