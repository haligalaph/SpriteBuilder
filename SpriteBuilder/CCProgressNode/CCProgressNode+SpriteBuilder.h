//
//  CCProgressNode+SpriteBuilder.h
//  SpriteBuilder
//
//  Created by haligalaph on 27.01.14.
//
//

#import "CCProgressNode.h"

/**
 This category is needed for creating CCProgressNode using SpriteBuilder
 */
@interface CCProgressNode (SpriteBuilder)

/** Forwarding sprite properties */
@property (nonatomic,strong) CCSpriteFrame* spriteFrame;
@property (nonatomic,assign) ccBlendFunc blendFunc;

@end
