//
//  Person.h
//  kk
//
//  Created by JokeSmileZhang on 16/3/17.
//  Copyright © 2016年 JokeSmileZhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (Person *(^)())runBlock;
- (Person* (^)())studyBlock;
-(void)text;
@end

@interface Spec : NSObject
- (BOOL)runSpec;
@end