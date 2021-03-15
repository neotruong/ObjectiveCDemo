//
//  CoopBankButton.h
//  SellPetObjectC
//
//  Created by Neo Truong on 3/11/21.
//

#ifndef CoopBankButton_h
#define CoopBankButton_h


#endif /* CoopBankButton_h */
#import <UIKit/UIKit.h>

@interface CoopBankButton : UIView
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageHeightConstraint;
@property (strong, nonatomic) IBOutlet UIView *view;
@property (strong, nonatomic) IBOutlet UILabel * buttonContent;
@property (weak, nonatomic) IBOutlet UIImageView *buttonImage;
- (void)setupView;

@end
