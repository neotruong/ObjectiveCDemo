//
//  ViewController.m
//  ObjectiveDemo
//
//  Created by TRUONG PHUONG HONG PHUC on 3/15/21.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    HomeScreen* homeViewController = [HomeScreen new];
    HomeScreen* homeViewController1 = [HomeScreen new];
    HomeScreen* homeViewController2 = [HomeScreen new];
    HomeScreen* homeViewController3 = [HomeScreen new];
    NSArray* tabViewController = @[homeViewController,homeViewController1,homeViewController2,homeViewController3];
    
    [self setViewControllers: tabViewController];
    
    homeViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle: @"Trang Chủ" image: [UIImage imageNamed:@"task_home"] tag:0];
   [[UITabBar appearance] setSelectedImageTintColor:[UIColor redColor]];
   
       [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor blackColor] }
                                                forState:UIControlStateSelected];
    homeViewController1.tabBarItem = [[UITabBarItem alloc] initWithTitle: @"Tin Tức" image: [UIImage imageNamed:@"task_news"] tag:0];
    homeViewController2.tabBarItem = [[UITabBarItem alloc] initWithTitle: @"Thông Báo" image: [UIImage imageNamed:@"task_noti"] tag:0];
    homeViewController3.tabBarItem = [[UITabBarItem alloc] initWithTitle: @"Cài Đặt " image: [UIImage imageNamed:@"task_acc"] tag:0];
   
    
    
    // border radius
    [self.tabBar.layer setCornerRadius:30.0f];

    // border
    [self.tabBar.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.tabBar.layer setBorderWidth:1.5f];

    // drop shadow
    [self.tabBar.layer setShadowColor:[UIColor blackColor].CGColor];
    [self.tabBar.layer setShadowOpacity:0.8];
    [self.tabBar.layer setShadowRadius:3.0];
    [self.tabBar.layer setShadowOffset:CGSizeMake(2.0, 2.0)];
    
    
    
}




@end
