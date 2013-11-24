.class public Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;
.super Lcom/pantech/app/vegacamera/menu/AbstractPopupList;
.source "SettingsGroup.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;
    }
.end annotation


# static fields
.field private static final DRAGDROP_ITEM_NUM:I = 0x6

#the value of this static final field might be set in the static constructor
.field private static final ID_ADVANCED_SETTING:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_DRAGDROP_GROUP_1:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_DRAGDROP_GROUP_2:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_DRAGDROP_ITEM_1:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_DRAGDROP_ITEM_2:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_DRAGDROP_ITEM_3:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_DRAGDROP_ITEM_4:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_DRAGDROP_ITEM_5:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_DRAGDROP_ITEM_6:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_ETC_LAYOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_ETC_NORMAL_LAYOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_EV_CONTROL:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_EV_LAYOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_GEO_TAG_NORMAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_HELP:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_ISO:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_ISO_G_LAYOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_MAIN_LAYOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_MENU_POPUP_CLOSE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_MENU_SETTINGS_G_L:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_NORMAL_SETTING:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_PICTURE_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_RESET:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_RESOLUTION:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_STORAGE_LOCATION:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_STORAGE_LOCATION_NORMAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_TIMER_G_LAYOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_TIMER_SHOT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_TOGGLE_BTN_1:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_TOGGLE_BTN_2:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_TOGGLE_BTN_3:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_TOGGLE_BTN_4:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_TOGGLE_BTN_5:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_TOGGLE_BTN_6:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_TOGGLE_BTN_7:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_TOGGLE_BTN_8:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_TOGGLE_GROUP_1:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_TOGGLE_GROUP_2:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_TOGGLE_GROUP_3:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_TOGGLE_GROUP_4:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_VIDEO_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_WB:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_WB_G_LAYOUT:I = 0x0

.field private static final SETTING_DEFAULT_ALPHA:F = 1.0f

.field private static final SETTING_DIMMED_ALPHA:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "SettingsGroup"

.field private static final TOGGLE_ITEM_NUM:I = 0x8

.field private static iOrinetation:I


# instance fields
.field private dPosition:I

.field private iAntiBanding:I

.field private iAntiShake:I

.field private iCollectType:I

.field private iContShot:I

.field private iCurrPosition:I

.field private iEV:I

.field private iFocusMode:I

.field private iGPSInfo:I

.field private iGotoViewer:I

.field private iGrid:I

.field private iISO:I

.field private iLowLight:I

.field private iMainView:I

.field private iMirror:I

.field private iPhotoMetry:I

.field private iPictureSize:I

.field private iQuality:I

.field private iReset:I

.field private iShutterSound:I

.field private iStorageLocation:I

.field private iTimerShot:I

.field private iVideoSize:I

.field private iVoiceRecord:I

.field private iWB:I

.field private listIso:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

.field private listTimer:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

.field private listWB:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

.field private mAlertDialogListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

.field private mDragnDropList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

.field private mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

.field private mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

.field private mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

.field private mSubItemInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;",
            ">;"
        }
    .end annotation
.end field

.field private mToggleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private sCurrentItem:Ljava/lang/String;

.field private tPosition:I

.field private tStoragePath:Landroid/widget/TextView;

.field private vAdvanced:Landroid/view/View;

.field private vDragDropGroup_1:Landroid/view/ViewGroup;

.field private vDragDropGroup_2:Landroid/view/ViewGroup;

.field private vDrapDrop_1:Landroid/view/ViewGroup;

.field private vDrapDrop_2:Landroid/view/ViewGroup;

.field private vDrapDrop_3:Landroid/view/ViewGroup;

.field private vDrapDrop_4:Landroid/view/ViewGroup;

.field private vDrapDrop_5:Landroid/view/ViewGroup;

.field private vDrapDrop_6:Landroid/view/ViewGroup;

.field private vEV:Landroid/view/View;

.field private vEVLayout:Landroid/view/View;

.field private vEtc:Landroid/view/View;

.field private vEtcNor:Landroid/view/View;

.field private vGeoTagNor:Landroid/view/View;

.field private vHelp:Landroid/view/View;

.field private vISO:Landroid/view/View;

.field private vISOLayout:Landroid/view/View;

.field private vMainview:Landroid/view/View;

.field private vMenuPopUpClose:Landroid/view/View;

.field private vNormal:Landroid/view/View;

.field private vPictureSize:Landroid/view/View;

.field private vReset:Landroid/view/View;

.field private vResolution:Landroid/view/View;

.field private vStorageLocation:Landroid/view/View;

.field private vTimerLayout:Landroid/view/View;

.field private vTimerShot:Landroid/view/View;

.field private vToggleBtn_1:Landroid/view/ViewGroup;

.field private vToggleBtn_2:Landroid/view/ViewGroup;

.field private vToggleBtn_3:Landroid/view/ViewGroup;

.field private vToggleBtn_4:Landroid/view/ViewGroup;

.field private vToggleBtn_5:Landroid/view/ViewGroup;

.field private vToggleBtn_6:Landroid/view/ViewGroup;

.field private vToggleBtn_7:Landroid/view/ViewGroup;

.field private vToggleBtn_8:Landroid/view/ViewGroup;

.field private vToggleGroup_1:Landroid/view/ViewGroup;

.field private vToggleGroup_2:Landroid/view/ViewGroup;

.field private vToggleGroup_3:Landroid/view/ViewGroup;

.field private vToggleGroup_4:Landroid/view/ViewGroup;

.field private vVideoSize:Landroid/view/View;

.field private vWB:Landroid/view/View;

.field private vWBLayout:Landroid/view/View;

