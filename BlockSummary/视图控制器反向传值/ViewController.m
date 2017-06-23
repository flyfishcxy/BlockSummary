//
//  ViewController.m
//  视图控制器反向传值
//
//  Created by chen on 2017/5/21.
//  Copyright © 2017年 chen. All rights reserved.
//

#import "ViewController.h"
#import "EditViewController.h"



@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *displayNameLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EditViewController *vc = segue.destinationViewController;
    
     __weak ViewController *weakSelf = self;
    vc.completionBlock = ^(NSString *str){
        
        weakSelf.displayNameLabel.text = str;
    };
    
    
}

-(void)dealloc{
    NSLog(@"ViewController = %s",__func__);
}



@end
