//
//  APPUIConstant.m
//  myPlace
//
//  Created by Lim Daehyun on 2014. 10. 8..
//  Copyright (c) 2014년 Lim Daehyun. All rights reserved.
//

#import "APPUIConstant.h"
#import "AppDelegate.h"

void isStatusBarHiddenWithNoAnimation(BOOL isResult)
{
    [[UIApplication sharedApplication] setStatusBarHidden:isResult withAnimation:NO];
}

void isStatusBarHiddenWithAnimation(BOOL isResult)
{
    [[UIApplication sharedApplication] setStatusBarHidden:isResult withAnimation:YES];
}

void isNeedNavigationBarHidden(UIViewController *viewController, BOOL isResult)
{
    [viewController.navigationController setNavigationBarHidden:isResult animated:YES];
}

void setBackgroundColor(NSString *aKey, BACKGROUND_COLOR colorType)
{
    NSString *setValue = [NSString stringWithFormat:@"%d", colorType];
    
    [[NSUserDefaults standardUserDefaults] setObject:setValue forKey:[NSString stringWithFormat:@"%@_backgroundColor", aKey]];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

BACKGROUND_COLOR getBackgoundColorType(NSString *aKey)
{
    BACKGROUND_COLOR result = BACKGROUND_COLOR_RED;
    
    if (aKey != nil && aKey.length > 0) {
        NSString *value = [[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"%@_backgroundColor", aKey]];
        if (value == nil) {
            if ([aKey isEqualToString:INPUT_KEYWORD_VIEW]){
                value = [NSString stringWithFormat:@"%d", BACKGROUND_COLOR_INPUTKEYWORDVIEW_DEFAULT];
                [[NSUserDefaults standardUserDefaults] setObject:value forKey:[NSString stringWithFormat:@"%@_backgroundColor", aKey]];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            else if ([aKey isEqualToString:LOGIN_VIEW]){
                value = [NSString stringWithFormat:@"%d", BACKGROUND_COLOR_LOGINVIEW_DEFAULT];
                [[NSUserDefaults standardUserDefaults] setObject:value forKey:[NSString stringWithFormat:@"%@_backgroundColor", aKey]];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
        }
        
        switch ([value intValue]) {
            case 0:
                result = BACKGROUND_COLOR_RED;
                break;
            case 1:
                result = BACKGROUND_COLOR_YELLOW;
                break;
            case 2:
                result = BACKGROUND_COLOR_MINT;
                break;
            case 3:
                result = BACKGROUND_COLOR_LIME;
                break;
            case 4:
                result = BACKGROUND_COLOR_PINK;
                break;
            case 5:
                result = BACKGROUND_COLOR_BLACK;
                break;
            case 6:
                result = BACKGROUND_COLOR_ORANGE;
                break;
            case 7:
                result = BACKGROUND_COLOR_SKYBLUE;
                break;
            case 8:
                result = BACKGROUND_COLOR_BLUE;
                break;
            case 9:
                result = BACKGROUND_COLOR_PURPLE;
                break;
            case 10:
                result = BACKGROUND_COLOR_INPUTKEYWORDVIEW_DEFAULT;
                break;
            case 11:
                result = BACKGROUND_COLOR_LOGINVIEW_DEFAULT;
                break;
            case 12:
                result = BACKGROUND_COLOR_INPUTKEYWORDVIEW_NIGHT;
                break;
            default:
                result = BACKGROUND_COLOR_RED;
                break;
        }
    }
    
    return result;
}

UIColor* getBackgroundColor(BACKGROUND_COLOR colorType)
{
    UIColor *result = nil;
    switch (colorType) {
        case BACKGROUND_COLOR_INPUTKEYWORDVIEW_DEFAULT:
            result = [UIColor colorWithRed:102.0/255.0
                                     green:127.0/255.0
                                      blue:236.0/255.0
                                     alpha:1.0];
            break;
        case BACKGROUND_COLOR_INPUTKEYWORDVIEW_NIGHT:
            result = [UIColor colorWithRed:34.0/255.0
                                     green:32.0/255.0
                                      blue:75.0/255.0
                                     alpha:1.0];
            break;
        case BACKGROUND_COLOR_LOGINVIEW_DEFAULT:
            result = [UIColor colorWithRed:102.0/255.0
                                     green:127.0/255.0
                                      blue:236.0/255.0
                                     alpha:1.0];
            break;
        case BACKGROUND_COLOR_RED:
            result = [UIColor redColor];
            break;
        case BACKGROUND_COLOR_YELLOW:
            result = [UIColor colorWithRed:243.0/255.0
                                     green:187.0/255.0
                                      blue:0.0/255.0
                                     alpha:1.0];
            break;
        case BACKGROUND_COLOR_MINT:
            result = [UIColor colorWithRed:27.0/255.0
                                     green:192.0/255.0
                                      blue:183.0/255.0
                                     alpha:1.0];
            break;
        case BACKGROUND_COLOR_LIME:
            result = [UIColor colorWithRed:130.0/255.0
                                     green:189.0/255.0
                                      blue:0.0/255.0
                                     alpha:1.0];
            break;
        case BACKGROUND_COLOR_PINK:
            result = [UIColor colorWithRed:245.0/255.0
                                     green:21.0/255.0
                                      blue:162.0/255.0
                                     alpha:1.0];
            break;
        case BACKGROUND_COLOR_BLACK:
            result = [UIColor colorWithRed:50.0/255.0
                                     green:50.0/255.0
                                      blue:50.0/255.0
                                     alpha:1.0];
            break;
        case BACKGROUND_COLOR_ORANGE:
            result = [UIColor colorWithRed:255.0/255.0
                                     green:150.0/255.0
                                      blue:0.0/255.0
                                     alpha:1.0];
            break;
        case BACKGROUND_COLOR_SKYBLUE:
            result = [UIColor colorWithRed:70.0/255.0
                                     green:186.0/255.0
                                      blue:246.0/255.0
                                     alpha:1.0];
            break;
        case BACKGROUND_COLOR_BLUE:
            result = [UIColor colorWithRed:0.0/255.0
                                     green:138.0/255.0
                                      blue:255.0/255.0
                                     alpha:1.0];
            break;
        case BACKGROUND_COLOR_PURPLE:
            result = [UIColor colorWithRed:186.0/255.0
                                     green:91.0/255.0
                                      blue:235.0/255.0
                                     alpha:1.0];
            break;
        default:
            result = [UIColor yellowColor];
            break;
    }
    
    return result;
}

NSString* getCurrentTopic()
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"CURRENT_TOPIC"];
}

void setCurrentTopic(NSString *tp)
{
    [[NSUserDefaults standardUserDefaults] setObject:tp forKey:@"CURRENT_TOPIC"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

NSString* getCurrentKeyword()
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"CURRENT_KEYWORD"];
}

void setCurrentKeyword(NSString *tp)
{
    [[NSUserDefaults standardUserDefaults] setObject:tp forKey:@"CURRENT_KEYWORD"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

UIViewController *getTopViewController()
{
    /// Find Out TopViewController
    //
    UIViewController *topController = [UIApplication sharedApplication].keyWindow.rootViewController;
    while (topController.presentedViewController) {
        topController = topController.presentedViewController;
    }
    
    if ([topController isKindOfClass:[UINavigationController class]]){
        NSArray *viewContrlls = [((UINavigationController *)topController) viewControllers];
        topController = [viewContrlls lastObject];
    }
    
    return topController;
}

AppDelegate *appDelegate()
{
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}

CGSize sizeWithFont(NSString *string, UIFont *font)
{
    return [string sizeWithAttributes:@{NSFontAttributeName:font}];
}

CGSize applicationSize()
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    return screenRect.size;
}

UIView *screenCapture()
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, applicationSize().width, applicationSize().height)];
    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)])
        UIGraphicsBeginImageContextWithOptions(window.bounds.size, NO, [UIScreen mainScreen].scale);
    else
        UIGraphicsBeginImageContext(window.bounds.size);
    
    [window.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    [bgView addSubview:[[UIImageView alloc] initWithImage:image]];
    return bgView;
}