//
//  ViewController.m
//  ExamDemo
//
//  Created by zyb on 14-11-8.
//  Copyright (c) 2014年 zyb. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController


//@synthesize myPicker;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    // Do any additional setup after loading the view, typically from a nib.
    self.myPicker.delegate = self;
    self.myPicker.dataSource = self;
//    self.myPicker.frame = CGRectMake(0, 480, 320, 216);
//    
    NSArray *temp = @[@"pass",@"view",@"guess",@"kill",@"disable",@"loading",@"picker",@"contronller"];
    self._data = [[NSMutableArray alloc] initWithArray:temp copyItems:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
   
    NSLog(@"%i",self._data.count);
    return self._data.count;
    
}
//
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}
//
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [self._data objectAtIndex:row];
}

@end