.field private vgMenuSettingG:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/pantech/app/vegacamera/R$id;->menu_popup_settings_g:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_MAIN_LAYOUT:I

    .line 43
    sget v0, Lcom/pantech/app/vegacamera/R$id;->menu_setttings_g_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_MENU_SETTINGS_G_L:I

    .line 44
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_image:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_HELP:I

    .line 45
    sget v0, Lcom/pantech/app/vegacamera/R$id;->menu_popup_close:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_MENU_POPUP_CLOSE:I

    .line 46
    sget v0, Lcom/pantech/app/vegacamera/R$id;->collect_advanced_type_image:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_ADVANCED_SETTING:I

    .line 47
    sget v0, Lcom/pantech/app/vegacamera/R$id;->collect_normal_type_image:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_NORMAL_SETTING:I

    .line 48
    sget v0, Lcom/pantech/app/vegacamera/R$id;->settings_size_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_RESOLUTION:I

    .line 49
    sget v0, Lcom/pantech/app/vegacamera/R$id;->picture_size_button:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_PICTURE_SIZE:I

    .line 50
    sget v0, Lcom/pantech/app/vegacamera/R$id;->record_size_button:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_VIDEO_SIZE:I

    .line 51
    sget v0, Lcom/pantech/app/vegacamera/R$id;->settings_timer_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TIMER_G_LAYOUT:I

    .line 52
    sget v0, Lcom/pantech/app/vegacamera/R$id;->timer_item_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TIMER_SHOT:I

    .line 53
    sget v0, Lcom/pantech/app/vegacamera/R$id;->settings_ev_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_EV_LAYOUT:I

    .line 54
    sget v0, Lcom/pantech/app/vegacamera/R$id;->ev_control:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_EV_CONTROL:I

    .line 55
    sget v0, Lcom/pantech/app/vegacamera/R$id;->settings_wb_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_WB_G_LAYOUT:I

    .line 56
    sget v0, Lcom/pantech/app/vegacamera/R$id;->wb_item_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_WB:I

    .line 57
    sget v0, Lcom/pantech/app/vegacamera/R$id;->settings_iso_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_ISO_G_LAYOUT:I

    .line 58
    sget v0, Lcom/pantech/app/vegacamera/R$id;->iso_item_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_ISO:I

    .line 60
    sget v0, Lcom/pantech/app/vegacamera/R$id;->settings_etc_g:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_ETC_LAYOUT:I

    .line 61
    sget v0, Lcom/pantech/app/vegacamera/R$id;->settings_etc_normal_g:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_ETC_NORMAL_LAYOUT:I

    .line 62
    sget v0, Lcom/pantech/app/vegacamera/R$id;->reset_button:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_RESET:I

    .line 63
    sget v0, Lcom/pantech/app/vegacamera/R$id;->storage_location_image:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_STORAGE_LOCATION:I

    .line 65
    sget v0, Lcom/pantech/app/vegacamera/R$id;->storage_location_image_normal:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_STORAGE_LOCATION_NORMAL:I

    .line 66
    sget v0, Lcom/pantech/app/vegacamera/R$id;->geo_btn_normal:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_GEO_TAG_NORMAL:I

    .line 68
    sget v0, Lcom/pantech/app/vegacamera/R$id;->drag_n_drop_item_1:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_ITEM_1:I

    .line 69
    sget v0, Lcom/pantech/app/vegacamera/R$id;->drag_n_drop_item_2:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_ITEM_2:I

    .line 70
    sget v0, Lcom/pantech/app/vegacamera/R$id;->drag_n_drop_item_3:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_ITEM_3:I

    .line 71
    sget v0, Lcom/pantech/app/vegacamera/R$id;->drag_n_drop_item_4:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_ITEM_4:I

    .line 72
    sget v0, Lcom/pantech/app/vegacamera/R$id;->drag_n_drop_item_5:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_ITEM_5:I

    .line 73
    sget v0, Lcom/pantech/app/vegacamera/R$id;->drag_n_drop_item_6:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_ITEM_6:I

    .line 75
    sget v0, Lcom/pantech/app/vegacamera/R$id;->settings_drag_n_drop_g_1:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_GROUP_1:I

    .line 76
    sget v0, Lcom/pantech/app/vegacamera/R$id;->settings_drag_n_drop_g_2:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_GROUP_2:I

    .line 78
    sget v0, Lcom/pantech/app/vegacamera/R$id;->toggle_btn_1:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_1:I

    .line 79
    sget v0, Lcom/pantech/app/vegacamera/R$id;->toggle_btn_2:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_2:I

    .line 80
    sget v0, Lcom/pantech/app/vegacamera/R$id;->toggle_btn_3:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_3:I

    .line 81
    sget v0, Lcom/pantech/app/vegacamera/R$id;->toggle_btn_4:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_4:I

    .line 82
    sget v0, Lcom/pantech/app/vegacamera/R$id;->toggle_btn_5:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_5:I

    .line 83
    sget v0, Lcom/pantech/app/vegacamera/R$id;->toggle_btn_6:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_6:I

    .line 84
    sget v0, Lcom/pantech/app/vegacamera/R$id;->toggle_btn_7:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_7:I

    .line 85
    sget v0, Lcom/pantech/app/vegacamera/R$id;->toggle_btn_8:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_8:I

    .line 87
    sget v0, Lcom/pantech/app/vegacamera/R$id;->settings_toggle_g_1:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_GROUP_1:I

    .line 88
    sget v0, Lcom/pantech/app/vegacamera/R$id;->settings_toggle_g_2:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_GROUP_2:I

    .line 89
    sget v0, Lcom/pantech/app/vegacamera/R$id;->settings_toggle_g_3:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_GROUP_3:I

    .line 90
    sget v0, Lcom/pantech/app/vegacamera/R$id;->settings_toggle_g_4:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_GROUP_4:I

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 97
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iCurrPosition:I

    .line 99
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iMainView:I

    .line 100
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iCollectType:I

    .line 101
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iPictureSize:I

    .line 102
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iVideoSize:I

    .line 103
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iTimerShot:I

    .line 104
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iEV:I

    .line 105
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iWB:I

    .line 106
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iISO:I

    .line 107
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iPhotoMetry:I

    .line 108
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGrid:I

    .line 109
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGotoViewer:I

    .line 110
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iFocusMode:I

    .line 111
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iQuality:I

    .line 112
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iAntiBanding:I

    .line 113
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iLowLight:I

    .line 114
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iContShot:I

    .line 115
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iMirror:I

    .line 116
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGPSInfo:I

    .line 117
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iVoiceRecord:I

    .line 118
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iShutterSound:I

    .line 119
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iAntiShake:I

    .line 120
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iReset:I

    .line 121
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iStorageLocation:I

    .line 123
    iput v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    .line 124
    iput v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->tPosition:I

    .line 126
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->sCurrentItem:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    .line 130
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    .line 132
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vgMenuSettingG:Landroid/view/ViewGroup;

    .line 134
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_1:Landroid/view/ViewGroup;

    .line 135
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_2:Landroid/view/ViewGroup;

    .line 136
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_3:Landroid/view/ViewGroup;

    .line 137
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_4:Landroid/view/ViewGroup;

    .line 138
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_5:Landroid/view/ViewGroup;

    .line 139
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_6:Landroid/view/ViewGroup;

    .line 141
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDragDropGroup_1:Landroid/view/ViewGroup;

    .line 142
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDragDropGroup_2:Landroid/view/ViewGroup;

    .line 144
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_1:Landroid/view/ViewGroup;

    .line 145
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_2:Landroid/view/ViewGroup;

    .line 146
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_3:Landroid/view/ViewGroup;

    .line 147
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_4:Landroid/view/ViewGroup;

    .line 148
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_5:Landroid/view/ViewGroup;

    .line 149
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_6:Landroid/view/ViewGroup;

    .line 150
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_7:Landroid/view/ViewGroup;

    .line 151
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_8:Landroid/view/ViewGroup;

    .line 153
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_1:Landroid/view/ViewGroup;

    .line 154
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_2:Landroid/view/ViewGroup;

    .line 155
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_3:Landroid/view/ViewGroup;

    .line 156
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_4:Landroid/view/ViewGroup;

    .line 158
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vMainview:Landroid/view/View;

    .line 159
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vHelp:Landroid/view/View;

    .line 160
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vMenuPopUpClose:Landroid/view/View;

    .line 161
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vAdvanced:Landroid/view/View;

    .line 162
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vNormal:Landroid/view/View;

    .line 163
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vResolution:Landroid/view/View;

    .line 164
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vPictureSize:Landroid/view/View;

    .line 165
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vVideoSize:Landroid/view/View;

    .line 166
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vTimerLayout:Landroid/view/View;

    .line 167
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vTimerShot:Landroid/view/View;

    .line 168
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEVLayout:Landroid/view/View;

    .line 169
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEV:Landroid/view/View;

    .line 170
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vWBLayout:Landroid/view/View;

    .line 171
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vWB:Landroid/view/View;

    .line 172
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vISOLayout:Landroid/view/View;

    .line 173
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vISO:Landroid/view/View;

    .line 175
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEtc:Landroid/view/View;

    .line 176
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEtcNor:Landroid/view/View;

    .line 177
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vReset:Landroid/view/View;

    .line 178
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vStorageLocation:Landroid/view/View;

    .line 179
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->tStoragePath:Landroid/widget/TextView;

    .line 180
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vGeoTagNor:Landroid/view/View;

    .line 182
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listWB:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    .line 183
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listTimer:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    .line 184
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listIso:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    .line 186
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    .line 942
    new-instance v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$1;-><init>(Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mAlertDialogListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    .line 208
    return-void
.end method

.method private _DisableView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 330
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    const-string v1, "#BDBDBD"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 331
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 332
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    invoke-virtual {p1, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 334
    return-void
.end method

.method private _EnableView(ILandroid/view/View;)V
    .locals 2
    .parameter "enable"
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 318
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 319
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 325
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    invoke-virtual {p2, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    goto :goto_0
.end method

.method private _InitItemValidNum(I)V
    .locals 4
    .parameter "num"

    .prologue
    .line 250
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, key:Ljava/lang/String;
    const-string v1, "SettingsGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MenuController] preference key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "SettingsGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MenuController] preference num = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "pref_setting_collect_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iCollectType:I

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const-string v1, "pref_setting_picture_size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iPictureSize:I

    goto :goto_0

    .line 258
    :cond_2
    const-string v1, "pref_setting_record_size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iVideoSize:I

    goto :goto_0

    .line 260
    :cond_3
    const-string v1, "pref_setting_timershot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 261
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iTimerShot:I

    goto :goto_0

    .line 262
    :cond_4
    const-string v1, "pref_setting_ev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 263
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iEV:I

    goto :goto_0

    .line 265
    :cond_5
    const-string v1, "pref_setting_wb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 266
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iWB:I

    goto :goto_0

    .line 268
    :cond_6
    const-string v1, "pref_setting_iso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 269
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iISO:I

    goto :goto_0

    .line 271
    :cond_7
    const-string v1, "pref_setting_photometry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 272
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iPhotoMetry:I

    goto :goto_0

    .line 274
    :cond_8
    const-string v1, "pref_setting_grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 275
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGrid:I

    goto :goto_0

    .line 277
    :cond_9
    const-string v1, "pref_setting_goto_viewer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 278
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGotoViewer:I

    goto/16 :goto_0

    .line 280
    :cond_a
    const-string v1, "pref_setting_focus_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 281
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iFocusMode:I

    goto/16 :goto_0

    .line 283
    :cond_b
    const-string v1, "pref_setting_quality"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 284
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iQuality:I

    goto/16 :goto_0

    .line 286
    :cond_c
    const-string v1, "pref_setting_anti_banding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 287
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iAntiBanding:I

    goto/16 :goto_0

    .line 289
    :cond_d
    const-string v1, "pref_setting_gps_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 290
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGPSInfo:I

    goto/16 :goto_0

    .line 291
    :cond_e
    const-string v1, "pref_setting_voice_record"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 292
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iVoiceRecord:I

    goto/16 :goto_0

    .line 294
    :cond_f
    const-string v1, "pref_setting_shutter_sound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 295
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iShutterSound:I

    goto/16 :goto_0

    .line 297
    :cond_10
    const-string v1, "pref_setting_anti_shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 298
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iAntiShake:I

    goto/16 :goto_0

    .line 300
    :cond_11
    const-string v1, "pref_setting_reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 301
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iReset:I

    goto/16 :goto_0

    .line 303
    :cond_12
    const-string v1, "pref_setting_storage_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 304
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iStorageLocation:I

    goto/16 :goto_0

    .line 305
    :cond_13
    const-string v1, "pref_setting_low_light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 306
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iLowLight:I

    goto/16 :goto_0

    .line 308
    :cond_14
    const-string v1, "pref_setting_continuous_shot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 309
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iContShot:I

    goto/16 :goto_0

    .line 311
    :cond_15
    const-string v1, "pref_setting_mirror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iMirror:I

    goto/16 :goto_0
.end method

.method private _InitSettingsG()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 359
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 361
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v3

    const/16 v6, 0x9

    if-ne v3, v6, :cond_8

    move v1, v4

    .line 363
    .local v1, IsPanorama:Z
    :goto_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v3

    const/16 v6, 0xb

    if-ne v3, v6, :cond_9

    move v0, v4

    .line 369
    .local v0, IsEffects:Z
    :goto_1
    const-string v3, "SettingsGroup"

    const-string v4, "[MenuController] _InitSettingsG()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v3, "SettingsGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[MenuController] mainView num = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iMainView:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_MAIN_LAYOUT:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vMainview:Landroid/view/View;

    .line 373
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vMainview:Landroid/view/View;

    invoke-direct {p0, v5, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    .line 375
    const-string v3, "SettingsGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[MenuController] collect type = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iCollectType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v3, "SettingsGroup"

    const-string v4, "[MenuController] vHelp"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vHelp:Landroid/view/View;

    if-nez v3, :cond_0

    .line 379
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_HELP:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vHelp:Landroid/view/View;

    .line 380
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vHelp:Landroid/view/View;

    invoke-direct {p0, v5, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    .line 382
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vMenuPopUpClose:Landroid/view/View;

    if-nez v3, :cond_1

    .line 383
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_MENU_POPUP_CLOSE:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vMenuPopUpClose:Landroid/view/View;

    .line 384
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vMenuPopUpClose:Landroid/view/View;

    invoke-direct {p0, v5, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    .line 387
    :cond_1
    const-string v3, "SettingsGroup"

    const-string v4, "[MenuController] vCollect"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vAdvanced:Landroid/view/View;

    if-nez v3, :cond_2

    .line 389
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_ADVANCED_SETTING:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vAdvanced:Landroid/view/View;

    .line 390
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vAdvanced:Landroid/view/View;

    invoke-direct {p0, v5, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    .line 392
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vNormal:Landroid/view/View;

    if-nez v3, :cond_3

    .line 393
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_NORMAL_SETTING:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vNormal:Landroid/view/View;

    .line 394
    :cond_3
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vNormal:Landroid/view/View;

    invoke-direct {p0, v5, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    .line 396
    const-string v3, "SettingsGroup"

    const-string v4, "[MenuController] vResolution"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vResolution:Landroid/view/View;

    if-nez v3, :cond_4

    .line 398
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_RESOLUTION:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vResolution:Landroid/view/View;

    .line 399
    :cond_4
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vResolution:Landroid/view/View;

    invoke-direct {p0, v5, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    .line 401
    const-string v3, "SettingsGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[MenuController] picture size num = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iPictureSize:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_PICTURE_SIZE:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vPictureSize:Landroid/view/View;

    .line 404
    if-nez v0, :cond_5

    if-eqz v1, :cond_a

    .line 405
    :cond_5
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vPictureSize:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_DisableView(Landroid/view/View;)V

    .line 410
    :goto_2
    const-string v3, "SettingsGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[MenuController] video size num = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iVideoSize:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_VIDEO_SIZE:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vVideoSize:Landroid/view/View;

    .line 412
    if-nez v1, :cond_6

    if-eqz v0, :cond_b

    .line 413
    :cond_6
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vVideoSize:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_DisableView(Landroid/view/View;)V

    .line 418
    :goto_3
    const-string v3, "SettingsGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[MenuController] timer shot num = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iTimerShot:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TIMER_G_LAYOUT:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vTimerLayout:Landroid/view/View;

    .line 421
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iTimerShot:I

    if-ne v3, v7, :cond_c

    .line 422
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vTimerLayout:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_RemoveLayout(Landroid/view/View;)V

    .line 437
    :cond_7
    :goto_4
    const-string v3, "SettingsGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[MenuController] ev num = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iEV:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_EV_LAYOUT:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEVLayout:Landroid/view/View;

    .line 439
    sget v3, Lcom/pantech/app/vegacamera/R$id;->ev_seekbar:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEV:Landroid/view/View;

    .line 441
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iEV:I

    if-ne v3, v7, :cond_d

    .line 442
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEVLayout:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_RemoveLayout(Landroid/view/View;)V

    .line 450
    :goto_5
    const-string v3, "SettingsGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[MenuController] wb num = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iWB:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_WB_G_LAYOUT:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vWBLayout:Landroid/view/View;

    .line 453
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iWB:I

    if-ne v3, v7, :cond_e

    .line 454
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vWBLayout:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_RemoveLayout(Landroid/view/View;)V

    .line 467
    :goto_6
    const-string v3, "SettingsGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[MenuController] iso num = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iISO:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_ISO_G_LAYOUT:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vISOLayout:Landroid/view/View;

    .line 470
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iISO:I

    if-ne v3, v7, :cond_f

    .line 471
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vISOLayout:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_RemoveLayout(Landroid/view/View;)V

    .line 484
    :goto_7
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_ITEM_1:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_1:Landroid/view/ViewGroup;

    .line 485
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_ITEM_2:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_2:Landroid/view/ViewGroup;

    .line 486
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_ITEM_3:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_3:Landroid/view/ViewGroup;

    .line 487
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_ITEM_4:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_4:Landroid/view/ViewGroup;

    .line 488
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_ITEM_5:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_5:Landroid/view/ViewGroup;

    .line 489
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_ITEM_6:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_6:Landroid/view/ViewGroup;

    .line 491
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_GROUP_1:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDragDropGroup_1:Landroid/view/ViewGroup;

    .line 492
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_DRAGDROP_GROUP_2:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDragDropGroup_2:Landroid/view/ViewGroup;

    .line 495
    invoke-direct {p0, v5}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_initSettingDragnDropItem(Z)V

    .line 497
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_1:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_1:Landroid/view/ViewGroup;

    .line 498
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_2:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_2:Landroid/view/ViewGroup;

    .line 499
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_3:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_3:Landroid/view/ViewGroup;

    .line 500
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_4:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_4:Landroid/view/ViewGroup;

    .line 501
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_5:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_5:Landroid/view/ViewGroup;

    .line 502
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_6:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_6:Landroid/view/ViewGroup;

    .line 503
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_7:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_7:Landroid/view/ViewGroup;

    .line 504
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_BTN_8:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_8:Landroid/view/ViewGroup;

    .line 506
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_GROUP_1:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_1:Landroid/view/ViewGroup;

    .line 507
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_GROUP_2:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_2:Landroid/view/ViewGroup;

    .line 508
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_GROUP_3:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_3:Landroid/view/ViewGroup;

    .line 509
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TOGGLE_GROUP_4:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_4:Landroid/view/ViewGroup;

    .line 512
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_initSettingToggleItem(Z)V

    .line 514
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_IsNormalSetting()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 515
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_ETC_NORMAL_LAYOUT:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEtcNor:Landroid/view/View;

    .line 516
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEtcNor:Landroid/view/View;

    invoke-direct {p0, v5, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    .line 518
    const-string v3, "SettingsGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[MenuController] storage location num = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iStorageLocation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_STORAGE_LOCATION_NORMAL:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vStorageLocation:Landroid/view/View;

    .line 520
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iStorageLocation:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vStorageLocation:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    .line 531
    :goto_8
    const-string v3, "SettingsGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[MenuController] reset num = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iReset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_RESET:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vReset:Landroid/view/View;

    .line 533
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iReset:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vReset:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    .line 535
    return-void

    .end local v0           #IsEffects:Z
    .end local v1           #IsPanorama:Z
    :cond_8
    move v1, v5

    .line 361
    goto/16 :goto_0

    .restart local v1       #IsPanorama:Z
    :cond_9
    move v0, v5

    .line 363
    goto/16 :goto_1

    .line 407
    .restart local v0       #IsEffects:Z
    :cond_a
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iPictureSize:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vPictureSize:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    goto/16 :goto_2

    .line 415
    :cond_b
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iVideoSize:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vVideoSize:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    goto/16 :goto_3

    .line 424
    :cond_c
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iTimerShot:I

    if-eq v3, v7, :cond_7

    .line 425
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TIMER_SHOT:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vTimerShot:Landroid/view/View;

    .line 426
    sget v4, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_button_2nd_list:I

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vTimerShot:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listTimer:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    .line 427
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listTimer:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    const-string v4, "second_depth"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetDepthStyle(Ljava/lang/String;)V

    .line 428
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listTimer:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    const-string v4, "type_image_only"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetViewType(Ljava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listTimer:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iTimerShot:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->Initialize(Lcom/pantech/app/vegacamera/preference/ButtonListPreference;)V

    .line 430
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listTimer:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iTimerShot:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;)V

    .line 432
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vTimerShot:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listTimer:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 444
    :cond_d
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEV:Landroid/view/View;

    check-cast v3, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/pantech/app/vegacamera/R$drawable;->camera_zoom_bar:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEV:Landroid/view/View;

    check-cast v3, Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iEV:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 446
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEV:Landroid/view/View;

    check-cast v3, Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 447
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iEV:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEV:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 456
    :cond_e
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_WB:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vWB:Landroid/view/View;

    .line 457
    sget v4, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_button_2nd_list:I

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vWB:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listWB:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    .line 458
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listWB:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    const-string v4, "second_depth"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetDepthStyle(Ljava/lang/String;)V

    .line 459
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listWB:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    const-string v4, "type_image_only"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetViewType(Ljava/lang/String;)V

    .line 460
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listWB:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iWB:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->Initialize(Lcom/pantech/app/vegacamera/preference/ButtonListPreference;)V

    .line 461
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listWB:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iWB:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;)V

    .line 463
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vWB:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listWB:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_6

    .line 473
    :cond_f
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_ISO:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vISO:Landroid/view/View;

    .line 474
    sget v4, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_button_2nd_list:I

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vISO:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listIso:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    .line 475
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listIso:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    const-string v4, "second_depth"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetDepthStyle(Ljava/lang/String;)V

    .line 476
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listIso:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    const-string v4, "type_image_only"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetViewType(Ljava/lang/String;)V

    .line 477
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listIso:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iISO:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->Initialize(Lcom/pantech/app/vegacamera/preference/ButtonListPreference;)V

    .line 478
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listIso:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iISO:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;)V

    .line 480
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vISO:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listIso:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_7

    .line 522
    :cond_10
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_ETC_LAYOUT:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEtc:Landroid/view/View;

    .line 523
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEtc:Landroid/view/View;

    invoke-direct {p0, v5, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    .line 525
    const-string v3, "SettingsGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[MenuController] storage location num = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iStorageLocation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_STORAGE_LOCATION:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vStorageLocation:Landroid/view/View;

    .line 528
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iStorageLocation:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vStorageLocation:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    goto/16 :goto_8
.end method

.method private _IsNormalSetting()Z
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iCollectType:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _LayoutParamsInCaseCollectType()V
    .locals 5

    .prologue
    .line 341
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    const-string v3, "pref_setting_collect_type"

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, _CollectType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 344
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vgMenuSettingG:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 345
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_MENU_SETTINGS_G_L:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vgMenuSettingG:Landroid/view/ViewGroup;

    .line 347
    const-string v2, "normal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_settings_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 349
    const/4 v3, -0x2

    .line 348
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 354
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vgMenuSettingG:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    :cond_0
    return-void

    .line 351
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_settings_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 352
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_settings_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 351
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0
.end method

.method private _ReloadPopup()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;->OnReloadSettingPopup()V

    .line 1028
    :cond_0
    return-void
.end method

.method private _RemoveLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 337
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 338
    return-void
.end method

.method private _SetToggleIndex(II)V
    .locals 8
    .parameter "i"
    .parameter "id"

    .prologue
    .line 723
    const-string v5, "SettingsGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[MenuController] pref index is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v4

    .line 726
    .local v4, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 727
    .local v1, entries:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 728
    .local v2, index:I
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 729
    .local v0, currIndex:I
    array-length v3, v1

    .line 731
    .local v3, indexLength:I
    add-int/lit8 v2, v0, 0x1

    .line 732
    if-ne v2, v3, :cond_0

    .line 733
    const/4 v2, 0x0

    .line 736
    :cond_0
    invoke-virtual {v4, v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValueIndex(I)V

    .line 738
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    if-eqz v5, :cond_1

    .line 739
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_1
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_UpdateItemInfoList(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_SetCurrPosition(I)V

    .line 744
    return-void
.end method

.method private _UpdateDragnDropValue()V
    .locals 7

    .prologue
    .line 711
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 712
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 720
    .end local v0           #i:I
    :cond_0
    return-void

    .line 713
    .restart local v0       #i:I
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 714
    .local v4, viewid:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "index"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 715
    .local v1, index:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 716
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 717
    .local v3, tempView:Landroid/view/View;
    check-cast v3, Landroid/widget/Button;

    .end local v3           #tempView:Landroid/view/View;
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _UpdateItemInfoList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 661
    const-string v2, "pref_setting_collect_type"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 662
    const-string v2, "advance"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vAdvanced:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 664
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vNormal:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vAdvanced:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 667
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vNormal:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 669
    :cond_2
    const-string v2, "pref_setting_picture_size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 670
    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iPictureSize:I

    if-eq v2, v3, :cond_0

    .line 671
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vPictureSize:Landroid/view/View;

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iPictureSize:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 672
    :cond_3
    const-string v2, "pref_setting_record_size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 673
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vVideoSize:Landroid/view/View;

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iVideoSize:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 674
    :cond_4
    const-string v2, "pref_setting_ev"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 675
    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iEV:I

    if-eq v2, v3, :cond_0

    .line 676
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vEV:Landroid/view/View;

    check-cast v2, Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iEV:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 678
    :cond_5
    const-string v2, "pref_setting_photometry"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "pref_setting_grid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 679
    const-string v2, "pref_setting_goto_viewer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "pref_setting_focus_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 680
    const-string v2, "pref_setting_quality"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "pref_setting_anti_banding"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 681
    :cond_6
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_UpdateDragnDropValue()V

    goto/16 :goto_0

    .line 682
    :cond_7
    const-string v2, "pref_setting_gps_info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "pref_setting_voice_record"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 683
    const-string v2, "pref_setting_shutter_sound"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "pref_setting_anti_shake"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 684
    const-string v2, "pref_setting_low_light"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "pref_setting_continuous_shot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 685
    const-string v2, "pref_setting_mirror"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 687
    :cond_8
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vGeoTagNor:Landroid/view/View;

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGPSInfo:I

    if-eq v2, v3, :cond_9

    .line 688
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vGeoTagNor:Landroid/view/View;

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGPSInfo:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGPSInfo:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 691
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$drawable;->camera_settings_toggle_btn_on:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 692
    .local v1, toggleon:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vGeoTagNor:Landroid/view/View;

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 693
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vGeoTagNor:Landroid/view/View;

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 694
    sget v4, Lcom/pantech/app/vegacamera/R$color;->menu_popup_settings_toggle_item_on_text_color:I

    .line 693
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 702
    .end local v1           #toggleon:Landroid/graphics/drawable/Drawable;
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_UpdateToggleValue()V

    goto/16 :goto_0

    .line 696
    :cond_a
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$drawable;->camera_settings_toggle_btn_off:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 697
    .local v0, toggleoff:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vGeoTagNor:Landroid/view/View;

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 698
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vGeoTagNor:Landroid/view/View;

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 699
    sget v4, Lcom/pantech/app/vegacamera/R$color;->menu_popup_settings_toggle_item_off_text_color:I

    .line 698
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 703
    .end local v0           #toggleoff:Landroid/graphics/drawable/Drawable;
    :cond_b
    const-string v2, "pref_setting_storage_location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->tStoragePath:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 705
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->tStoragePath:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iStorageLocation:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private _UpdateSettingGroupValue()V
    .locals 4

    .prologue
    .line 805
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->GetSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setting_group"

    .line 806
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_setting_group_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 805
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->sCurrentItem:Ljava/lang/String;

    .line 808
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] sCurrentItem = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->sCurrentItem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method private _UpdateToggleValue()V
    .locals 9

    .prologue
    .line 747
    iget-object v7, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 748
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v7, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_1

    .line 770
    .end local v0           #i:I
    :cond_0
    return-void

    .line 749
    .restart local v0       #i:I
    :cond_1
    iget-object v7, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "id"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 750
    .local v6, viewid:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "index"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 752
    .local v1, index:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 754
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    invoke-virtual {p0, v6}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .local v3, tempView:Landroid/view/View;
    move-object v7, v3

    .line 755
    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 757
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 758
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/pantech/app/vegacamera/R$drawable;->camera_settings_toggle_btn_on:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, toggleon:Landroid/graphics/drawable/Drawable;
    move-object v7, v3

    .line 759
    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v7, v5}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 760
    check-cast v3, Landroid/widget/Button;

    .end local v3           #tempView:Landroid/view/View;
    iget-object v7, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 761
    sget v8, Lcom/pantech/app/vegacamera/R$color;->menu_popup_settings_toggle_item_on_text_color:I

    .line 760
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 748
    .end local v5           #toggleon:Landroid/graphics/drawable/Drawable;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    .restart local v3       #tempView:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/pantech/app/vegacamera/R$drawable;->camera_settings_toggle_btn_off:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, toggleoff:Landroid/graphics/drawable/Drawable;
    move-object v7, v3

    .line 764
    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 765
    check-cast v3, Landroid/widget/Button;

    .end local v3           #tempView:Landroid/view/View;
    iget-object v7, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 766
    sget v8, Lcom/pantech/app/vegacamera/R$color;->menu_popup_settings_toggle_item_off_text_color:I

    .line 765
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1
.end method

.method private _WritePreferenceValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 812
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController]  _WritePreferenceValue() key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    const-string v1, "pref_setting_group"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 815
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_UpdateSettingGroupValue()V

    .line 816
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_UpdateItemInfoList(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method private _initSettingDragnDropItem(Z)V
    .locals 5
    .parameter "isNormal"

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 538
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDragDropGroup_1:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDragDropGroup_2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    .line 544
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    .line 546
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    .line 548
    if-nez p1, :cond_6

    .line 549
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] photometry num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iPhotoMetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iPhotoMetry:I

    if-eq v0, v3, :cond_1

    .line 551
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iPhotoMetry:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitDragDropView(I)V

    .line 553
    :cond_1
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] grid num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGrid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGrid:I

    if-eq v0, v3, :cond_2

    .line 555
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGrid:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitDragDropView(I)V

    .line 557
    :cond_2
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] gotoviewer num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGotoViewer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGotoViewer:I

    if-eq v0, v3, :cond_3

    .line 559
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGotoViewer:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitDragDropView(I)V

    .line 561
    :cond_3
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] focusmode num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iFocusMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iFocusMode:I

    if-eq v0, v3, :cond_4

    .line 563
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iFocusMode:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitDragDropView(I)V

    .line 565
    :cond_4
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] quality num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iQuality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iQuality:I

    if-eq v0, v3, :cond_5

    .line 567
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iQuality:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitDragDropView(I)V

    .line 569
    :cond_5
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] antibanding num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iAntiBanding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iAntiBanding:I

    if-eq v0, v3, :cond_6

    .line 571
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iAntiBanding:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitDragDropView(I)V

    .line 573
    :cond_6
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] dPosition = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    if-nez v0, :cond_7

    .line 576
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDragDropGroup_1:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDragDropGroup_2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 580
    :cond_7
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_8

    .line 581
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDragDropGroup_2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 585
    :cond_8
    return-void
.end method

.method private _initSettingToggleItem(Z)V
    .locals 5
    .parameter "isNormal"

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/16 v3, 0x8

    .line 588
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_1:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_3:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_4:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    .line 596
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    .line 598
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->tPosition:I

    .line 599
    if-nez p1, :cond_8

    .line 600
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGPSInfo:I

    if-eq v0, v4, :cond_1

    .line 601
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGPSInfo:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitToggleBtn(I)V

    .line 602
    :cond_1
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] gps num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGPSInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iLowLight:I

    if-eq v0, v4, :cond_2

    .line 605
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iLowLight:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitToggleBtn(I)V

    .line 606
    :cond_2
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] lowlight num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iLowLight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iContShot:I

    if-eq v0, v4, :cond_3

    .line 609
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iContShot:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitToggleBtn(I)V

    .line 610
    :cond_3
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] continuos num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iContShot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iMirror:I

    if-eq v0, v4, :cond_4

    .line 613
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iMirror:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitToggleBtn(I)V

    .line 614
    :cond_4
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] mirror num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iMirror:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iVoiceRecord:I

    if-eq v0, v4, :cond_5

    .line 617
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iVoiceRecord:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitToggleBtn(I)V

    .line 618
    :cond_5
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] voicerecord num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iVoiceRecord:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iShutterSound:I

    if-eq v0, v4, :cond_6

    .line 621
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iShutterSound:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitToggleBtn(I)V

    .line 622
    :cond_6
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] shuttersound num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iShutterSound:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iAntiShake:I

    if-eq v0, v4, :cond_7

    .line 625
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iAntiShake:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitToggleBtn(I)V

    .line 626
    :cond_7
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] antishake num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iAntiShake:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_8
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] gps num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGPSInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGPSInfo:I

    if-eq v0, v4, :cond_9

    .line 631
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_GEO_TAG_NORMAL:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vGeoTagNor:Landroid/view/View;

    .line 632
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGPSInfo:I

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vGeoTagNor:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    .line 635
    :cond_9
    const-string v0, "SettingsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] tPosition = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->tPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->tPosition:I

    if-nez v0, :cond_b

    .line 638
    const-string v0, "SettingsGroup"

    const-string v1, "[MenuController] 1234 "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_1:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_3:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_4:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 656
    :cond_a
    :goto_0
    return-void

    .line 643
    :cond_b
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->tPosition:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    .line 644
    const-string v0, "SettingsGroup"

    const-string v1, "[MenuController] 234 "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_3:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_4:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 648
    :cond_c
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->tPosition:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_d

    .line 649
    const-string v0, "SettingsGroup"

    const-string v1, "[MenuController] 34 "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_3:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_4:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 652
    :cond_d
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->tPosition:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_a

    .line 653
    const-string v0, "SettingsGroup"

    const-string v1, "[MenuController] 4 "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleGroup_4:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private _setAdvancedSetting()V
    .locals 4

    .prologue
    .line 774
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    .line 776
    .local v0, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "advance"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    :goto_0
    return-void

    .line 780
    :cond_0
    const-string v1, "advance"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 782
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    if-eqz v1, :cond_1

    .line 783
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_ReloadPopup()V

    goto :goto_0
