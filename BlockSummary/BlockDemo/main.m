//
//  main.m
//  BlockDemo
//
//  Created by chen on 2017/4/27.
//  Copyright © 2017年 chen. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 Block的底层是C语言的
 Block是一种数据类型
 是一个提前准备好的代码，在需要的时候执行
 
 
 1 Block 是OC中的一种数据类型
 2 是一个能工作的代码单元，可以在任何需要的时候被执行
 3 本质上是轻量级的匿名函数，可以作为其他函数的参数或者返回值
 4 块代码本身可能有一个参数列表，也可能有一个返回值
 5 可以把块代码赋给一个变量并在需要时候调用，就像调用一个普通函数一样
 
 
 */

#pragma mark --打印🌹
void printRose()
{
    printf("  {@} \n");
    printf("   |  \n");
    printf("  \\|/ \n");
    printf("   |  \n");
}

#pragma mark -- C语言的函数指针
void functionPointOfC()
{
    // void代表指向的函数没有返回值
    // ()代表指向的函数没有形参
    // (*roseP)代表roseP是一个指向函数的指针
    void (*roseP) ();
    roseP = printRose;
    roseP();

}

#pragma mark -- 定义一个block变量roseBlock,没有返回值,也没有形参
void functionBlock()
{
    //定义一个block变量roseBlock,没有返回值,也没有形参
    //如果block没有参数，那么^后面的（）可以省略
    void(^roseBlock)() = ^{
        
        printf("  {@} \n");
        printf("   |  \n");
        printf("  \\|/ \n");
        printf("   |  \n");
        
    };
    
    roseBlock();
}

#pragma mark --定义一个block变量roseBlock,也可以没有返回值有形参
void functionBlockHasParams()
{
    //- Block的定义格式
    //返回值类型 (^block变量名)(形参列表) = ^(形参列表) {
    //};
    //定义一个block变量roseBlock,没有返回值有形参
    
    
    void(^roseBlock)(int);//先定义
    
    roseBlock = ^(int num){//后初始化
        for (int i=0; i < num; i++) {
            printf("  {@} \n");
            printf("   |  \n");
            printf("  \\|/ \n");
            printf("   |  \n");
            printf("\n");
            
        }
    };
    
    
    void(^roseBlockTwo)(int) = ^(int num){//先定义和初始化
        for (int i=0; i < num; i++) {
            printf("  {@} \n");
            printf("   |  \n");
            printf("  \\|/ \n");
            printf("   |  \n");
            printf("\n");
            
        }
    };
    
    
    
    roseBlock(3);
}

#pragma mark --定义一个block变量roseBlock,也可以有返回值没有形参
void functionBlockHasReturnValue()
{
    //无形参形式1不省略()
    int (^roseBlock)()= ^(){
        int a = 5;
        int b = 10;
        return a + b;
    };
    //无形参形式2省略()
    int (^roseBlock2)()= ^{
        int a = 5;
        int b = 14;
        return a + b;
    };
    
    int c = roseBlock();
    NSLog(@"%d",c);
    int d = roseBlock2();
    NSLog(@"%d",d);

}

#pragma mark --定义一个block变量roseBlock,也可以有返回值有形参
void functionBlockHasReturnValueAndHasParams()
{
    int (^sumBlock)(int, int) = ^(int a,int b){
        
        return  a+b;
    };

    int sumValue = sumBlock(46,54);
    NSLog(@"%i",sumValue);
    
    // block是一种数据类型
    int (^printBlock)(int)= ^int (int num){
        for (int i=0; i<num; ++i) {
            printf("--------\n");
        }
        return 1;
    };
    //printBlock(2);
    NSLog(@"%i",printBlock(2));
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //printRose();
        
        functionBlockHasReturnValueAndHasParams();
        
    }
    return 0;
}
