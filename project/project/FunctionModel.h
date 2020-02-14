//
//   FunctionModel.h
//   project
//   
//   Created  by lulingqin on 2020/2/12
//   Copyright © 2020 phjt. All rights reserved.
//  


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FunctionModel : NSObject
@property(copy, nonatomic)NSString      *functioName;
@property(copy, nonatomic)NSString      *functioTargetClass;

+ (instancetype)makeFuncitonName:(NSString *)name TargetClass:(NSString *)className;


@end

NS_ASSUME_NONNULL_END
