//
//  CCFactory.h
//  string
//
//  Created by Arturo Lopez on 8/24/14.
//  Copyright (c) 2014 Unsigned. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCCharacter.h"
#import "CCBoss.h"

@interface CCFactory : NSObject

-(NSArray*)tiles;

-(CCCharacter *)character;

-(CCBoss *)boss;




@end
