//
//  ViewController.h
//  SimpleGame
//
//  Created by 陈骏驰 on 11/11/16.
//  Copyright © 2016 BorisChen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *Btop;
@property (weak, nonatomic) IBOutlet UIButton *Bcentor;
@property (weak, nonatomic) IBOutlet UIButton *Bbottom;
@property (nonatomic,copy) NSArray *Picture;
@property (nonatomic,copy) NSArray *numbers;
@property (weak, nonatomic) IBOutlet UILabel *Label;
@property (nonatomic,weak) NSString *file_top;
@property (nonatomic,weak) NSString *file_center;
@property (nonatomic,weak) NSString *file_bottom;



- (IBAction)Btop:(id)sender;
- (IBAction)Bcentor:(id)sender;
- (IBAction)Bbottom:(id)sender;

@end

