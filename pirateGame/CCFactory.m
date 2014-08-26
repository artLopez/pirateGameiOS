//
//  CCFactory.m
//  string
//
//  Created by Arturo Lopez on 8/24/14.
//  Copyright (c) 2014 Unsigned. All rights reserved.
//

#import "CCFactory.h"
#import "CCTile.h"

@implementation CCFactory

-(NSArray*)tiles{
    
    CCTile *tile1 = [[CCTile alloc ]init];
    tile1.story = @"Argh we knew you would join us to destory Captain Jack Sparrow!Would you want a gun?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    CCWeapon *gun  = [[CCWeapon alloc]init];
    gun.name =  @"Double Barrel";
    gun.damage = 15;
    tile1.weapon = gun;
    tile1.actionButtonName = @"Take the double barrel.";
    
    CCTile *tile2 = [[CCTile alloc ]init];
    tile2.story = @"We could not find him but we sure will!Good thing we took some armor from that ship. Do you want some armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    CCArmor *armor = [[CCArmor alloc]init];
    armor.name = @"Steel Armor";
    armor.health = 8;
    tile2.armor = armor;
    tile2.actionButtonName = @"Take armor";
    
    CCTile *tile3 = [[CCTile alloc ]init];
    tile3.story = @"It is very cold where we are at. We need to leave!";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile3.healthEffect = 5;
    tile3.actionButtonName = @"Leave the area";
    
    CCTile *tile4 = [[CCTile alloc ]init];
    tile4.story = @"Soon enough we will find Jack Sparrow!Would you want another armor?";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    CCArmor *armors = [[CCArmor alloc]init];
    armors.name = @"Torso Armor";
    armors.health = 15;
    tile4.armor = armors;
    tile4.actionButtonName = @"Take the torso armor";
    
    CCTile *tile5 = [[CCTile alloc ]init];
    tile5.story = @"We are near. My captain senses tell me we will find him. Do you want to upgrade your weapon?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    CCWeapon *tripleBarrel = [[CCWeapon alloc]init];
    tripleBarrel.name =  @"Triple Barrel";
    tripleBarrel.damage = 20;
    tile5.weapon = tripleBarrel;
    tile5.actionButtonName = @"Take the triple barrel";
    
    CCTile *tile6 = [[CCTile alloc ]init];
    tile6.story = @"Darn I knew that one of our mateys was a trader. After hurting you, we made sure he walked the planks";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -20;
    tile6.actionButtonName  = @"Push the trader off the plank";
    
    CCTile *tile7 = [[CCTile alloc ]init];
    tile7.story = @"We are resting for the night at the Pacifc Ocean";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Go to sleep";
    
    CCTile *tile8 = [[CCTile alloc ]init];
    tile8.story = @"Argh we are getting frustrated and need more rum!";
    tile8.backgroundImage = [UIImage imageNamed:@"rum.jpg"];
    tile8.healthEffect = 20;
    tile8.actionButtonName = @"Drink the rum";
    
    CCTile *tile9 = [[CCTile alloc ]init];
    tile9.story = @"This is incredible we found gold!";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.actionButtonName = @"Take the gold";
    
    CCTile *tile10 = [[CCTile alloc ]init];
    tile10.story = @"I see the ship!";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    
    CCTile *tile11 = [[CCTile alloc ]init];
    tile11.story = @"Attack the shipp!!";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile11.healthEffect = -15;
    tile11.actionButtonName = @"Shoot at the ship";
    
    CCTile *tile12 = [[CCTile alloc ]init];
    tile12.story = @"We meet again Jack Sparrow!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -20;
    tile12.actionButtonName = @"Fight";
    

    //3 tiles and 4 columns
    NSArray *col1 = [[NSArray alloc]initWithObjects:tile1,tile2,tile3 ,nil];
    NSArray *col2 = [[NSArray alloc]initWithObjects:tile4,tile5,tile6 ,nil];
    NSArray *col3 = [[NSArray alloc]initWithObjects:tile7,tile8,tile9 ,nil];
    NSArray *col4 = [[NSArray alloc]initWithObjects:tile10,tile11,tile12 ,nil];

    NSArray *tiles = [[NSArray alloc]initWithObjects:col1,col2,col3,col4,nil];
    
    return tiles;
    
    //    UIButton *button = [[UIButton alloc]init];
    //    button setTile: @"Press me!" forControlState: UIControlStateNormal];
    //    button..hidden = YES;
    //    */

}
-(CCCharacter *)character
{
    CCCharacter *character = [[CCCharacter alloc]init];
    character.health = 100;
 
    CCArmor *armor = [[CCArmor alloc]init];
    armor.name = @"Cloack";
    armor.health = 5;

    character.armor = armor;
    
    CCWeapon *weapon = [[CCWeapon alloc]init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    
    return character;
    
    
}
-(CCBoss *)boss
{
    CCBoss *boss = [[CCBoss alloc]init];
    boss.health = 70;
    
    return boss;
}

@end
