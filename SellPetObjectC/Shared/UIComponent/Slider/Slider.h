//
//  Slider.h
//  SellPetObjectC
//
//  Created by Neo Truong on 3/12/21.
//
#import <UIKit/UIKit.h>

#ifndef Slider_h
#define Slider_h


#endif /* Slider_h */

@interface Slider : UIView
@property (strong, nonatomic) IBOutlet UIView *view;
@property (strong, nonatomic) IBOutlet UILabel * sliderContent;
@property (weak, nonatomic) IBOutlet UIImageView *sliderImage;
@property (weak, nonatomic) IBOutlet UIView *sliderButton1;
@property (weak, nonatomic) IBOutlet UIView *sliderButton2;
@property (weak, nonatomic) IBOutlet UIView *sliderButton3;
@end
