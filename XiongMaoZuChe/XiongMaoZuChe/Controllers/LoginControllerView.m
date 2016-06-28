//
//  LoginControllerView.m
//  XiongMaoZuChe
//
//  Created by dengzhiping on 16/6/27.
//  Copyright © 2016年 dengzhiping. All rights reserved.
//

#import "LoginControllerView.h"
#import "PureLayout.h"

typedef NS_ENUM(NSUInteger,LoginTextFieldType) {
    loginTextFieldPhoneNumber,
    loginTextFieldPasswordNumber
};

#define Login_Padding 74
#define NUMBER @"0123456789"
#define NUMBERS @"qazwsxedcrfvtgbyhnujmikolpQAZWSXEDCRFVTGBYHNUJMIKOLP0123456789"

@interface LoginControllerView ()<UITextFieldDelegate>
@property (nonatomic, strong) UIImageView *backGroundView;
@property (nonatomic, strong) UIImageView *logoImageView;
@property (nonatomic, strong) UIImageView *line1View;
@property (nonatomic, strong) UIImageView *photoImgView;
@property (nonatomic, strong) UITextField *photoTextField;
@property (nonatomic, strong) UIImageView *lineView;
@property (nonatomic, strong) UIImageView *lockImageView;
@property (nonatomic, strong) UITextField *passWordTextField;
@property (nonatomic, strong) UIButton *loginButton;
@property (nonatomic, strong) UIImageView *line2View;
@property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *forgetPasswordButton;

@end

@implementation LoginControllerView

#pragma mark - Life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)dealloc {
    
}

#pragma mark -Init
- (void)initUI {
    [self.view addSubview:self.backGroundView];
    [self.backGroundView addSubview:self.logoImageView];
    [self.backGroundView addSubview:self.line1View];
    
    [self.backGroundView addSubview:self.photoImgView];
    [_photoImgView autoPinEdge:ALEdgeLeft
                        toEdge:ALEdgeLeft
                        ofView:self.view
                    withOffset:20.0];
    [_photoImgView autoPinEdge:ALEdgeTop
                        toEdge:ALEdgeBottom
                        ofView:_line1View
                    withOffset:20.0];
    
    [_photoImgView autoSetDimension:ALDimensionWidth toSize:17.0];
    [_photoImgView autoSetDimension:ALDimensionHeight toSize:24.0];
    
    [self.backGroundView addSubview:self.photoTextField];
    [_photoTextField autoPinEdge:ALEdgeLeft
                          toEdge:ALEdgeRight
                          ofView:_photoImgView
                      withOffset:10.0];
    
    [_photoTextField autoPinEdge:ALEdgeTop
                          toEdge:ALEdgeBottom
                          ofView:_line1View
                      withOffset:22.0];
    [_photoTextField autoPinEdge:ALEdgeRight
                          toEdge:ALEdgeRight
                          ofView:self.view
                      withOffset:-20.0];
    [_photoTextField autoSetDimension:ALDimensionHeight toSize:24.0];
    
    [self.backGroundView addSubview:self.lineView];
    [_lineView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:_photoImgView withOffset:20.0];
    [_lineView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.view withOffset:5.0];
    [_lineView autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:self.view withOffset:-5.0];
    [_lineView autoSetDimension:ALDimensionHeight toSize:1.0];
    
    [self.backGroundView addSubview:self.lockImageView];
    [_lockImageView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.view withOffset:20.0];
    [_lockImageView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:_lineView withOffset:20.0];
    [_lockImageView autoSetDimension:ALDimensionWidth toSize:18.0];
    [_lockImageView autoSetDimension:ALDimensionHeight toSize:21.0];
    
    [self.backGroundView addSubview:self.passWordTextField];
    [_passWordTextField autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:_lockImageView withOffset:10.0];
    [_passWordTextField autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:_lineView withOffset:22.0];
    [_passWordTextField autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:self.view withOffset:-20.0];
    [_passWordTextField autoSetDimension:ALDimensionHeight toSize:24.0];
    
    [self.backGroundView addSubview:self.line2View];
    [_line2View autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:_passWordTextField withOffset:15.0];
    [_line2View autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.view withOffset:0];
    [_line2View autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:self.view withOffset:0.0];
    [_line2View autoSetDimension:ALDimensionHeight toSize:1.0];
    
    [self.backGroundView addSubview:self.loginButton];
    [_loginButton autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.view withOffset:15.0];
    [_loginButton autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:self.view withOffset:-15.0];
    [_loginButton autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:_line2View   withOffset:65.0];
    [_loginButton autoSetDimension:ALDimensionHeight toSize:35.0];

    [self.backGroundView addSubview:self.registButton];
    [_registButton autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.view withOffset:10.0];
    [_registButton autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:_loginButton withOffset:10.0];
    [_registButton autoSetDimension:ALDimensionWidth toSize:60.0];
    [_registButton autoSetDimension:ALDimensionHeight toSize:20.0];
    
    [self.backGroundView addSubview:self.forgetPasswordButton];
    [_forgetPasswordButton autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:self.view withOffset:-20.0];
    [_forgetPasswordButton autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:_loginButton withOffset:10.0];
    [_forgetPasswordButton autoSetDimension:ALDimensionWidth toSize:60.0];
    [_forgetPasswordButton autoSetDimension:ALDimensionHeight toSize:20.0];
}

