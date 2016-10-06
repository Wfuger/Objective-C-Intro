//
//  ViewController.m
//  Tapper
//
//  Created by Will Fuger on 10/6/16.
//  Copyright © 2016 BoogieSquad. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)coinBtnDidPress:(id)sender {
    
    _currentTaps = [NSNumber numberWithInt:[_currentTaps intValue] + 1];
    [self updateTapsLabel];
    
    if ([self isGameOver]) {
        [self restartGame];
    }
    
}

- (IBAction)playBtnDidPress:(id)sender {
    
    if ([_maxNumberOfTapsTextField text] && ![[_maxNumberOfTapsTextField text]isEqualToString:@""]) {
        
        NSLog(@"current taps label text: %@", [_maxNumberOfTapsTextField text]);
        
        // Hidding and showing what needs to change
        [self hideNShow];
        
        // Setting our max taps from the text field
        _maxTaps = [NSNumber numberWithInt:[_maxNumberOfTapsTextField text].intValue];
        NSLog(@"MAX TAPS: %@",_maxTaps);
        
        // Set the current taps label to zero
        _currentTapsLabel.text = @"0 Taps";
        
        
    }
}
-(void) hideNShow {
    [_tapperLogoImg setHidden:![_tapperLogoImg isHidden]];
    [_currentTapsLabel setHidden:![_currentTapsLabel isHidden]];
    [_maxNumberOfTapsTextField setHidden:![_maxNumberOfTapsTextField isHidden]];
    [_playBtnOutlet setHidden:![_playBtnOutlet isHidden]];
    [_coinBtnOutlet setHidden:![_coinBtnOutlet isHidden]];
}
-(void) restartGame {
    _maxTaps = [NSNumber numberWithInt:0];
    
    _maxNumberOfTapsTextField.text = @"";
    
    [self hideNShow];
}

-(BOOL) isGameOver {
    if (_currentTaps.intValue >= _maxTaps.intValue) {
        return YES;
    } else {
        return NO;
    }
}

-(void) updateTapsLabel {
    _currentTapsLabel.text = [NSString stringWithFormat:@"%@ Taps", _currentTaps];
}

@end
