//
//  CCCharacter.h
//  string
//
//  Created by Arturo Lopez on 8/24/14.
//  Copyright (c) 2014 Unsigned. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCWeapon.h"
#import "CCArmor.h"

@interface CCCharacter : NSObject

@property (strong,nonatomic) CCWeapon *weapon;
@property (strong,nonatomic) CCArmor *armor;
@property (nonatomic) int damage;
@property (nonatomic) int health;


@end
