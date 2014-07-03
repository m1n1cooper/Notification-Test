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
    NSDate *tempDate;
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
    NSLog(@"fireDate is %@", localNotification.fireDate);
}
- (IBAction)datePicker:(UIDatePicker *)sender {
    tempDate = sender.date;
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [calendar components:( NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit ) fromDate:tempDate];
    NSDateComponents *timeComponents = [calendar components:( NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit ) fromDate:tempDate];
    
    [dateComponents setHour:[timeComponents hour]];
    [dateComponents setMinute:[timeComponents minute]];
    [dateComponents setSecond:0.0];
    
    date = [calendar dateFromComponents:dateComponents];
    NSLog(@"tempDate is %@ and date is %@", tempDate, date);
}
@end
