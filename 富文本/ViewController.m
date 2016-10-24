//
//  ViewController.m
//  富文本
//
//  Created by liuxingchen on 16/10/24.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableDictionary *textDict = [NSMutableDictionary dictionary];
    
    //设置文字颜色
    textDict[NSForegroundColorAttributeName] = [UIColor redColor];
    
    //设置文字字体
    textDict[NSFontAttributeName] = [UIFont systemFontOfSize:30];
    
    //设置文本字体的宽度和空心颜色,空心颜色会覆盖文字颜色
    textDict[NSStrokeWidthAttributeName] = @(4);
    textDict[NSStrokeColorAttributeName] = [UIColor blueColor];
    
    //创建阴影对象
    NSShadow *shadow = [[NSShadow alloc]init];
    shadow.shadowColor = [UIColor greenColor];
    shadow.shadowBlurRadius = 3;
    shadow.shadowOffset = CGSizeMake(5, 5);
    
    textDict[NSShadowAttributeName] = shadow;
    
    NSAttributedString *strAtt = [[NSAttributedString alloc]initWithString:@"LxcccccccccccccccLxccccccccccccccc" attributes:textDict];
    //label也可以添加富文本，只不过label只能计算普通的文本框，没有直接的方法换行
    self.label.attributedText = strAtt;
    
}


@end
