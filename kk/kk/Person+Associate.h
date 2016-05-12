//
//  Person+Associate.h
//  kk
//
//  Created by JokeSmileZhang on 16/4/5.
//  Copyright © 2016年 JokeSmileZhang. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>

@interface Person (Associate)

- (void)setTopSpace:(double)space;
- (double)getTopSpace;
@end