.end method

.method private _setNormalSetting()V
    .locals 4

    .prologue
    .line 790
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    .line 792
    .local v0, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    :goto_0
    return-void

    .line 796
    :cond_0
    const-string v1, "normal"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 798
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    if-eqz v1, :cond_1

    .line 799
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_ReloadPopup()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->reset()V

    return-void
.end method

.method private gotoBrowser()V
    .locals 5

    .prologue
    .line 1014
    const-string v1, "com.pantech.app.vegacamera.browser.Browser"

    .line 1016
    .local v1, className:Ljava/lang/String;
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1017
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1018
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1019
    .local v0, act:Landroid/app/Activity;
    const/16 v4, 0x42

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    .end local v0           #act:Landroid/app/Activity;
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1020
    :catch_0
    move-exception v2

    .line 1021
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private reset()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 974
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 1010
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_SetCurrPosition(I)V

    .line 1011
    return-void

    .line 975
    :cond_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 976
    .local v2, tempPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v3

    .line 978
    .local v3, tempkey:Ljava/lang/String;
    const-string v4, "pref_setting_storage_location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 974
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 981
    :cond_2
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v4

    if-ne v4, v7, :cond_3

    const-string v4, "pref_setting_picture_size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 985
    :cond_3
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 986
    const-string v4, "pref_setting_picture_size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 987
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValueIndex(I)V

    .line 988
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_UpdateItemInfoList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 993
    :cond_4
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, defaultValue:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 995
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v4, "pref_setting_iso"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 998
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listIso:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->setDefault()V

    .line 999
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listIso:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_UpdateListView()V

    goto :goto_1

    .line 1000
    :cond_5
    const-string v4, "pref_setting_wb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1001
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listWB:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->setDefault()V

    .line 1002
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listWB:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_UpdateListView()V

    goto :goto_1

    .line 1003
    :cond_6
    const-string v4, "pref_setting_timershot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1004
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listTimer:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->setDefault()V

    .line 1005
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->listTimer:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_UpdateListView()V

    goto/16 :goto_1

    .line 1007
    :cond_7
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_UpdateItemInfoList(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private showAlertDialog()V
    .locals 5

    .prologue
    .line 930
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-nez v1, :cond_0

    .line 931
    new-instance v2, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 933
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->setting_help_reset_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, confirmMsg:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iOrinetation:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setOrientation(I)V

    .line 935
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mAlertDialogListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->SetListener(Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;)V

    .line 936
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setMessage(Ljava/lang/String;)V

    .line 937
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->setting_help_reset_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 938
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->review_ok:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->review_cancel:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setButtonText(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->showDialog()V

    .line 940
    return-void
.end method


# virtual methods
.method public Initialize(Lcom/pantech/app/vegacamera/preference/PreferenceGroup;[Ljava/lang/String;)V
    .locals 7
    .parameter "group"
    .parameter "keys"

    .prologue
    const/4 v6, 0x0

    .line 211
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 213
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    .line 216
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p2

    if-lt v1, v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 225
    .local v0, count:I
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_2

    .line 232
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_UpdateSettingGroupValue()V

    .line 233
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_LayoutParamsInCaseCollectType()V

    .line 234
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitSettingsG()V

    .line 236
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v0, :cond_3

    .line 239
    return-void

    .line 217
    .end local v0           #count:I
    :cond_0
    aget-object v3, p2, v1

    invoke-virtual {p1, v3}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 218
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v2, :cond_1

    .line 219
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    new-instance v4, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;-><init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ListPreference;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v2           #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    .restart local v0       #count:I
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3, p0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;)V

    .line 227
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3, v6}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->SetUnchangeTitleImage(Z)V

    .line 228
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3, v6}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->SetUsedTypeIcon(Z)V

    .line 229
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_InitItemValidNum(I)V

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    :cond_3
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_UpdateItemInfoList(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 821
    const-string v2, "SettingsGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MenuController] OnChangedMenuItemValue() key = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    move-object v0, p1

    .local v0, sKey:Ljava/lang/String;
    move-object v1, p2

    .line 823
    .local v1, sValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    if-eqz v2, :cond_0

    .line 824
    const-string v2, "SettingsGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MenuController]  sKey = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    invoke-interface {v2, v0, v1}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_WritePreferenceValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    if-eqz v2, :cond_1

    .line 829
    const/high16 v2, 0x3f80

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->setAlpha(F)V

    .line 830
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_SetCurrPosition(I)V

    .line 831
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->dismiss()V

    .line 833
    :cond_1
    return-void
.end method

.method public OnDialogDismissed()V
    .locals 1

    .prologue
    .line 1328
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_SetCurrPosition(I)V

    .line 1329
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->setAlpha(F)V

    .line 1330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    .line 1331
    return-void
.end method

.method public OnUpdateSubItemInfo()V
    .locals 0

    .prologue
    .line 1033
    return-void
.end method

.method public varargs OverrideItems([Ljava/lang/String;)V
    .locals 8
    .parameter "keyvalues"

    .prologue
    .line 1036
    const-string v6, "SettingsGroup"

    const-string v7, "[MenuController] OverrideItems()"

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1038
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, p1

    if-lt v1, v6, :cond_0

    .line 1048
    return-void

    .line 1039
    :cond_0
    aget-object v3, p1, v1

    .line 1040
    .local v3, key:Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    aget-object v5, p1, v6

    .line 1041
    .local v5, value:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 1038
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1042
    :cond_1
    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v4

    .line 1043
    .local v4, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1044
    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v6, v5}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->OverrideItems(Ljava/lang/String;)V

    .line 1041
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    .line 204
    return-void
.end method

.method public _CloseSubPopup()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1051
    const-string v3, "SettingsGroup"

    const-string v5, "[MenuController] _CloseSubPopup()"

    invoke-static {v3, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    if-eqz v3, :cond_0

    .line 1053
    const-string v3, "SettingsGroup"

    const-string v5, "mPopupDialog dismiss"

    invoke-static {v3, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const/high16 v3, 0x3f80

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->setAlpha(F)V

    .line 1055
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->dismiss()V

    .line 1057
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v3, :cond_1

    .line 1058
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 1060
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1061
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 1070
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 1062
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 1063
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v2, :cond_3

    .line 1064
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->_CloseSubPopup()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1065
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vMainview:Landroid/view/View;

    invoke-direct {p0, v4, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_EnableView(ILandroid/view/View;)V

    move v3, v4

    .line 1066
    goto :goto_1

    .line 1061
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public _GetSubPopupWindow()Landroid/view/View;
    .locals 5

    .prologue
    .line 1074
    const-string v3, "SettingsGroup"

    const-string v4, "[MenuController] _GetSubPopupWindow()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1076
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 1082
    const/4 v2, 0x0

    :cond_0
    return-object v2

    .line 1077
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->_GetSubPopupWindow()Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    move-result-object v2

    .line 1078
    .local v2, result:Landroid/view/View;
    if-nez v2, :cond_0

    .line 1076
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public _InitDragDropView(I)V
    .locals 6
    .parameter "iposition"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1090
    const-string v1, "SettingsGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[_UpdateDragDropView] iposition : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v1, "SettingsGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[_UpdateDragDropView] dPosition : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1095
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    packed-switch v1, :pswitch_data_0

    .line 1175
    :goto_0
    return-void

    .line 1097
    :pswitch_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_1:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1098
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_1:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_1:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_1:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_1:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1101
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_1:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    const-string v1, "id"

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    goto :goto_0

    .line 1110
    :pswitch_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_2:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1111
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_2:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_2:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_2:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_2:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1114
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_2:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1116
    const-string v1, "id"

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    goto/16 :goto_0

    .line 1123
    :pswitch_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_3:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1124
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_3:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_3:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_3:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_3:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1127
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_3:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1129
    const-string v1, "id"

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    goto/16 :goto_0

    .line 1136
    :pswitch_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_4:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1137
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_4:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_4:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_4:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_4:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1140
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_4:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1142
    const-string v1, "id"

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    goto/16 :goto_0

    .line 1149
    :pswitch_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_5:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1150
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_5:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_5:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_5:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_5:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1153
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_5:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1155
    const-string v1, "id"

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    goto/16 :goto_0

    .line 1162
    :pswitch_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_6:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1163
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_6:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_6:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_6:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_6:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1166
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vDrapDrop_6:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1168
    const-string v1, "id"

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->dPosition:I

    goto/16 :goto_0

    .line 1095
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public _InitToggleBtn(I)V
    .locals 4
    .parameter "iposition"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1180
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->tPosition:I

    packed-switch v1, :pswitch_data_0

    .line 1261
    :goto_0
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->tPosition:I

    add-int/lit8 v1, v1, 0x1

    .line 1262
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->tPosition:I

    .line 1263
    return-void

    .line 1182
    :pswitch_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_1:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1183
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_1:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_1:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_1:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1186
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_1:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_1:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1187
    const-string v1, "id"

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1192
    :pswitch_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_2:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1193
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_2:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_2:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_2:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_2:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_2:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1197
    const-string v1, "id"

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1202
    :pswitch_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_3:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1203
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_3:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_3:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_3:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1206
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_3:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_3:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1207
    const-string v1, "id"

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1212
    :pswitch_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_4:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1213
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_4:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_4:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_4:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1216
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_4:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_4:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1217
    const-string v1, "id"

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1222
    :pswitch_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_5:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1223
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_5:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1224
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_5:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_5:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1226
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_5:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_5:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1227
    const-string v1, "id"

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1232
    :pswitch_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_6:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1233
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_6:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_6:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_6:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1236
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_6:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_6:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1237
    const-string v1, "id"

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1242
    :pswitch_6
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_7:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1243
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_7:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_7:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_7:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1246
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_7:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_7:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1247
    const-string v1, "id"

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_7:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1252
    :pswitch_7
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_8:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1253
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_8:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_8:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_8:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1256
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->vToggleBtn_8:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_8:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1257
    const-string v1, "id"

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_8:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public _ReloadPreference()V
    .locals 5

    .prologue
    .line 1267
    const-string v3, "SettingsGroup"

    const-string v4, "[MenuController] _ReloadPreference()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1269
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1275
    return-void

    .line 1270
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 1271
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v2, :cond_1

    .line 1272
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->_ReloadPreference()V

    .line 1269
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public _SetCurrPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 1086
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iCurrPosition:I

    .line 1087
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    const v6, 0x3e4ccccd

    .line 837
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 839
    .local v1, id:I
    const-string v3, "SettingsGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[MenuController] onClick(), id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iCurrPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iCurrPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_MENU_POPUP_CLOSE:I

    if-ne v1, v3, :cond_1

    .line 842
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    if-eqz v3, :cond_0

    .line 843
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;->OnClosePopUp()V

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iCurrPosition:I

    if-eq v3, v1, :cond_0

    .line 852
    const-string v3, "SettingsGroup"

    const-string v4, "[MenuController] act onClick()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iCurrPosition:I

    .line 855
    iput-object v7, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    .line 856
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_CloseSubPopup()Z

    .line 858
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_HELP:I

    if-ne v1, v3, :cond_3

    .line 859
    new-instance v3, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    .line 860
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    const-string v4, "type_none"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->setsDialogStyle(Ljava/lang/String;)V

    .line 861
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    invoke-virtual {v3, v7}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->Initialize(Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;)V

    .line 862
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    invoke-virtual {v3, p0}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;)V

    .line 863
    invoke-virtual {p0, v6}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->setAlpha(F)V

    .line 924
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    if-eqz v3, :cond_0

    .line 925
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    sget v4, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iOrinetation:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->setOrientation(I)V

    goto :goto_0

    .line 864
    :cond_3
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_NORMAL_SETTING:I

    if-ne v1, v3, :cond_4

    .line 865
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_setNormalSetting()V

    goto :goto_1

    .line 866
    :cond_4
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_ADVANCED_SETTING:I

    if-ne v1, v3, :cond_5

    .line 867
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_setAdvancedSetting()V

    goto :goto_1

    .line 868
    :cond_5
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_PICTURE_SIZE:I

    if-ne v1, v3, :cond_6

    .line 870
    new-instance v3, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    .line 871
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    const-string v4, "type_all"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->setsDialogStyle(Ljava/lang/String;)V

    .line 872
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iPictureSize:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->Initialize(Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;)V

    .line 873
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    invoke-virtual {v3, p0}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;)V

    .line 874
    invoke-virtual {p0, v6}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->setAlpha(F)V

    goto :goto_1

    .line 875
    :cond_6
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_VIDEO_SIZE:I

    if-ne v1, v3, :cond_7

    .line 877
    new-instance v3, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    .line 878
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    const-string v4, "type_all"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->setsDialogStyle(Ljava/lang/String;)V

    .line 879
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iVideoSize:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->Initialize(Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;)V

    .line 880
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    invoke-virtual {v3, p0}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;)V

    .line 881
    invoke-virtual {p0, v6}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->setAlpha(F)V

    goto :goto_1

    .line 882
    :cond_7
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_TIMER_SHOT:I

    if-ne v1, v3, :cond_8

    .line 883
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iTimerShot:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->ShowPopup(Landroid/view/View;)V

    goto/16 :goto_1

    .line 884
    :cond_8
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_EV_CONTROL:I

    if-ne v1, v3, :cond_9

    .line 885
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iEV:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->ShowPopup(Landroid/view/View;)V

    goto/16 :goto_1

    .line 886
    :cond_9
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_WB:I

    if-ne v1, v3, :cond_a

    .line 887
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iWB:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->ShowPopup(Landroid/view/View;)V

    goto/16 :goto_1

    .line 888
    :cond_a
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_ISO:I

    if-ne v1, v3, :cond_b

    .line 889
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iISO:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->ShowPopup(Landroid/view/View;)V

    goto/16 :goto_1

    .line 890
    :cond_b
    sget v3, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_1:I

    if-eq v1, v3, :cond_c

    sget v3, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_2:I

    if-eq v1, v3, :cond_c

    .line 891
    sget v3, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_3:I

    if-eq v1, v3, :cond_c

    sget v3, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_4:I

    if-eq v1, v3, :cond_c

    .line 892
    sget v3, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_5:I

    if-eq v1, v3, :cond_c

    sget v3, Lcom/pantech/app/vegacamera/R$id;->setting_dragndrop_button_6:I

    if-ne v1, v3, :cond_e

    .line 893
    :cond_c
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 894
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 895
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_d

    .line 896
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mDragnDropList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "index"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 897
    .local v2, j:I
    new-instance v3, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    .line 898
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    const-string v4, "type_entry_only"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->setsDialogStyle(Ljava/lang/String;)V

    .line 899
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->Initialize(Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;)V

    .line 900
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    invoke-virtual {v3, p0}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;)V

    .line 901
    invoke-virtual {p0, v6}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->setAlpha(F)V

    .line 894
    .end local v2           #j:I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 905
    .end local v0           #i:I
    :cond_e
    sget v3, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_1:I

    if-eq v1, v3, :cond_f

    sget v3, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_2:I

    if-eq v1, v3, :cond_f

    sget v3, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_3:I

    if-eq v1, v3, :cond_f

    .line 906
    sget v3, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_4:I

    if-eq v1, v3, :cond_f

    sget v3, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_5:I

    if-eq v1, v3, :cond_f

    sget v3, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_6:I

    if-eq v1, v3, :cond_f

    .line 907
    sget v3, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_7:I

    if-eq v1, v3, :cond_f

    sget v3, Lcom/pantech/app/vegacamera/R$id;->setting_toggle_button_8:I

    if-ne v1, v3, :cond_11

    .line 908
    :cond_f
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 909
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 910
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_10

    .line 911
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "index"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 912
    .restart local v2       #j:I
    invoke-direct {p0, v2, v1}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_SetToggleIndex(II)V

    .line 909
    .end local v2           #j:I
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 916
    .end local v0           #i:I
    :cond_11
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_RESET:I

    if-ne v1, v3, :cond_12

    .line 917
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->showAlertDialog()V

    goto/16 :goto_1

    .line 918
    :cond_12
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_STORAGE_LOCATION:I

    if-eq v1, v3, :cond_13

    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_STORAGE_LOCATION_NORMAL:I

    if-ne v1, v3, :cond_14

    .line 919
    :cond_13
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->gotoBrowser()V

    goto/16 :goto_1

    .line 920
    :cond_14
    sget v3, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_GEO_TAG_NORMAL:I

    if-ne v1, v3, :cond_2

    .line 921
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iGPSInfo:I

    sget v4, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->ID_GEO_TAG_NORMAL:I

    invoke-direct {p0, v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_SetToggleIndex(II)V

    goto/16 :goto_1
.end method

.method public onConfirmDialogDismissed()V
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 967
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 969
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_SetCurrPosition(I)V

    .line 970
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 1279
    invoke-super {p0}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->onFinishInflate()V

    .line 1280
    const-string v0, "SettingsGroup"

    const-string v1, "[MenuController] SettingsGroup :: onFinishInflate()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1306
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iEV:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iEV:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iEV:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iEV:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    .line 1310
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v0

    .line 1309
    invoke-interface {v1, v2, v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1319
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1324
    return-void
.end method

.method public setOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 1285
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setOrientation(I)V

    .line 1287
    sput p1, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->iOrinetation:I

    .line 1289
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1290
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 1296
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    if-eqz v3, :cond_0

    .line 1297
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mPopupDialog:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    invoke-virtual {v3, p1}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->setOrientation(I)V

    .line 1299
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v3, :cond_1

    .line 1300
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v3, p1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setOrientation(I)V

    .line 1302
    :cond_1
    return-void

    .line 1291
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 1292
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v2, :cond_3

    .line 1293
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3, p1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->SetOrientation(I)V

    .line 1290
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
