//
//  CCViewController.h
//  pirateGame
//
//  Created by Arturo Lopez on 8/24/14.
//  Copyright (c) 2014 Unsigned. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCCharacter.h"
#import "CCBoss.h"

@interface CCViewController : UIViewController

@property (nonatomic) CGPoint currentPosition;
@property (strong,nonatomic) NSArray *tiles;
@property (strong,nonatomic) CCCharacter *character;
@property (strong,nonatomic) CCBoss *boss;

@property (strong, nonatomic) IBOutlet UIImageView *backgroundView;
@property (strong, nonatomic) IBOutlet UILabel *healthLevel;
@property (strong, nonatomic) IBOutlet UILabel *damageLevel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UIButton *upButton;
@property (strong, nonatomic) IBOutlet UIButton *leftButton;
@property (strong, nonatomic) IBOutlet UIButton *downButton;
@property (strong, nonatomic) IBOutlet UIButton *rightButton;

- (IBAction)actionActionButton:(UIButton *)sender;
- (IBAction)upActionButton:(UIButton *)sender;
- (IBAction)leftActionButton:(UIButton *)sender;
- (IBAction)downActionButton:(UIButton *)sender;
- (IBAction)rightActionButton:(UIButton *)sender;
- (IBAction)resetGameButton:(UIButton *)sender;
@end
