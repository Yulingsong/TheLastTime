//
//  ViewController.m
//  TheLastTime
//
//  Created by yulingsong on 16/6/30.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#define SCREEN_WIDTH     [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT    [[UIScreen mainScreen] bounds].size.height
#define YLSRect(x, y, w, h)  CGRectMake([UIScreen mainScreen].bounds.size.width * x, [UIScreen mainScreen].bounds.size.height * y, [UIScreen mainScreen].bounds.size.width * w,  [UIScreen mainScreen].bounds.size.height * h)
#define YLSColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define YLSFont(f) SCREEN_WIDTH * f
#define YLSSize(s) SCREEN_HEIGHT * s


#import "ViewController.h"
#import "DDClock.h"
#import "JKSideSlipView.h"
#import "MenuCell.h"
#import "MenuView.h"

@interface ViewController ()
/** 钟表 */
@property (nonatomic,strong) DDClock *clock;
/** 消息标签 */
@property (nonatomic,strong) UILabel *noticeLb;
/** 消息标签1 */
@property (nonatomic,strong) UILabel *noticeLb1;
/** view */
@property (nonatomic,strong) UIView *bgView;
/** year */
@property (nonatomic,strong) UILabel *year;
/** mouth */
@property (nonatomic,strong) UILabel *mouth;
/** week */
@property (nonatomic,strong) UILabel *week;
/** day */
@property (nonatomic,strong) UILabel *day;
/** hour */
@property (nonatomic,strong) UILabel *hour;
/** minute */
@property (nonatomic,strong) UILabel *minute;
/** 左菜单按钮 */
@property (nonatomic,strong) UIButton *leftBtn;
/** 侧滑菜单 */
@property (nonatomic,strong) JKSideSlipView *sideSlipView;


@end

@implementation ViewController

//-(DDClock *)clock
//{
//    if (_clock==nil)
//    {
//        _clock = [[DDClock alloc]initWithTheme:DDClockThemeDefault position:CGPointMake((SCREEN_WIDTH - 200 )/2, 100)];
//        [self.view addSubview:_clock];
//        NSLog(@"1111");
//    }
//    return _clock;
//}

-(UILabel *)noticeLb
{
    if (!_noticeLb)
    {
        _noticeLb = [[UILabel alloc]init];
        [self.view addSubview:_noticeLb];
    }
    return _noticeLb;
}

-(UILabel *)noticeLb1
{
    if (!_noticeLb1)
    {
        _noticeLb1 = [[UILabel alloc]init];
        [self.view addSubview:_noticeLb1];
    }
    return _noticeLb1;
}

-(UIView *)bgView
{
    if (!_bgView)
    {
        _bgView = [[UIView alloc]init];
        [self.view addSubview:_bgView];
    }
    return _bgView;
}

-(UILabel *)year
{
    if (!_year)
    {
        _year = [[UILabel alloc]init];
        [self.view addSubview:_year];
    }
    return _year;
}
-(UILabel *)mouth
{
    if (!_mouth)
    {
        _mouth = [[UILabel alloc]init];
        [self.view addSubview:_mouth];
    }
    return _mouth;
}
-(UILabel *)week
{
    if (!_week)
    {
        _week = [[UILabel alloc]init];
        [self.view addSubview:_week];
    }
    return _week;
}
-(UILabel *)day
{
    if (!_day)
    {
        _day = [[UILabel alloc]init];
        [self.view addSubview:_day];
    }
    return _day;
}
-(UILabel *)hour
{
    if (!_hour)
    {
        _hour = [[UILabel alloc]init];
        [self.view addSubview:_hour];
    }
    return _hour;
}
-(UILabel *)minute
{
    if (!_minute)
    {
        _minute = [[UILabel alloc]init];
        [self.view addSubview:_minute];
    }
    return _minute;
}

-(UIButton *)leftBtn
{
    if (!_leftBtn)
    {
        _leftBtn = [[UIButton alloc]init];
        [self.view addSubview:_leftBtn];
    }
    return _leftBtn;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setSubValues];
    
}



