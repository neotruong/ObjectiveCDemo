//
//  ViewController.m
//  SellPetObjectC
//
//  Created by Neo Truong on 3/11/21.
//

#import "HomeScreen.h"
#import "UserInformation.h"
#import "CollectionViewCell.h"
#import "HeaderLabel.h"
#import "CollectionViewCell.h"

@interface HomeScreen (){

    NSArray *buttonTitle;
    NSArray *Icon_header;
    NSArray *buttonEcomListName;
    NSArray *buttonFeatureListName;
    NSArray *Icon_ecom;
    NSArray *Icon_feature;
}

@end

@implementation HomeScreen


- (void)viewDidLoad {
    
    // Mock data setup
    buttonEcomListName= @[@"Tài Khoản",@"Thanh Toán Hóa Đơn",@"Nạp Tiền Điện Thoại",@"Trả nợ vay",@"Đặt vé máy bay",@"Đặt vé xem phim"];
    buttonFeatureListName= @[@"Danh Bạ Thụ Hưởng",@"Danh Bạ Hóa Đơn",@"Cài Đặt SoftOTP",@"Cài Đặt FaceID",@"Báo cáo giao dịch",@"ATM/Chi Nhánh"];
    buttonTitle = @[@"Tài Khoản",@"Chuyển Tiền",@"QR Pay",@"Nạp Tiền Điện Thoại"];
    Icon_header = @[@"button_TK",@"button_CT",@"button_QR",@"button_NTDT"];
    Icon_ecom = @[@"ic_1",@"ic_2",@"ic_3",@"ic_4",@"ic_5",@"ic_6"];
    Icon_feature = @[@"ic_7",@"ic_8",@"ic_9",@"ic_10",@"ic_11",@"ic_12"];
    //
    
    [super viewDidLoad];
    self.view.insetsLayoutMarginsFromSafeArea = false;
    self.navigationController.navigationBarHidden = true;
    
    self.collectionButton = _collectionButton;
    self.bodyCollectionView_ecom = _bodyCollectionView_ecom;
    self.bodyCollectionView_feature = _bodyCollectionView_feature;
    
    // Collection setup
    _collectionButton.dataSource = self;
    _collectionButton.delegate = self;
    _bodyCollectionView_ecom.delegate = self;
    _bodyCollectionView_ecom.dataSource = self;
    _bodyCollectionView_feature.delegate = self;
    _bodyCollectionView_feature.dataSource = self;
    //
    
    [self setupUI];
}

- (void) setupUI {
    
    // Make image whiter
    _backgroundImage.opaque = NO;
    _backgroundImage.alpha = 0.88;
    // Add black layer to image
    CAGradientLayer *layer = [CAGradientLayer layer];
    layer.colors = @[(id)[UIColor clearColor].CGColor, (id)[UIColor blackColor].CGColor];
    layer.frame = _backgroundImage.bounds;
    [_backgroundImage.layer addSublayer:layer];
    
    // border for bodyView
    _bodyView.layer.borderColor = [UIColor clearColor].CGColor;
    _bodyView.layer.borderWidth = 0.4f;
    _bodyView.layer.cornerRadius = 25;
    
    [_bodyView setBackgroundColor:[UIColor colorWithRed:240/255.0 green:244/255.0 blue:245/255.0 alpha:1]];
    [self.view setBackgroundColor:[UIColor colorWithRed:240/255.0 green:244/255.0 blue:245/255.0 alpha:1]];
    
    // 2nd collection view
    _bodyCollectionView_ecom.layer.borderColor = [UIColor clearColor].CGColor;
    _bodyCollectionView_ecom.layer.borderWidth = 0.4f;
    _bodyCollectionView_ecom.layer.cornerRadius = 25;
    
    // 3rd collection view
    _bodyCollectionView_feature.layer.borderColor = [UIColor clearColor].CGColor;
    _bodyCollectionView_feature.layer.borderWidth = 0.4f;
    _bodyCollectionView_feature.layer.cornerRadius = 25;
    
    //
    _headerLabel1.headerLabel.text = @"Tài Chính";
    _headerLabel2.headerLabel.text = @"Tiện ích";
    
    //
    [_mySrollView setShowsHorizontalScrollIndicator:NO];
    [_mySrollView setShowsVerticalScrollIndicator:NO];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (collectionView == _collectionButton) {
        return buttonTitle.count;
    } else {
        return buttonEcomListName.count;
    }
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionViewCell *cell= (CollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    // Setting collection view
    if (collectionView == _collectionButton) {
        cell.cellComponent.buttonContent.text = buttonTitle[indexPath.row];
        [cell.cellComponent.buttonContent sizeToFit];
        cell.cellComponent.buttonImage.image = [UIImage imageNamed:Icon_header[indexPath.row]];
    } else if(collectionView == _bodyCollectionView_ecom) {
        cell.cellComponent.buttonContent.text = buttonEcomListName[indexPath.row];
        cell.cellComponent.buttonContent.textColor = [UIColor blackColor];
        cell.cellComponent.buttonContent.font = [UIFont fontWithName:@"HelveticaNeue" size:13.0 ];
        [cell.cellComponent.buttonContent sizeToFit];
        cell.cellComponent.imageHeightConstraint.constant = -10 ;
        [self.view updateConstraints];
        cell.cellComponent.buttonImage.image = [UIImage imageNamed:Icon_feature[indexPath.row]];
    } else {
        cell.cellComponent.buttonContent.text = buttonFeatureListName[indexPath.row];
        cell.cellComponent.buttonContent.textColor = [UIColor blackColor];
        cell.cellComponent.buttonContent.font = [UIFont fontWithName:@"HelveticaNeue" size:13.0 ];
        [cell.cellComponent.buttonContent sizeToFit];
        cell.cellComponent.imageHeightConstraint.constant = -10 ;
        [self.view updateConstraints];
        cell.cellComponent.buttonImage.image = [UIImage imageNamed:Icon_feature[indexPath.row]];
    }
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    // resize collection item to centre
    return CGSizeMake(54 +  self.view.frame.size.width / 12, 50 +  self.view.frame.size.height / 12);
}


@end
