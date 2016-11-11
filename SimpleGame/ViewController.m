//
//  ViewController.m
//  SimpleGame
//
//  Created by 陈骏驰 on 11/11/16.
//  Copyright © 2016 BorisChen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize Btop;
@synthesize Bcentor;
@synthesize Bbottom;
@synthesize Picture;
@synthesize numbers;
@synthesize Label;
@synthesize file_top;
@synthesize file_center;
@synthesize file_bottom;

- (void)viewDidLoad {
    [super viewDidLoad];
    Picture = [[NSArray alloc] initWithObjects:@"1a.png",@"1b.png",@"1c.png",@"2a.png",@"2b.png",@"2c.png",@"3a.png",@"3b.png",@"3c.png", nil];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)Btop:(id)sender {
    
    int index = arc4random() % [Picture count];
    file_top = [Picture objectAtIndex:index];
    UIImage *image = [UIImage imageNamed: file_top];
    [Btop setBackgroundImage:image forState:UIControlStateNormal];
    
    if([file_top isEqualToString:@"1a.png"] && [file_center isEqualToString:@"1b.png"] && [file_bottom isEqualToString:@"1c.png"]){
        numbers = [[NSMutableArray alloc] init];
        Label.text = @"You Win";
    }else if([file_top isEqualToString:@"2a.png"] && [file_center isEqualToString:@"2b.png"] && [file_bottom isEqualToString:@"2c.png"]){
        Label.text = @"You Win";
    }else if([file_top isEqualToString:@"3a.png"] && [file_center isEqualToString:@"3b.png"] && [file_bottom isEqualToString:@"3c.png"]){
        Label.text = @"You Win";
    }else{
        Label.text = @"Hurry up";
    }
    
    NSLog(@"TOP");
    NSLog(@"%@", file_top);
    NSLog(@"%@", file_center);
    NSLog(@"%@", file_bottom);
    

}

- (IBAction)Bcentor:(id)sender {
    
    int index = arc4random() % [Picture count];
    file_center = [Picture objectAtIndex:index];
    UIImage *image = [UIImage imageNamed: file_center];
    [Bcentor setBackgroundImage:image forState:UIControlStateNormal];
    
    if([file_top isEqualToString:@"1a.png"] && [file_center isEqualToString:@"1b.png"] && [file_bottom isEqualToString:@"1c.png"]){
        Label.text = @"You Win";
    }else if([file_top isEqualToString:@"2a.png"] && [file_center isEqualToString:@"2b.png"] && [file_bottom isEqualToString:@"2c.png"]){
        Label.text = @"You Win";
    }else if([file_top isEqualToString:@"3a.png"] && [file_center isEqualToString:@"3b.png"] && [file_bottom isEqualToString:@"3c.png"]){
        Label.text = @"You Win";
    }else{
        Label.text = @"Hurry up";
    }
    
    NSLog(@"CENTOR");
    NSLog(@"%@", file_top);
    NSLog(@"%@", file_center);
    NSLog(@"%@", file_bottom);
}

- (IBAction)Bbottom:(id)sender {
    
    int index = arc4random() % [Picture count];
    file_bottom = [Picture objectAtIndex:index];
    UIImage *image = [UIImage imageNamed: file_bottom];
    [Bbottom setBackgroundImage:image forState:UIControlStateNormal];
    
    if([file_top isEqualToString:@"1a.png"] && [file_center isEqualToString:@"1b.png"] && [file_bottom isEqualToString:@"1c.png"]){
        Label.text = @"You Win";
    }else if([file_top isEqualToString:@"2a.png"] && [file_center isEqualToString:@"2b.png"] && [file_bottom isEqualToString:@"2c.png"]){
        Label.text = @"You Win";
    }else if([file_top isEqualToString:@"3a.png"] && [file_center isEqualToString:@"3b.png"] && [file_bottom isEqualToString:@"3c.png"]){
        Label.text = @"You Win";
    }else{
        Label.text = @"Hurry up";
    }
    
    NSLog(@"BOTTOM");
    NSLog(@"%@", file_top);
    NSLog(@"%@", file_center);
    NSLog(@"%@", file_bottom);
}






@end
