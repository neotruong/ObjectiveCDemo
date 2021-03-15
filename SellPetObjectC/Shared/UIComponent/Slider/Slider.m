//
//  Slider.m
//  SellPetObjectC
//
//  Created by Neo Truong on 3/12/21.
//

#import "Slider.h"

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Slider (){
    int isActive;
    NSArray *sliderList;
}

@end

@implementation Slider

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [[NSBundle mainBundle] loadNibNamed:@"Slider" owner: self
                                    options:nil];
        [self addSubview:self.view];
        
        
        
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    
    self = [super initWithCoder:coder];
    if (self) {
        
        [[NSBundle mainBundle] loadNibNamed:@"Slider" owner: self
                                    options:nil];
        [self addSubview:self.view];
        
        // Make black layer
        CAGradientLayer *layer = [CAGradientLayer layer];
        layer.colors = @[(id)[UIColor clearColor].CGColor, (id)[UIColor blackColor].CGColor];
        layer.frame = _sliderImage.bounds;
        [_sliderImage.layer addSublayer:layer];
        
        //
        
        _sliderImage.layer.borderColor = [UIColor clearColor].CGColor;
        _sliderImage.layer.cornerRadius = 16;
        _sliderImage.layer.borderWidth = 5;
        [_sliderImage addSubview: _sliderContent];
        
        //
        
        // SLIDER ROUNED
        sliderList = @[@"slider_1",@"slider_2",@"slider_3"];
        isActive = 0;
        _sliderButton1.layer.cornerRadius = _sliderButton1.frame.size.height /2;
        _sliderButton2.layer.cornerRadius = _sliderButton2.frame.size.height /2;
        _sliderButton3.layer.cornerRadius = _sliderButton3.frame.size.height /2;
        
        [NSTimer scheduledTimerWithTimeInterval:3.0f
                                         target:self selector:@selector(methodB:) userInfo:nil repeats:YES];
        
        
        
    }
    return self;
}

- (void) methodB:(NSTimer *)timer
{
    if(isActive == 0){
        isActive += 1;
        _sliderImage.image =  [UIImage imageNamed:sliderList[isActive]];
        _sliderButton2.backgroundColor= [UIColor redColor];
        _sliderButton1.backgroundColor= [UIColor grayColor];
        _sliderButton3.backgroundColor= [UIColor grayColor];
    } else if(isActive == 1){
        isActive +=1;
        _sliderImage.image =  [UIImage imageNamed:sliderList[isActive]];
        _sliderButton3.backgroundColor= [UIColor redColor];
        _sliderButton1.backgroundColor= [UIColor grayColor];
        _sliderButton2.backgroundColor= [UIColor grayColor];
    } else {
        isActive = 2;
        _sliderImage.image =  [UIImage imageNamed:sliderList[isActive]];
        _sliderButton1.backgroundColor= [UIColor redColor];
        _sliderButton2.backgroundColor= [UIColor grayColor];
        _sliderButton3.backgroundColor= [UIColor grayColor];
    }
}


@end
