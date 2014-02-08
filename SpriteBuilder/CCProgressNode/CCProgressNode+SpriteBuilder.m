//
//  CCProgressNode+SpriteBuilder.m
//  SpriteBuilder
//
//  Created by haligalaph on 27.01.14.
//
//

#import "CCProgressNode+SpriteBuilder.h"

@implementation CCProgressNode (SpriteBuilder)

-(CCSpriteFrame*) spriteFrame
{
    return _sprite.spriteFrame;
}

-(void) setSpriteFrame:(CCSpriteFrame*)spriteFrame
{
    CCSprite *sprite = nil;
    if(spriteFrame)
        sprite = [CCSprite spriteWithSpriteFrame:spriteFrame];
    self.sprite = sprite;
}

-(ccBlendFunc) blendFunc
{
    return _sprite.blendFunc;
}

-(void) setBlendFunc:(ccBlendFunc)blendFunc
{
    _sprite.blendFunc = blendFunc;
}

@end
