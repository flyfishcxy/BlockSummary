//
//  main.m
//  BlockAsFunctionParam
//
//  Created by chen on 2017/4/30.
//  Copyright © 2017年 chen. All rights reserved.
//

#import <Foundation/Foundation.h>


void goToWork(void (^workBlock)())
{
    NSLog(@"起床");
    NSLog(@"穿衣服");
    NSLog(@"洗漱");
    NSLog(@"喝早茶");
    NSLog(@"驾车去上班");
    
    workBlock();


    NSLog(@"收拾东西");
    NSLog(@"驾车回家");
    NSLog(@"吃晚饭");
    NSLog(@"洗澡");
    NSLog(@"睡觉");
    
}

void goToWorkInDay1(void(^workBlock)())
{
    goToWork(^{
        //NSLog(@"认识新同事");
        workBlock();
    });
}

void goToWorkInDay2()
{
    goToWork(^{
        NSLog(@"熟悉公司代码");
    });
}

void goToWorkInDay3()
{
    goToWork(^{
        NSLog(@"开始编写代码");
    });
}

void goToWorkInDay4(){
    goToWork(^{
        NSLog(@"应用程序上架");
    });
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"--------第一天------");
        goToWorkInDay1(^{
            NSLog(@"--------------");
            NSLog(@"认识新同事");
            NSLog(@"--------------");
        });
        
        NSLog(@"--------第二天------");
        
        goToWorkInDay2();
        
        NSLog(@"--------第三天------");
        
        goToWorkInDay3();
        
        NSLog(@"--------第四天------");
        
        goToWorkInDay4();
        
        
        
    }
    return 0;
}
