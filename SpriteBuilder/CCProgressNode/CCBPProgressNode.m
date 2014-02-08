//
//  CCBPProgressNode.m
//  SpriteBuilder
//
//  Created by haligalaph on 27.01.14.
//
//

#import "CCBPProgressNode.h"
#import "CCProgressNode+SpriteBuilder.h"

@implementation CCBPProgressNode

-(id) init
{
    if( (self=[super init]) ) {
        // since color and opacity are stored inside _sprite, it has to be created hear
        self.sprite = [[CCSprite alloc] init];
    }
    return self;
}

// since updateProgress is not a part of protected interface of CCProgressNode, like it should be,
// we will use this hack to update node's state
-(void) forceUpdateState
{
    NSUInteger type = _type;
    _type = NSUIntegerMax;
    self.type = type;
}

-(void) setSpriteFrame:(CCSpriteFrame*)spriteFrame
{
    _sprite.spriteFrame = spriteFrame;
    self.contentSize = _sprite.contentSize;
    [self forceUpdateState];
}

-(void) setReverseDirection:(BOOL)reverseDirection
{
    if( _reverseDirection != reverseDirection )
    {
        super.reverseDirection = reverseDirection;
        // we have to update node's state cause parent class doesn't do it
        [self forceUpdateState];
    }
}

-(void) setMidpoint:(CGPoint)midpoint
{
    super.midpoint = midpoint;
    // we have to update node's state cause parent class doesn't do it
    [self forceUpdateState];
}

-(void) setBarChangeRate:(CGPoint)barChangeRate
{
    super.barChangeRate = barChangeRate;
    // we have to update node's state cause parent class doesn't do it
    [self forceUpdateState];
}

@end