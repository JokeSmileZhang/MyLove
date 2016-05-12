//
//  Person+Associate.m
//  kk
//
//  Created by JokeSmileZhang on 16/4/5.
//  Copyright © 2016年 JokeSmileZhang. All rights reserved.
//

#import "Person+Associate.h"

static char spaceColorKey;
@implementation Person (Associate)

- (void)setTopSpace:(double)space
{
 objc_setAssociatedObject(self, &spaceColorKey,[NSNumber numberWithDouble:space], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (double)getTopSpace
{
 return [objc_getAssociatedObject(self, &spaceColorKey) doubleValue];
}

@end
