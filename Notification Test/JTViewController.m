//
//  JTViewController.m
//  Notification Test
//
//  Created by James Topham on 01/07/2014.
//  Copyright (c) 2014 James Topham. All rights reserved.
//

#import "JTViewController.h"

@interface JTViewController ()

@end

@implementation JTViewController
{
    NSDate *date;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setNotification:(UIButton *)sender {
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = date;
    localNotification.alertBody = @"Test";
    localNotification.alertAction = @"View";
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
}
- (IBAction)datePicker:(UIDatePicker *)sender {
    date = sender.date;
    NSLog(@"date is %@", date);
}
@end
