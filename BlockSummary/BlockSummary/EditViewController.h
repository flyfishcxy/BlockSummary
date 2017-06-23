//
//  EditViewController.h
//  BlockSummary
//
//  Created by chen on 2017/5/21.
//  Copyright © 2017年 chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditViewController : UIViewController


@property(nonatomic,copy) void (^completionBlock)(NSString *str);


@end
