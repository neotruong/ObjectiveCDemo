//
//  UserInformation.h
//  SellPetObjectC
//
//  Created by Neo Truong on 3/11/21.
//

#ifndef UserInformation_h
#define UserInformation_h


#endif /* UserInformation_h */

#import <UIKit/UIKit.h>

@interface UserInformation : UIView
@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UIImageView *userAvatar;
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *userID;
@property (weak, nonatomic) IBOutlet UILabel *userMoney;
- (void)setupView;

@end
