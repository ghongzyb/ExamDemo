//
//  ViewController.h
//  ExamDemo
//
//  Created by zyb on 14-11-8.
//  Copyright (c) 2014年 zyb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *myPicker;
@property (nonatomic, strong) NSMutableArray *_data;

@end

