//
//  ViewController.h
//  Tapper
//
//  Created by Will Fuger on 10/6/16.
//  Copyright © 2016 BoogieSquad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic) NSNumber *maxTaps;
@property (nonatomic) NSNumber *currentTaps;
@property (weak, nonatomic) IBOutlet UILabel *currentTapsLabel;
@property (weak, nonatomic) IBOutlet UITextField *maxNumberOfTapsTextField;
@property (weak, nonatomic) IBOutlet UIImageView *tapperLogoImg;
@property (weak, nonatomic) IBOutlet UIButton *coinBtnOutlet;
@property (weak, nonatomic) IBOutlet UIButton *playBtnOutlet;

@end

