//
//  main.m
//  BlockTypeDef
//
//  Created by chen on 2017/4/28.
//  Copyright © 2017年 chen. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef int(^caculateBlock)(int, int);
void blockTypeDefine()
{
    /*
     <#returnType#>(^<#blockName#>)(<#parameterTypes#>) = ^(<#parameters#>) {
     <#statements#>
     };
     */
    
    
    /*
    int (^sumBlock)(int ,int) = ^(int a, int b){
      
        int value1 = a;
        int value2 = b;
        return (value1 + value2);
    };
    */
    caculateBlock sumBlock = ^(int a, int b){
        
        int value1 = a;
        int value2 = b;
        return (value1 + value2);
    };

    int sumValue = sumBlock(20, 30);
    NSLog(@"sumValue = %d",sumValue);
   
    /*
    int (^minusBlock)(int, int) = ^(int c,int d){
      
        int value1 = c;
        int value2 = d;
        return (value1 - value2);
    };
      */
    caculateBlock minusBlock = ^(int c,int d){
        int value1 = c;
        int value2 = d;
        return (value1 - value2);
    };
    
    int minusValue = minusBlock(20, 30);
    NSLog(@"minusValue = %d",minusValue);
}






// 注意: 利用typedef给block起别名, block变量的名称就是别名
typedef int(^caculateBlock)(int, int);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        blockTypeDefine();
        
        caculateBlock sumBlock = ^(int a, int b){
          
            return  a + b;
        };
        
        NSLog(@"sumValue = %d",sumBlock(38,42));
        
        
        
        caculateBlock minusBlock = ^(int c, int d){
          
            return c - d;
        };
       
         NSLog(@"minusValue = %d",minusBlock(58,42));
        
        
     }
    return 0;
}
