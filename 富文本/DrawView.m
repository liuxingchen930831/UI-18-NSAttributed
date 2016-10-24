//
//  DrawView.m
//  富文本
//
//  Created by liuxingchen on 16/10/24.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

-(void)drawRect:(CGRect)rect
{
    //超出裁剪区域的内容全部裁剪掉，必须放在绘制之前，放在渲染后面那不就成了没渲染吗
    UIRectClip(CGRectMake(0, 0,100,100));
    UIImage *image = [UIImage imageNamed:@"阿狸头像"];
    //绘制的内容尺寸跟图片尺寸一样
//    [image drawAtPoint:CGPointZero];
    //填满整个bounds
//    [image drawInRect:rect];
    //平铺
    
    [image drawAsPatternInRect:rect];
    
}
-(void)drawText
{
    NSString * str = @"LxcccccccccccccccLxccccccccccccccc";
    
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
    
    //绘制富文本，此方法不会换行
    //    [str drawAtPoint:CGPointZero withAttributes:textDict];
    [str drawInRect:self.bounds withAttributes:textDict];
}
@end
