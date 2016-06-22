//
//  TestView.m
//  StudyUIBezierPath
//
//  Created by zhangzhihua on 16/5/30.
//  Copyright © 2016年 zhangzhihua. All rights reserved.
//
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

//起始高度
#define kHeight 40
//最大高度
#define kMAX_Height  100
//起始点
#define kCenter CGPointMake(self.frame.size.width / 2, 100)

#define moveCenter CGPointMake(self.frame.size.width / 2, 300)
//橡皮泥颜色
#define kCOLOR RGBA(187, 187, 187, 1)
//延迟时间
#define delaytime 0.5f
#import "TestView.h"

@implementation TestView

-(void)drawRect:(CGRect)rect{

    UIBezierPath *path = [UIBezierPath bezierPath];
    // 设置描边色
    [kCOLOR setStroke];
    // 设置填充色
    [kCOLOR setFill];
    // 将path绘制出来
    [path stroke];
    [path closePath];
    //画圆
//    UIBezierPath *circle2 = [UIBezierPath bezierPathWithArcCenter:kCenter radius:20 startAngle:0 endAngle:2*M_PI clockwise:1];
    //[circle2 moveToPoint:CGPointMake(150, 150)];
  //  [circle2 moveToPoint:CGPointMake(kCenter.x - 20 , kCenter.y)];
//    [circle2 addLineToPoint:CGPointMake(kCenter.x + 20, kCenter.y)];
//    [circle2 addLineToPoint:CGPointMake(moveCenter.x + 5, moveCenter.y)];
//    [circle2 addLineToPoint:CGPointMake(moveCenter.x - 5, moveCenter.y)];
//    [circle2 addLineToPoint:CGPointMake(kCenter.x - 20 , kCenter.y)];
    //第二个圆
//    UIBezierPath *circle1 = [UIBezierPath bezierPathWithArcCenter:moveCenter radius:5 startAngle:0 endAngle:2*M_PI clockwise:1];
//    [circle2 addArcWithCenter:moveCenter radius:5 startAngle:0 endAngle:2*M_PI clockwise:1];
    //[circle2 addArcWithCenter:center4 radius:rad3 startAngle:0 endAngle:2*M_PI clockwise:1];
    //填充颜色
//    [circle2 fill];
    //连线
//    [circle2 stroke];
//    
//    [circle1 stroke];
//
//    CGFloat rad3 = (pow(10, 2)+pow(5, 2)-pow(20, 2))/(2*(15));
//    CGPoint center2 = relative(kCenter, 0, moveCenter.y);
//    CGPoint center3 = relative(kCenter, 20+rad3, 0);
//    CGPoint center4 = relative(kCenter, -20-rad3, 0);
//    UIBezierPath *line = [UIBezierPath bezierPath];
    
    /*
     aPath.lineCapStyle = kCGLineCapRound;  //线条拐角
     aPath.lineJoinStyle = kCGLineCapRound;  //终点处理
     */
//    [line moveToPoint:kCenter];
//    [line addLineToPoint:center3];
//    [line addLineToPoint:center2];
//    [line addLineToPoint:moveCenter];
//    [line closePath];
//    
//    [line appendPath:circle2];
//    [kCOLOR setFill];
//    [line stroke];
    //[line fill];
    
    
    
    //画曲线
    UIBezierPath *line1 = [UIBezierPath bezierPath];
    line1.lineCapStyle = kCGLineCapSquare;  //线条拐角
    line1.lineJoinStyle = kCGLineCapSquare;  //终点处理
    [line1 moveToPoint:CGPointMake(20, 20)];
    [line1 addCurveToPoint:CGPointMake(20, 100) controlPoint1:CGPointMake(300, 20)  controlPoint2:CGPointMake(50, 80) ];
    //[line1 addLineToPoint:CGPointMake(300, 20)];
    [line1 addLineToPoint:CGPointMake(50, 400)];
    
//    line1.lineCapStyle = kCGLineCapButt;  //线条拐角
//    line1.lineJoinStyle = kCGLineCapButt;  //终点处理
    [line1 setLineWidth:1];
    [[UIColor blueColor] setStroke];
    //[kCOLOR setFill];
    //[line1 fill];
    [line1 stroke];
    
    
}
CGPoint relative(CGPoint point, CGFloat x, CGFloat y)
{
    return CGPointMake(point.x + x, point.y + y);
}

@end
