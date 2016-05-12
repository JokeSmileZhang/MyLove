//
//  Person.m
//  kk
//
//  Created by JokeSmileZhang on 16/3/17.
//  Copyright © 2016年 JokeSmileZhang. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>


@interface Person()

@property (nonatomic,strong) NSMutableArray *keyArray ;

@end


@implementation Person


- (NSMutableArray *)keyArray
{
    if(!_keyArray){
        _keyArray = [NSMutableArray arrayWithCapacity:0];
    }
    return _keyArray;
}

- (Person* (^)())runBlock {
    return  ^() {
        NSLog(@"run");
        return self;
    };
}
- (Person* (^)())studyBlock{
    Person* (^block)() = ^() {
        return self;
    };
    return block;
}
- (Person*(^)())sleepBlock
{
    return ^(NSString *str){
        NSLog(@"  %@ sleep",str);
        return self;
    };
}
-(void)text
{
    NSLog(@"file");
    [self.keyArray addObject:@"1"];
    [self.keyArray addObject:@2];
    self.sleepBlock (@"一只大狗熊").sleepBlock(@"一只大花猫");
   [[self checkBlockText:^NSString*(NSString *str) {
       return  [NSString stringWithFormat:@"1%@,1%@",str,str];
   }] checkBlockText:^NSString *(NSString *str) {
       return @"1";
   }];
    self.runBlock().studyBlock().studyBlock().runBlock().studyBlock();
    
    objc_setAssociatedObject(self, "space",[NSNumber numberWithDouble:0.258], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
     id obj =    objc_getAssociatedObject(self, "space");
    NSLog(@"%f",[obj doubleValue]);
}
- (Person *)checkBlockText:(NSString * (^)(NSString*str))actionBlock
{
    NSString *name = actionBlock(@"");
    NSString *name1 = [NSString stringWithFormat:@"%@,%@",name,name];
    NSLog(@"%@",name1);
    return self ;
}

- (void)textWithString:(NSString *)str
{
    NSParameterAssert([str isEqualToString:@"1"]);
    NSLog(@"jaja");
}

- (Person *(^)())checkBlock
{
    return  ^(Spec *spec)  {
        if([spec runSpec]){
            NSLog(@"%@",spec);
        }
        return self;
    };
}



@end
@implementation Spec

- (BOOL)runSpec {
    return YES ;
}

@end