-(void)setSubValues
{

    self.clock = [[DDClock alloc]initWithTheme:DDClockThemeDefault position:CGPointMake((SCREEN_WIDTH - 200 )/2, 100)];
    [self.view addSubview:self.clock];
    
    
    

    [self.noticeLb setFrame:YLSRect(0, 320/667, 1, 30/667)];
    [self.noticeLb setText:@"你 23.718237131 岁了"];
    [self.noticeLb setTextAlignment:NSTextAlignmentCenter];
    [self.noticeLb setFont:[UIFont systemFontOfSize:YLSFont(18/375)]];
    
    [self.noticeLb1 setFrame:YLSRect(28/375, 350/667, 318/375, 20/667)];
    [self.noticeLb1 setText:@"在这个世界上，你已经存在了"];
    [self.noticeLb1 setTextAlignment:NSTextAlignmentLeft];
    [self.noticeLb1 setFont:[UIFont systemFontOfSize:YLSFont(9/375)]];
    
    [self.bgView setFrame:YLSRect(28/375, 370/667, 318/375, 92/667)];
    
    [self.year setFrame:YLSRect(0, 0, 106/375, 46/667)];
    [self.year setNumberOfLines:0];
    NSString *yearStr = @"23\n年";
    [self.year setText:yearStr];
    [self.year setFont:[UIFont systemFontOfSize:YLSFont(15/375)]];
    [self.year setTextAlignment:NSTextAlignmentCenter];
    [self.year.layer setBorderWidth:0.5];
    [self.year.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.bgView addSubview:self.year];
    
    [self.mouth setFrame:YLSRect(106/375, 0, 106/375, 46/667)];
    [self.mouth setNumberOfLines:0];
    NSString *mouthStr = @"284\n月";
    [self.mouth setText:mouthStr];
    [self.mouth setFont:[UIFont systemFontOfSize:YLSFont(14/375)]];
    [self.mouth setTextAlignment:NSTextAlignmentCenter];
    [self.mouth.layer setBorderWidth:0.5];
    [self.mouth.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.bgView addSubview:self.mouth];
    
    [self.week setFrame:YLSRect(212/375, 0, 106/375, 46/667)];
    [self.week setNumberOfLines:0];
    NSString *weekStr = @"1236\n周";
    [self.week setText:weekStr];
    [self.week setFont:[UIFont systemFontOfSize:YLSFont(14/375)]];
    [self.week setTextAlignment:NSTextAlignmentCenter];
    [self.week.layer setBorderWidth:0.5];
    [self.week.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.bgView addSubview:self.week];
    
    [self.day setFrame:YLSRect(0, 46/667, 106/375, 46/667)];
    [self.day setNumberOfLines:0];
    NSString *dayStr = @"8657\n天";
    [self.day setText:dayStr];
    [self.day setFont:[UIFont systemFontOfSize:YLSFont(14/375)]];
    [self.day setTextAlignment:NSTextAlignmentCenter];
    [self.day.layer setBorderWidth:0.5];
    [self.day.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.bgView addSubview:self.day];
    
    [self.hour setFrame:YLSRect(106/375, 46/667, 106/375, 46/667)];
    [self.hour setNumberOfLines:0];
    NSString *hourStr = @"207775\n小时";
    [self.hour setText:hourStr];
    [self.hour setFont:[UIFont systemFontOfSize:YLSFont(14/375)]];
    [self.hour setTextAlignment:NSTextAlignmentCenter];
    [self.hour.layer setBorderWidth:0.5];
    [self.hour.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.bgView addSubview:self.hour];
    
    [self.minute setFrame:YLSRect(212/375, 46/667, 106/375, 46/667)];
    [self.minute setNumberOfLines:0];
    NSString *minuteStr = @"12466530\n分钟";
    [self.minute setText:minuteStr];
    [self.minute setFont:[UIFont systemFontOfSize:YLSFont(14/375)]];
    [self.minute setTextAlignment:NSTextAlignmentCenter];
    [self.minute.layer setBorderWidth:0.5];
    [self.minute.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.bgView addSubview:self.minute];
    
    [self.leftBtn setFrame:YLSRect(10/375, 30/667, 50/375, 30/667)];
    [self.leftBtn setBackgroundColor:[UIColor lightGrayColor]];
    [self.leftBtn setTitle:@"left" forState:UIControlStateNormal];
    [self.leftBtn addTarget:self action:@selector(cilckLeftView) forControlEvents:UIControlEventTouchUpInside];

}



-(void)cilckLeftView
{
//    NSLog(@"1111");
    _sideSlipView = [[JKSideSlipView alloc]initWithSender:self];
    _sideSlipView.backgroundColor = [UIColor redColor];
    MenuView *menu = [MenuView menuView];
//    [menu didSelectRowAtIndexPath:^(id cell, NSIndexPath *indexPath) {
//        NSLog(@"click");
//        [_sideSlipView hide];
////        NextViewController *next = [[NextViewController alloc]init];
////        [self.navigationController pushViewController:next animated:YES];
//    }];
//    menu.items = @[@{@"title":@"1",@"imagename":@"1"},@{@"title":@"2",@"imagename":@"2"},@{@"title":@"3",@"imagename":@"3"},@{@"title":@"4",@"imagename":@"4"}];
    [_sideSlipView setContentView:menu];
    [self.view addSubview:_sideSlipView];
    [_sideSlipView show];
}


@end
