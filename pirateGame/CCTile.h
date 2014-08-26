//
//  CCTile.h
//  string
//
//  Created by Arturo Lopez on 8/24/14.
//  Copyright (c) 2014 Unsigned. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCWeapon.h"
#import "CCArmor.h"

@interface CCTile : NSObject

@property (strong,nonatomic) NSString *story;
@property (strong,nonatomic) UIImage *backgroundImage;
@property (strong,nonatomic) NSString *actionButtonName;

@property (strong,nonatomic) CCWeapon *weapon;
@property (strong,nonatomic) CCArmor *armor;

@property (nonatomic) int healthEffect;



@end
