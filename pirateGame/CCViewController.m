//
//  CCViewController.m
//  pirateGame
//
//  Created by Arturo Lopez on 8/24/14.
//  Copyright (c) 2014 Unsigned. All rights reserved.
//

#import "CCViewController.h"
#import "CCFactory.h"
#import "CCTile.h"


@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CCFactory *factory = [[CCFactory alloc]init];
    self.character = [factory character];
    self.tiles = [factory tiles];
    self.boss = [factory boss];
    self.currentPosition = CGPointMake(0, 0);
    
    [self characterUpdateForArmor:nil withWeapons:nil withHealthEffect:0];
    [self updateTile];
    [self updateButtons];
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//gives subtiles to access methods!!
//#pragma mark - IBAction

- (IBAction)actionActionButton:(UIButton *)sender {
    
    CCTile *tile =  [[self.tiles objectAtIndex:self.currentPosition.x]objectAtIndex: self.currentPosition.y];
    [self characterUpdateForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    [self updateTile];

    if (tile.healthEffect == -20)
        self.boss.health = self.boss.health - self.character.damage;
    
    if (self.character.health <= 0 ) {
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Death message" message:@"You died! Reset Game" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil,nil];
        [alertView show];
    self.healthLevel.text = [NSString stringWithFormat:@"%i",0];
        
    }
    else if(self.boss.health <= 0)
    {
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Death message" message:@"You killed the boss! You won. Reset Game to play again" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil,nil];
        [alertView show];
        
    }
    
    
}

- (IBAction)upActionButton:(UIButton *)sender {
    self.currentPosition = CGPointMake(self.currentPosition.x, self.currentPosition.y + 1);
    [self updateButtons];
    [self updateTile];

}

- (IBAction)leftActionButton:(UIButton *)sender {
    self.currentPosition = CGPointMake(self.currentPosition.x - 1, self.currentPosition.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)downActionButton:(UIButton *)sender {
    self.currentPosition = CGPointMake(self.currentPosition.x, self.currentPosition.y - 1);
    [self updateButtons];
    [self updateTile];
    
}

- (IBAction)rightActionButton:(UIButton *)sender {
    self.currentPosition = CGPointMake(self.currentPosition.x + 1, self.currentPosition.y);
    [self updateButtons];
    [self updateTile];
    
}

- (IBAction)resetGameButton:(UIButton *)sender {
    
    self.character = nil;
    self.boss = nil;
    [self viewDidLoad];
    
}

-(void)characterUpdateForArmor:(CCArmor *)armor withWeapons: (CCWeapon *)weapon withHealthEffect: (int)healthEffect
{
    if (armor != nil) {
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        self.character.armor = armor;
    }
    else if(weapon != nil)
    {
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if(healthEffect != 0)
    {
        self.character.health = self.character.health + healthEffect;
    }
    else
    {
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    }
}


-(void)updateTile
{
    CCTile *tileModel = [[self.tiles objectAtIndex:self.currentPosition.x]objectAtIndex:self.currentPosition.y];
    self.storyLabel.text = tileModel.story;
    self.backgroundView.image = tileModel.backgroundImage;
    self.healthLevel.text = [NSString stringWithFormat:@"%i",self.character.health];
    self.damageLevel.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.armorLabel.text = self.character.armor.name;
    self.weaponLabel.text = self.character.weapon.name;
    [self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
    
}
-(void)updateButtons
{
    self.leftButton.hidden  = [self tileExistatPosition:CGPointMake(self.currentPosition.x - 1, self.currentPosition.y)];
    self.rightButton.hidden = [self tileExistatPosition:CGPointMake(self.currentPosition.x + 1, self.currentPosition.y)];
    self.upButton.hidden    = [self tileExistatPosition:CGPointMake(self.currentPosition.x, self.currentPosition.y + 1)];
    self.downButton.hidden  = [self tileExistatPosition:CGPointMake(self.currentPosition.x, self.currentPosition.y - 1)];
    
}
-(BOOL)tileExistatPosition:(CGPoint) point
{
    if(point.y >= 0 && point.x >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count])
        return NO;
    else
        return YES;

}

@end