#pragma mark - Net request
- (void)orderListRequest {
    //网络请求方法
}

#pragma mark - Event response
- (void)loginButtonPress :(UIButton *)sender {
    
    NSLog(@"点击登录按钮");
    //显示密码
    _passWordTextField.secureTextEntry = !_passWordTextField.isSecureTextEntry;
}
- (void)registButtonPress :(UIButton *)sender {
    NSLog(@"点击注册按钮");
}

- (void)forgetPasswordButtonPress :(UIButton *)sender{
    NSLog(@"点击忘记密码按钮");

}
- (void)textFieldDidChange:(UITextField *)textField {
    
    switch (textField.tag) {
        case loginTextFieldPhoneNumber:{
            NSLog(@"loginTextFieldPhoneNumber");
            if (textField.text.length > 11) {
                textField.text = [textField.text substringToIndex:11];
                UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"提示"
                                                                message:@"输入正确的手机号码!"
                                                               delegate:nil
                                                      cancelButtonTitle:@"确定"
                                                      otherButtonTitles:nil];
                [alert show];
            }
        }
            break;
            
        case loginTextFieldPasswordNumber:{
            NSLog(@"loginTextFieldPasswordNumber");
            _loginButton.userInteractionEnabled = YES;
            _loginButton.alpha = 1.0f;
            if (textField.text.length > 20) {
                textField.text = [textField.text substringToIndex:20];
                UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"提示"
                                                                message:@"最多输入20位!"
                                                               delegate:nil
                                                      cancelButtonTitle:@"确定"
                                                      otherButtonTitles:nil];
                [alert show];
                
            }
        }
            break;
        default:
            break;
    }
}
//限制textField输入内容
- (BOOL)textField:(UITextField*)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString*)string
{
    switch (textField.tag) {
        case loginTextFieldPhoneNumber:
        {
            NSCharacterSet*cs;
            cs = [[NSCharacterSet characterSetWithCharactersInString:NUMBER] invertedSet];
            NSString*filtered = [[string componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
            BOOL basicTest = [string isEqualToString:filtered];
            
            if(!basicTest) {
                
               UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"提示"
                                                               message:@"请输入数字"
                                                              delegate:nil
                                                     cancelButtonTitle:@"确定"
                                                     otherButtonTitles:nil];
                
                [alert show];
                return NO;
            }
            return YES;
            
        }
            break;
            
        case loginTextFieldPasswordNumber:
        {
            NSCharacterSet*cs;
            cs = [[NSCharacterSet characterSetWithCharactersInString:NUMBERS] invertedSet];
            NSString*filtered = [[string componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
            BOOL basicTest = [string isEqualToString:filtered];
            
            if(!basicTest) {
                
               UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"提示"
                                                               message:@"只能输入字母和数字组合"
                                                              delegate:nil
                                                     cancelButtonTitle:@"确定"
                                                     otherButtonTitles:nil];
                
                [alert show];
                return NO;
            }
            return YES;
            
        }
            break;
            
        default:
            break;
    }
    
    return YES;
}

#pragma mark - Delegate

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    [UIView beginAnimations:nil context:nil];
    //执行动画
    //设置动画执行时间
    [UIView setAnimationDuration:0.5];
    //设置代理
    [UIView setAnimationDelegate:self];
    _backGroundView.frame = CGRectMake(0, 0, KScreen_W, KScreen_H);
    [UIView commitAnimations];
    
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField;{
    [self.view endEditing:YES];
    
    
    [UIView beginAnimations:nil context:nil];
    //执行动画
    //设置动画执行时间
    [UIView setAnimationDuration:0.5];
    //设置代理
    [UIView setAnimationDelegate:self];
    _backGroundView.frame = CGRectMake(0, 0, KScreen_W, KScreen_H);
    [UIView commitAnimations];
    
    return YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    NSLog(@"键盘弹出");
    [UIView beginAnimations:nil context:nil];
    //执行动画
    //设置动画执行时间
    [UIView setAnimationDuration:0.3];
    //设置代理
    [UIView setAnimationDelegate:self];
    _backGroundView.frame = CGRectMake(0, -_logoImageView.frame.origin.y + 20, KScreen_W, KScreen_H);
    [UIView commitAnimations];
    
    return YES;
}


#pragma mark -LazyLoad
- (UIImageView *)backGroundView {
    if (!_backGroundView) {
        _backGroundView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, KScreen_W, KScreen_H)];
        _backGroundView.image = [UIImage imageNamed: @"backGroundImage"];
        _backGroundView.userInteractionEnabled = YES;
    }
    return _backGroundView;
}

