//
//   FunctionModel.m
//   project
//   
//   Created  by lulingqin on 2020/2/12
//   Copyright © 2020 phjt. All rights reserved.
//  


#import "FunctionModel.h"

@implementation FunctionModel
+ (instancetype)makeFuncitonName:(NSString *)name TargetClass:(NSString *)className
{
    FunctionModel *model = [FunctionModel new];
    model.functioName = name;
    model.functioTargetClass = className;
    return model;
}
@end
