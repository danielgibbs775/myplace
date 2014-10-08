//
//  APPUIConstant.h
//  myPlace
//
//  Created by Lim Daehyun on 2014. 10. 8..
//  Copyright (c) 2014년 Lim Daehyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppDelegate;

#define kScreenHeight     ([[[UIDevice currentDevice] model] isEqualToString:(@"iPad")]? 480:([[UIScreen mainScreen] bounds].size.height))
#define kScreenWidth     ([UIScreen mainScreen].bounds.size.width)

/// NIB Name of ViewController
//
#define BASE_VIEW_CONTROLLER @"LVBaseViewController"

#define LV_RGBA(_r_,_g_,_b_,_a_)  [[UIColor alloc] initWithRed:(_r_/255.0) green:(_g_/255.0) blue:(_b_/255.0) alpha:_a_]
#define LV_RGB(_r_,_g_,_b_)       LV_RGBA(_r_,_g_,_b_,1.0)


#define FONT_M(_s_)        [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:_s_]
#define FONT_LIGHT(_s_)    [UIFont fontWithName:@"AppleSDGothicNeo-Light" size:_s_]
#define FONT_THIN(_s_)     [UIFont fontWithName:@"AppleSDGothicNeo-Thin" size:_s_]

#define FONT_FUTURA_M(_s_)      [UIFont fontWithName:@"Futura-Medium" size:_s_]



// Profile
#define PROFILE_BG_COLOR    LV_RGB(40,43,47)

// Connect List
#define CONNECTLIST_BG   LV_RGB(62,71,118)
#define CONNECTLIST_SMALLTXT LV_RGB(193,195,207)
#define CONNECTLIST_LAST_TIME LV_RGB(116,121,151)

// Chat
#define HEAD_YELLOW      LV_RGB(255,216,2)
#define HEAD_DISABLE     LV_RGB(204,204,204)
#define SENDER_CELL_BACK LV_RGB(62,71,118)
#define STRANGER_CELL_BACK LV_RGB(62,71,118)
#define INPUTBAR_BACK    LV_RGB(56,64,106)

#define SUB_TXT_COLOR   LV_RGB(167,170,188)

/// Class Name
//
#define CELL_ID_SET_UI_COMPONENT_CELL @"LVSetUIComponentCell"

#define LOGIN_VIEW           @"LVLoginViewController"
#define INPUT_KEYWORD_VIEW   @"LVInputKeywordViewController"
#define CHAT_LIST_VIEW       @"LVChatListViewController"
#define CHAT_VIEW            @"LVChatViewController"
#define PROFILE_VIEW         @"LVProfileViewController"
#define PROFILE_SET_VIEW     @"LVProfileSettingViewController"
#define MATCH_KEYWORD_VIEW   @"LVMatchingKeywordViewController"
/// Segue Identifier
#define MOVE_TO_MATCHING_KEYWORD_VIEW   @"transitionKeywordMatchingView"
#define VERTICAL_MOVE_CUSTOM_SEGUE      @"VerticalMoveSegue"

typedef enum
{
    BACKGROUND_COLOR_RED = 0,
    BACKGROUND_COLOR_YELLOW,
    BACKGROUND_COLOR_MINT,
    BACKGROUND_COLOR_LIME,
    BACKGROUND_COLOR_PINK,
    BACKGROUND_COLOR_BLACK,
    BACKGROUND_COLOR_ORANGE,
    BACKGROUND_COLOR_SKYBLUE,
    BACKGROUND_COLOR_BLUE,
    BACKGROUND_COLOR_PURPLE,
    BACKGROUND_COLOR_INPUTKEYWORDVIEW_DEFAULT,
    BACKGROUND_COLOR_LOGINVIEW_DEFAULT,
    BACKGROUND_COLOR_INPUTKEYWORDVIEW_NIGHT,
    backgroundColorsCount
} BACKGROUND_COLOR;


/// UI Component SettingView 전체 Sections
//
typedef enum
{
    LOGINVIEW_SET_UI_SECTION,
    INPUTKEYWORDVIEW_SET_UI_SECTION,
    CHATLISTVIEW_SET_UI_SECTION,
    CHATVIEW_SET_UI_SECTION,
    PROFILEVIEW_SET_UI_SECTION,
    PROFILESETVIEW_SET_UI_SECTION,
    
    SERVER_IP_SECTION,
    
    setUISectionsCount
} VIEW_SET_UI_SECTION;

typedef enum
{
    LOGINVIEW_BACKGROUND_COLOR,
    //    LOGINVIEW_TEXT_COLOR,
    
    LoginViewSetUIComponentsCount
} LOGINVIEW_SET_UI_COMPONENT;

typedef enum
{
    INPUTKEYWORDVIEW_BACKGROUND_COLOR,
    //    SET_TEXT_COLOR,
    
    InputKeywordViewSetUIComponentsCount
} INPUTKEYWORDVIEW_SET_UI_COMPONENT;

typedef enum
{
    CHATLISTVIEW_BACKGROUND_COLOR,
    //    SET_TEXT_COLOR,
    
    
    ChatListViewSetUIComponentsCount
} CHATLISTVIEW_SET_UI_COMPONENT;

typedef enum
{
    CHATVIEW_BACKGROUND_COLOR,
    //    SET_TEXT_COLOR,
    
    
    ChatViewSetUIComponentsCount
} CHATVIEW_SET_UI_COMPONENT;

typedef enum
{
    PROFILEVIEW_BACKGROUND_COLOR,
    //    SET_TEXT_COLOR,
    
    
    ProfileViewSetUIComponentsCount
} PROFILEVIEW_SET_UI_COMPONENT;

typedef enum
{
    PROFILESETVIEW_BACKGROUND_COLOR,
    //    SET_TEXT_COLOR,
    
    
    ProfileSetViewSetUIComponentsCount
} PROFILESETVIEW_SET_UI_COMPONENT;

////////////////////////////////
// Resource Name
////////////////////////////////

/// LVLoginViewController
//
#define LVLoginViewController_AppMain_IMG           @""
#define LVInputKeywordViewcontroller_AppMain_LABEL  @""
#define LVInputKeywordViewcontroller_ChatList_BTN   @""

/// LVInputKeywordViewController
//
#define LVInputKeywordViewcontroller_ChatList_BTN   @""
#define LVInputKeywordViewcontroller_Profile_BTN    @""
#define LVInputKeywordViewcontroller_NewMessage_BTN @""


void isStatusBarHiddenWithNoAnimation(BOOL isResult);
void isStatusBarHiddenWithAnimation(BOOL isResult);

void isNeedNavigationBarHidden(UIViewController *viewController, BOOL isResult);

void setBackgroundColor(NSString *aKey, BACKGROUND_COLOR colorType);
BACKGROUND_COLOR getBackgoundColorType(NSString *aKey);
UIColor* getBackgroundColor(BACKGROUND_COLOR colorType);

NSString* getCurrentTopic();
void setCurrentTopic(NSString *tp);

NSString* getCurrentKeyword();
void setCurrentKeyword(NSString *tp);

UIViewController *getTopViewController();
AppDelegate *appDelegate();
CGSize sizeWithFont(NSString *string, UIFont *font);
CGSize applicationSize();
UIView *screenCapture();