- (UIImageView *)logoImageView {
    if (!_logoImageView ) {
        _logoImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, Login_Padding, 202, 60)];
        _logoImageView.image = [UIImage imageNamed:@"logo"];
        _logoImageView.center = CGPointMake(self.view.frame.size.width *0.5, Login_Padding+50);
        //_logoImageView.backgroundColor = [UIColor grayColor];
        

    }
    return _logoImageView;
}

- (UIImageView *)line1View {
    if (!_line1View) {
        _line1View = [[UIImageView alloc]initWithFrame:CGRectMake(0, _logoImageView.frame.origin.y + 60 + 30, self.view.frame.size.width, 1)];
        _line1View.image = [UIImage imageNamed:@"line"];
    }
    
    return _line1View;
}

- (UIImageView *)photoImgView {
    if(!_photoImgView) {
        _photoImgView = [[UIImageView alloc]init];
        _photoImgView.image = [UIImage imageNamed:@"photo"];
    }
    return _photoImgView;
}

- (UITextField *)photoTextField {
    if (!_photoTextField) {
        _photoTextField = [[UITextField alloc]init];
        _photoTextField.placeholder = @"输入手机号";
        _photoTextField.delegate = self;
        _photoTextField.clearButtonMode = UITextFieldViewModeAlways;
        _photoTextField.textColor = [UIColor whiteColor];
        _photoTextField.font = [UIFont systemFontOfSize:17];
        [_photoTextField setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
        [_photoTextField setValue:[UIFont systemFontOfSize:14] forKeyPath:@"_placeholderLabel.font"];
        _photoTextField.keyboardType = UIKeyboardTypeNumberPad;
        _photoTextField.tag = loginTextFieldPhoneNumber;
        [_photoTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    }
    return _photoTextField;
}

- (UIImageView *)lineView {
    if (!_lineView) {
        _lineView = [[UIImageView alloc]init];
        _lineView.image = [UIImage imageNamed:@"line"];
    }
    return _lineView;
}

- (UIImageView *)lockImageView {
    
    if (!_lockImageView) {
        _lockImageView = [[UIImageView alloc]init];
        _lockImageView.image = [UIImage imageNamed:@"lock"];
    }
    return _lockImageView;
}

- (UITextField *)passWordTextField {
    if (!_passWordTextField) {
        _passWordTextField = [[UITextField alloc]init];
        _passWordTextField.delegate = self;
        _passWordTextField.placeholder = @"请输入密码";
        _passWordTextField.clearButtonMode = UITextFieldViewModeAlways;
        _passWordTextField.textColor = [UIColor whiteColor];
        _passWordTextField.font = [UIFont systemFontOfSize:17];
        [_passWordTextField setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
        [_passWordTextField setValue:[UIFont systemFontOfSize:14] forKeyPath:@"_placeholderLabel.font"];
        _passWordTextField.keyboardType = UIKeyboardTypeASCIICapable;
        [_passWordTextField setSecureTextEntry: YES];
        _passWordTextField.tag = loginTextFieldPasswordNumber;
        [_passWordTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
        
    }
    return _passWordTextField;
}

- (UIImageView *)line2View {
    if (!_line2View ) {
        _line2View = [[UIImageView alloc]init];
        _line2View.image = [UIImage imageNamed:@"line"];
    }
    return  _line2View;
}

- (UIButton *)loginButton {
    if (!_loginButton) {
        _loginButton = [UIButton buttonWithType:UIButtonTypeCustom ];
        [_loginButton setTitle:@"登录" forState:0];
        [_loginButton setBackgroundImage:[UIImage imageNamed:@"login"] forState:0];
        [_loginButton addTarget:self action:@selector(loginButtonPress:) forControlEvents:UIControlEventTouchDown];
        _loginButton.alpha = 0.4;
        _loginButton.userInteractionEnabled = NO;
    }
    return _loginButton;
}

- (UIButton *)registButton {
    if (!_registButton) {
        _registButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_registButton setTitle:@"注册" forState:0];
        [_registButton setTitle:@"已点击" forState:UIControlStateHighlighted];
        [_registButton setTintColor:[UIColor whiteColor]];
        _registButton.titleLabel.font = [UIFont systemFontOfSize:13];
        [_registButton addTarget:self action:@selector(registButtonPress:) forControlEvents:UIControlEventTouchDown];
       // _registButton.backgroundColor = [UIColor magentaColor];
        _registButton.titleLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _registButton;
}

- (UIButton *)forgetPasswordButton {
    if (!_forgetPasswordButton) {
        _forgetPasswordButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_forgetPasswordButton setTitle:@"忘记密码" forState:0];
        [_forgetPasswordButton setTitle:@"已点击" forState:UIControlStateHighlighted];
        [_forgetPasswordButton setTintColor:[UIColor whiteColor]];
        _forgetPasswordButton.titleLabel.font = [UIFont systemFontOfSize:13];
        [_forgetPasswordButton addTarget:self action:@selector(forgetPasswordButtonPress:) forControlEvents:UIControlEventTouchDown];
      //  _forgetPasswordButton.backgroundColor = [UIColor magentaColor];
        _forgetPasswordButton.titleLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _forgetPasswordButton;
}

@end
