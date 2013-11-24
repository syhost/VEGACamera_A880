.class public Lcom/pantech/app/vegacamera/controller/LayoutControl;
.super Lcom/pantech/app/vegacamera/operator/ICameraOperator;
.source "LayoutControl.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/ILayoutControl;
.implements Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;
.implements Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;
.implements Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;
.implements Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
.implements Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;
.implements Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;
.implements Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer$VRListener;
.implements Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtractListener;
.implements Lcom/pantech/app/vegacamera/controller/BackTouchContainer$BackTouchListener;
.implements Lcom/pantech/app/vegacamera/controller/AsmContainer$AsmListener;
.implements Lcom/pantech/app/vegacamera/controller/TextContainer$TextListener;
.implements Lcom/pantech/app/vegacamera/controller/TimelapseContainer$TimelapseListener;
.implements Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;
.implements Lcom/pantech/app/vegacamera/ui/CameraTips$Listener;


# static fields
.field protected static final BUTTON_MAIN_SHUTTER:I = 0x1f

.field protected static final BUTTON_PANORAMA_SHUTTER:I = 0x23

.field protected static final BUTTON_RECORD_CAPTURE:I = 0x27

.field protected static final BUTTON_RECORD_STOP_SHUTTER:I = 0x26

.field protected static final BUTTON_REMOTE_SHUTTER:I = 0x21

.field protected static final BUTTON_SELF_SHUTTER:I = 0x22

.field protected static final BUTTON_SMARTCOVER_SHUTTER:I = 0x24

.field protected static final BUTTON_SUB_SHUTTER:I = 0x20

.field protected static final BUTTON_VIDEO_SHUTTER:I = 0x25

#the value of this static final field might be set in the static constructor
.field public static final IDS_CAMERA_SWITCH_MENU_ITEM:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final IDS_EFFECTS_GROUP_MENU_ITEM:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final IDS_FLASH_MENU_ITEM:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final IDS_MODES_GROUP_MENU_ITEM:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final IDS_SETTINGS_GROUP_MENU_ITEM:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_GRID_VIEW:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_INDICATOR_GPS:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_INDICATOR_LOCAL_VOICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_INDICATOR_PICTURE_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_INDICATOR_TIMER:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_INFORMATION_AREA:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_LAYOUT_CONTROL_BAR:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_LAYOUT_INFORMATION_AREA:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_LAYOUT_PANORAMA_SHUTTER:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_LAYOUT_PHOTO_SHUTTER:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_LAYOUT_RECORD_INFO:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_LAYOUT_RECORD_INFO_RECT:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_LAYOUT_RECORD_STOP_SHUTTER:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_LAYOUT_REMOTE_NFC_HELP:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_LAYOUT_REMOTE_SHUTTER:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_LAYOUT_REMOTE_TIPS:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_LAYOUT_SELF_SHUTTER:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_LAYOUT_SMARTCOVER_SHUTTER:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_LAYOUT_VIDEO_SHUTTER:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_MAIN_SHUTTER:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ID_MENU_CONTROL_LAYOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_PANORAMA_SHUTTER:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_RECORDING_MMS_ICON:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_RECORDING_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_RECORDING_TIME:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_RECORD_CAPTURE:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_RECORD_STOP_SHUTTER:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_REMOTE_SHUTTER:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_REMOTE_TIPS:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_SELF_SHUTTER:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_SELF_TUTORIAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_SMARTCOVER_SHUTTER:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_SUB_SHUTTER:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_THUMBNAIL_FRAME:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_THUMBNAIL_VIEW:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_THUMBNAIL_VIEW_G:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final ID_VIDEO_SHUTTER:I = 0x0

.field protected static final LAYOUT_CONTROL_BAR:I = 0x1

.field protected static final LAYOUT_GRID:I = 0xa

.field protected static final LAYOUT_PANORAMA_SHUTTER:I = 0x5

.field protected static final LAYOUT_PHOTO_SHUTTER:I = 0x2

.field protected static final LAYOUT_RECORD_STOP_SHUTTER:I = 0x8

.field protected static final LAYOUT_REMOTE_NFC_HELP:I = 0x9

.field protected static final LAYOUT_REMOTE_SHUTTER:I = 0x3

.field protected static final LAYOUT_REMOTE_TIPS:I = 0xb

.field protected static final LAYOUT_SELF_SHUTTER:I = 0x4

.field protected static final LAYOUT_SMARTCOVER_SHUTTER:I = 0x6

.field protected static final LAYOUT_VIDEO_SHUTTER:I = 0x7

.field protected static final OBJECT_ASM_CONTAINER:I = 0x1a

.field protected static final OBJECT_BACK_TOUCH:I = 0x19

.field protected static final OBJECT_COLOR_EXTRACT_CONTAINER:I = 0x16

.field protected static final OBJECT_FACE_EFFECT_CONTAINER:I = 0x18

.field protected static final OBJECT_FOCUS_CONTAINER:I = 0x12

.field protected static final OBJECT_INFORMATION_AREA:I = 0xf

.field protected static final OBJECT_MENU_CONTAINER:I = 0x10

.field protected static final OBJECT_RECORD_INFO:I = 0x15

.field protected static final OBJECT_REMOTE_NFC_HELP:I = 0x17

.field protected static final OBJECT_SHARPNESS_CONTAINER:I = 0x1d

.field protected static final OBJECT_TEXT_CONTAINER:I = 0x1b

.field protected static final OBJECT_TIMELAPSE_CONTAINER:I = 0x1c

.field protected static final OBJECT_TIMER_SHOT:I = 0x13

.field protected static final OBJECT_VOICE_RECOGNITION:I = 0x14

.field protected static final OBJECT_ZOOM_CONTAINER:I = 0x11

.field protected static final ONCLICK_INFORMATION_AREA:I = 0x29

.field protected static final ONCLICK_THUMBNAIL_VIEW:I = 0x28

.field protected static final ONCLICK_TIPS_VIEW:I = 0x2a

#the value of this static final field might be set in the static constructor
.field protected static final RESOURCE_INDICATOR_GPS_ING:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final RESOURCE_INDICATOR_GPS_OFF:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final RESOURCE_INDICATOR_GPS_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final RESOURCE_PANORAMA_SHUTTER_CAPTURE:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final RESOURCE_PANORAMA_SHUTTER_PREVIEW:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final RESOURCE_TEXT_WAIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LayoutControl"


# instance fields
.field protected ObjAsmContainer:Ljava/lang/Object;

.field protected ObjBackTouch:Ljava/lang/Object;

.field protected ObjColorExtractCtlBar:Ljava/lang/Object;

.field protected ObjControlBar:Ljava/lang/Object;

.field protected ObjFaceDistortCtlBar:Ljava/lang/Object;

.field protected ObjFocusContainer:Ljava/lang/Object;

.field protected ObjGrid:Ljava/lang/Object;

.field protected ObjInfomationArea:Ljava/lang/Object;

.field protected ObjMenuContainer:Ljava/lang/Object;

.field protected ObjNfcHelpLayout:Ljava/lang/Object;

.field protected ObjPanoramaShutter:Ljava/lang/Object;

.field protected ObjPhotoShutter:Ljava/lang/Object;

.field protected ObjRecordCapture:Ljava/lang/Object;

.field protected ObjRecordInfo:Ljava/lang/Object;

.field protected ObjRecordStopShutter:Ljava/lang/Object;

.field protected ObjRemoteShutter:Ljava/lang/Object;

.field protected ObjRemoteTips:Ljava/lang/Object;

.field protected ObjRemoteTipsLayout:Ljava/lang/Object;

.field protected ObjSelfShutter:Ljava/lang/Object;

.field protected ObjSmartCoverShutter:Ljava/lang/Object;

.field protected ObjTextContainer:Ljava/lang/Object;

.field protected ObjTimelapseContainer:Ljava/lang/Object;

.field protected ObjTimerShot:Ljava/lang/Object;

.field protected ObjVideoShutter:Ljava/lang/Object;

.field protected ObjVoiceRecog:Ljava/lang/Object;

.field protected ObjZoomCtlBar:Ljava/lang/Object;

.field protected bIsGoingToQuickView:Z

.field private bIsLongkeyTracking:Z

.field protected iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

.field private iOrientation:I

.field mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

.field mAppData:Lcom/pantech/app/vegacamera/data/AppData;

.field private mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

.field private mCameraTipsStub:Landroid/view/ViewStub;

.field private mColorExtractCtlHandler:Landroid/os/Handler;

.field private mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

.field mMapBuy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mModuleRootView:Landroid/view/View;

.field private mObjColorExtractCtlRunnable:Ljava/lang/Runnable;

.field protected mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

.field private mRecordingMmsIcon:Landroid/widget/ImageView;

.field private mRecordingSizeView:Landroid/widget/TextView;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field protected mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    sget v0, Lcom/pantech/app/vegacamera/R$id;->control_bar_l:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_CONTROL_BAR:I

    .line 112
    sget v0, Lcom/pantech/app/vegacamera/R$id;->information_area_l:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_INFORMATION_AREA:I

    .line 113
    sget v0, Lcom/pantech/app/vegacamera/R$id;->photo_shutter_l:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_PHOTO_SHUTTER:I

    .line 114
    sget v0, Lcom/pantech/app/vegacamera/R$id;->selfshot_l:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_SELF_SHUTTER:I

    .line 115
    sget v0, Lcom/pantech/app/vegacamera/R$id;->remote_shutter_l:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_REMOTE_SHUTTER:I

    .line 116
    sget v0, Lcom/pantech/app/vegacamera/R$id;->panorama_shutter_l:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_PANORAMA_SHUTTER:I

    .line 117
    sget v0, Lcom/pantech/app/vegacamera/R$id;->smartcover_shutter_l:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_SMARTCOVER_SHUTTER:I

    .line 118
    sget v0, Lcom/pantech/app/vegacamera/R$id;->video_shutter_l:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_VIDEO_SHUTTER:I

    .line 119
    sget v0, Lcom/pantech/app/vegacamera/R$id;->record_stop_shutter_l:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_RECORD_STOP_SHUTTER:I

    .line 120
    sget v0, Lcom/pantech/app/vegacamera/R$id;->record_info_l:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_RECORD_INFO:I

    .line 121
    sget v0, Lcom/pantech/app/vegacamera/R$id;->recording_info_rect:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_RECORD_INFO_RECT:I

    .line 122
    sget v0, Lcom/pantech/app/vegacamera/R$id;->nfc_confirm_help:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_REMOTE_NFC_HELP:I

    .line 123
    sget v0, Lcom/pantech/app/vegacamera/R$id;->grid_v:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_GRID_VIEW:I

    .line 124
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tips_l:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_REMOTE_TIPS:I

    .line 127
    sget v0, Lcom/pantech/app/vegacamera/R$id;->main_shutter_button:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_MAIN_SHUTTER:I

    .line 128
    sget v0, Lcom/pantech/app/vegacamera/R$id;->sub_shutter_button:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_SUB_SHUTTER:I

    .line 129
    sget v0, Lcom/pantech/app/vegacamera/R$id;->self_button:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_SELF_SHUTTER:I

    .line 130
    sget v0, Lcom/pantech/app/vegacamera/R$id;->selfguide:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_SELF_TUTORIAL:I

    .line 131
    sget v0, Lcom/pantech/app/vegacamera/R$id;->remote_shutter_button:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_REMOTE_SHUTTER:I

    .line 132
    sget v0, Lcom/pantech/app/vegacamera/R$id;->panorama_shutter_button:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_PANORAMA_SHUTTER:I

    .line 133
    sget v0, Lcom/pantech/app/vegacamera/R$id;->smartcover_shutter_button:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_SMARTCOVER_SHUTTER:I

    .line 134
    sget v0, Lcom/pantech/app/vegacamera/R$id;->video_shutter_button:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_VIDEO_SHUTTER:I

    .line 135
    sget v0, Lcom/pantech/app/vegacamera/R$id;->record_stop_shutter_button:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_RECORD_STOP_SHUTTER:I

    .line 136
    sget v0, Lcom/pantech/app/vegacamera/R$id;->record_capture_button:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_RECORD_CAPTURE:I

    .line 137
    sget v0, Lcom/pantech/app/vegacamera/R$id;->thumbnail_view_g:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_THUMBNAIL_VIEW_G:I

    .line 138
    sget v0, Lcom/pantech/app/vegacamera/R$id;->thumbnail_view:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_THUMBNAIL_VIEW:I

    .line 139
    sget v0, Lcom/pantech/app/vegacamera/R$id;->thumbnail_frame:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_THUMBNAIL_FRAME:I

    .line 140
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tips_view:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_REMOTE_TIPS:I

    .line 142
    sget v0, Lcom/pantech/app/vegacamera/R$id;->information_area_g:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_INFORMATION_AREA:I

    .line 143
    sget v0, Lcom/pantech/app/vegacamera/R$id;->timer_indicator:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_INDICATOR_TIMER:I

    .line 144
    sget v0, Lcom/pantech/app/vegacamera/R$id;->local_voice_indicator:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_INDICATOR_LOCAL_VOICE:I

    .line 145
    sget v0, Lcom/pantech/app/vegacamera/R$id;->gps_indicator:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_INDICATOR_GPS:I

    .line 146
    sget v0, Lcom/pantech/app/vegacamera/R$id;->picture_size_indicator:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_INDICATOR_PICTURE_SIZE:I

    .line 148
    sget v0, Lcom/pantech/app/vegacamera/R$id;->recording_time:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_RECORDING_TIME:I

    .line 149
    sget v0, Lcom/pantech/app/vegacamera/R$id;->recording_size:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_RECORDING_SIZE:I

    .line 150
    sget v0, Lcom/pantech/app/vegacamera/R$id;->mms_icon:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_RECORDING_MMS_ICON:I

    .line 153
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->camera_icon_camera_shoot:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->RESOURCE_PANORAMA_SHUTTER_PREVIEW:I

    .line 154
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->camera_icon_cam_stop:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->RESOURCE_PANORAMA_SHUTTER_CAPTURE:I

    .line 155
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->indicator_geotag:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->RESOURCE_INDICATOR_GPS_ON:I

    .line 156
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->indicator_geotag_dim:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->RESOURCE_INDICATOR_GPS_OFF:I

    .line 157
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->indicator_geotag:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->RESOURCE_INDICATOR_GPS_ING:I

    .line 160
    sget v0, Lcom/pantech/app/vegacamera/R$string;->wait:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->RESOURCE_TEXT_WAIT:I

    .line 163
    sget v0, Lcom/pantech/app/vegacamera/R$id;->flash_menu_button:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_FLASH_MENU_ITEM:I

    .line 164
    sget v0, Lcom/pantech/app/vegacamera/R$id;->camera_switch_menu_button:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_CAMERA_SWITCH_MENU_ITEM:I

    .line 165
    sget v0, Lcom/pantech/app/vegacamera/R$id;->effects_menu_button:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_EFFECTS_GROUP_MENU_ITEM:I

    .line 166
    sget v0, Lcom/pantech/app/vegacamera/R$id;->modes_menu_button:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_MODES_GROUP_MENU_ITEM:I

    .line 167
    sget v0, Lcom/pantech/app/vegacamera/R$id;->settings_menu_button:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_SETTINGS_GROUP_MENU_ITEM:I

    .line 170
    sget v0, Lcom/pantech/app/vegacamera/R$id;->menu_control_layout:I

    sput v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_MENU_CONTROL_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 3
    .parameter "act"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/operator/ICameraOperator;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    .line 173
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 174
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 175
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mModuleRootView:Landroid/view/View;

    .line 176
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    .line 178
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 179
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    .line 180
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjSelfShutter:Ljava/lang/Object;

    .line 181
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjRemoteShutter:Ljava/lang/Object;

    .line 182
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjPanoramaShutter:Ljava/lang/Object;

    .line 183
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjSmartCoverShutter:Ljava/lang/Object;

    .line 184
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjVideoShutter:Ljava/lang/Object;

    .line 185
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjRecordStopShutter:Ljava/lang/Object;

    .line 186
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjRecordCapture:Ljava/lang/Object;

    .line 187
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 188
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 189
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 190
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 191
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimerShot:Ljava/lang/Object;

    .line 192
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 193
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 194
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjNfcHelpLayout:Ljava/lang/Object;

    .line 195
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjRecordInfo:Ljava/lang/Object;

    .line 196
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjColorExtractCtlBar:Ljava/lang/Object;

    .line 197
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFaceDistortCtlBar:Ljava/lang/Object;

    .line 198
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 199
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjAsmContainer:Ljava/lang/Object;

    .line 200
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTextContainer:Ljava/lang/Object;

    .line 201
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjRemoteTips:Ljava/lang/Object;

    .line 202
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjRemoteTipsLayout:Ljava/lang/Object;

    .line 203
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimelapseContainer:Ljava/lang/Object;

    .line 205
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    .line 208
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    .line 209
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 211
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingTimeView:Landroid/widget/TextView;

    .line 212
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingSizeView:Landroid/widget/TextView;

    .line 213
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingMmsIcon:Landroid/widget/ImageView;

    .line 215
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->bIsLongkeyTracking:Z

    .line 216
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOrientation:I

    .line 218
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mColorExtractCtlHandler:Landroid/os/Handler;

    .line 220
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    .line 221
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTipsStub:Landroid/view/ViewStub;

    .line 223
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->bIsGoingToQuickView:Z

    .line 2124
    new-instance v0, Lcom/pantech/app/vegacamera/controller/LayoutControl$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl$1;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mObjColorExtractCtlRunnable:Ljava/lang/Runnable;

    .line 226
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 227
    return-void
.end method

.method private _ClearListenerClickAble()V
    .locals 4

    .prologue
    .line 573
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    return-void

    .line 573
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 574
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    goto :goto_0
.end method

.method private _ConvertCameraId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1290
    const-string v0, "pref_camera_id_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1291
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1292
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1293
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 1294
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;->OnCameraSwitched(I)V

    .line 1298
    :cond_0
    return-void
.end method

.method private _ConvertEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    const/16 v4, 0x18

    const/4 v3, 0x1

    .line 1301
    const-string v0, "LayoutControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_ConvertEffect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const-string v0, "pref_effect_none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_effect_water_color_pencil"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1304
    const-string v0, "pref_effect_cartoon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_effect_poster_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1305
    const-string v0, "pref_effect_poster_b_n_w"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_effect_dot_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1306
    const-string v0, "pref_effect_dot_b_n_w"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_effect_neon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1307
    const-string v0, "pref_effect_embossing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v4, v3}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(IZ)V

    .line 1309
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_IPL_EFFECT:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    .line 1318
    :cond_1
    :goto_0
    return-void

    .line 1310
    :cond_2
    const-string v0, "pref_effect_color_mono"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_effect_color_sepia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1311
    const-string v0, "pref_effect_color_aqua"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1312
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v4, v3}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(IZ)V

    .line 1313
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_COLOR_EFFECT:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    goto :goto_0

    .line 1314
    :cond_4
    const-string v0, "pref_effect_color_extraction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v4, v3}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(IZ)V

    .line 1316
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_COLOR_EXTRACT:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    goto :goto_0
.end method

.method private _ConvertFlashParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1283
    const-string v0, "pref_flash_mode_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_flash_mode_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_FLASH:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    .line 1286
    :cond_1
    return-void
.end method

.method private _ConvertShotMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1322
    const-string v0, "pref_mode_normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1324
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1325
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 1326
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;->OnShotModeChanged(I)V

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1329
    :cond_1
    const-string v0, "pref_mode_intelligent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1330
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1331
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1332
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 1333
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;->OnShotModeChanged(I)V

    goto :goto_0

    .line 1336
    :cond_2
    const-string v0, "pref_mode_best_face"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1337
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1338
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1339
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 1340
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;->OnShotModeChanged(I)V

    goto :goto_0

    .line 1343
    :cond_3
    const-string v0, "pref_mode_remote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1344
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1345
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1346
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 1347
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;->OnShotModeChanged(I)V

    goto :goto_0

    .line 1350
    :cond_4
    const-string v0, "pref_mode_self"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1351
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1352
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1353
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 1354
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;->OnShotModeChanged(I)V

    goto :goto_0

    .line 1357
    :cond_5
    const-string v0, "pref_mode_hdr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1358
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1359
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1360
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 1361
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;->OnShotModeChanged(I)V

    goto/16 :goto_0

    .line 1364
    :cond_6
    const-string v0, "pref_mode_beauty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1365
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1366
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1367
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 1368
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;->OnShotModeChanged(I)V

    goto/16 :goto_0

    .line 1371
    :cond_7
    const-string v0, "pref_mode_text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1372
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1373
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1374
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 1375
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;->OnShotModeChanged(I)V

    goto/16 :goto_0

    .line 1378
    :cond_8
    const-string v0, "pref_mode_panorama"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1379
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1380
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1381
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 1382
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;->OnShotModeChanged(I)V

    goto/16 :goto_0

    .line 1385
    :cond_9
    const-string v0, "pref_mode_video_timelapse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1386
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1387
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1388
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 1389
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;->OnShotModeChanged(I)V

    goto/16 :goto_0

    .line 1392
    :cond_a
    const-string v0, "pref_mode_face_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1394
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1395
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 1396
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;->OnShotModeChanged(I)V

    goto/16 :goto_0
.end method

.method private _CreateInstance()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    .line 241
    :cond_0
    return-void
.end method

.method private _FaceContainerSetOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 2761
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFaceDistortCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2762
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->SetOrientation(I)V

    .line 2764
    :cond_0
    return-void
.end method

.method private _FaceEffectClosePopup()V
    .locals 2

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFaceDistortCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2756
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_CloseSubPopup()V

    .line 2758
    :cond_0
    return-void
.end method

.method private _FaceEffectPopupIsActive()Z
    .locals 2

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFaceDistortCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2749
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->isbIsSubPopupActive()Z

    move-result v0

    .line 2751
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _FocusContainerSetOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1686
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->SetOrientation(I)V

    .line 1688
    :cond_0
    return-void
.end method

.method private _GotoGallery()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->GotoGallery()V

    .line 747
    return-void
.end method

.method private _GpsRotateDialogSetOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2896
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setOrientation(I)V

    .line 2898
    :cond_0
    return-void
.end method

.method private _IncludeLayout()V
    .locals 4

    .prologue
    .line 2313
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mModuleRootView:Landroid/view/View;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2314
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_LayoutArray()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 2315
    const-string v2, "LayoutControl"

    const-string v3, "[LayoutControl] must be set layout array"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    :cond_0
    return-void

    .line 2317
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_LayoutArray()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2319
    .local v1, ta:Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2320
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_InflateLayout(I)V

    .line 2319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _InflateLayout(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mModuleRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2307
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->module_layout:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mModuleRootView:Landroid/view/View;

    .line 2309
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mModuleRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2310
    return-void
.end method

.method private _IsOnPreview(II)Z
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2828
    const-string v9, "LayoutControl"

    const-string v10, "_IsOnPreview"

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    iget-object v9, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v9, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/Camera;->GetCameraScreenNail()Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    move-result-object v6

    .line 2830
    .local v6, sn:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getPreviewAreaHeight()I

    move-result v9

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getPreviewAreaWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2831
    .local v8, snWidth:I
    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getPreviewAreaHeight()I

    move-result v9

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getPreviewAreaWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2832
    .local v7, snHeight:I
    iget-object v9, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v9}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceHeight(Landroid/content/Context;)I

    move-result v0

    .line 2833
    .local v0, deviceHeight:I
    iget-object v9, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v9}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceWidth(Landroid/content/Context;)I

    move-result v1

    .line 2835
    .local v1, deviceWidth:I
    sub-int v9, v1, v8

    div-int/lit8 v3, v9, 0x2

    .line 2836
    .local v3, previewLeft:I
    sub-int v4, v1, v3

    .line 2837
    .local v4, previewRight:I
    sub-int v9, v0, v7

    div-int/lit8 v2, v9, 0x2

    .line 2838
    .local v2, previewBottom:I
    sub-int v5, v0, v2

    .line 2840
    .local v5, previewTop:I
    if-lt p1, v3, :cond_0

    if-gt p1, v4, :cond_0

    if-lt p2, v2, :cond_0

    if-gt p2, v5, :cond_0

    .line 2842
    const/4 v9, 0x1

    .line 2844
    :goto_0
    return v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private _IsOnPreviewExceptControl(II)Z
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2849
    const-string v11, "LayoutControl"

    const-string v12, "_IsOnPreviewFocusLock"

    invoke-static {v11, v12}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    iget-object v11, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v11, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/Camera;->GetCameraScreenNail()Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    move-result-object v8

    .line 2851
    .local v8, sn:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getPreviewAreaHeight()I

    move-result v11

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getPreviewAreaWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2852
    .local v10, snWidth:I
    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getPreviewAreaHeight()I

    move-result v11

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getPreviewAreaWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2853
    .local v9, snHeight:I
    iget-object v11, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v11}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceHeight(Landroid/content/Context;)I

    move-result v0

    .line 2854
    .local v0, deviceHeight:I
    iget-object v11, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v11}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceWidth(Landroid/content/Context;)I

    move-result v1

    .line 2856
    .local v1, deviceWidth:I
    const/4 v4, 0x0

    .line 2857
    .local v4, previewLeft:I
    const/4 v5, 0x0

    .line 2858
    .local v5, previewRight:I
    const/4 v3, 0x0

    .line 2859
    .local v3, previewBottom:I
    const/4 v6, 0x0

    .line 2861
    .local v6, previewTop:I
    if-ne v10, v1, :cond_0

    .line 2862
    iget-object v11, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_width:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v2, v11

    .line 2863
    .local v2, leftMargin:I
    iget-object v11, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/pantech/app/vegacamera/R$dimen;->main_shutter_button_width:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    .line 2865
    .local v7, rightMargin:I
    move v4, v2

    .line 2866
    sub-int v5, v1, v7

    .line 2867
    sub-int v11, v0, v9

    div-int/lit8 v3, v11, 0x2

    .line 2868
    sub-int v6, v0, v3

    .line 2876
    .end local v2           #leftMargin:I
    .end local v7           #rightMargin:I
    :goto_0
    if-lt p1, v4, :cond_1

    if-gt p1, v5, :cond_1

    if-lt p2, v3, :cond_1

    if-gt p2, v6, :cond_1

    .line 2878
    const/4 v11, 0x1

    .line 2880
    :goto_1
    return v11

    .line 2870
    :cond_0
    sub-int v11, v1, v10

    div-int/lit8 v4, v11, 0x2

    .line 2871
    sub-int v5, v1, v4

    .line 2872
    sub-int v11, v0, v9

    div-int/lit8 v3, v11, 0x2

    .line 2873
    sub-int v6, v0, v3

    goto :goto_0

    .line 2880
    :cond_1
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private _LayoutControlRelease()V
    .locals 5

    .prologue
    .line 257
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 402
    return-void

    .line 257
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 260
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 263
    :pswitch_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ControlBarRelease()V

    goto :goto_0

    .line 270
    :pswitch_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->Release()V

    goto :goto_0

    .line 276
    :pswitch_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->Release()V

    goto :goto_0

    .line 282
    :pswitch_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->Release()V

    goto/16 :goto_0

    .line 288
    :pswitch_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->Release()V

    goto/16 :goto_0

    .line 294
    :pswitch_7
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/TimerShot;->Release()V

    goto/16 :goto_0

    .line 300
    :pswitch_8
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;->Release()V

    goto/16 :goto_0

    .line 306
    :pswitch_9
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_RecordInfoRelease()V

    goto/16 :goto_0

    .line 310
    :pswitch_a
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->Release()V

    goto/16 :goto_0

    .line 316
    :pswitch_b
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->Release()V

    goto/16 :goto_0

    .line 322
    :pswitch_c
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/TextContainer;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/TextContainer;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/TextContainer;->Release()V

    goto/16 :goto_0

    .line 328
    :pswitch_d
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;->Release()V

    goto/16 :goto_0

    .line 334
    :pswitch_e
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->Release()V

    goto/16 :goto_0

    .line 343
    :pswitch_f
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->Release()V

    goto/16 :goto_0

    .line 349
    :pswitch_10
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->Release()V

    goto/16 :goto_0

    .line 355
    :pswitch_11
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->Release()V

    goto/16 :goto_0

    .line 361
    :pswitch_12
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->Release()V

    goto/16 :goto_0

    .line 367
    :pswitch_13
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->Release()V

    goto/16 :goto_0

    .line 373
    :pswitch_14
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->Release()V

    goto/16 :goto_0

    .line 379
    :pswitch_15
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->Release()V

    goto/16 :goto_0

    .line 385
    :pswitch_16
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->Release()V

    goto/16 :goto_0

    .line 391
    :pswitch_17
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 392
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->Release()V

    .line 396
    :cond_2
    :pswitch_18
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ControlBarRemoteTipsRelease()V

    goto/16 :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_e
        :pswitch_1
        :pswitch_c
        :pswitch_d
        :pswitch_1
        :pswitch_1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_1
        :pswitch_1
        :pswitch_18
    .end packed-switch
.end method

.method private _MainShutterButtonInit()V
    .locals 3

    .prologue
    const/16 v2, 0x1f

    .line 795
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 796
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 797
    return-void
.end method

.method private _MenuContainerCloseSubDepth()V
    .locals 2

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->CloseSubDepth()V

    .line 1269
    :cond_0
    return-void
.end method

.method private _MenuContainerDepthAct()Z
    .locals 2

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->DepthAct()Z

    move-result v0

    .line 1243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _MenuContainerDisableButton(I)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->DisableMenuItemButton(I)V

    .line 1222
    :cond_0
    return-void
.end method

.method private _MenuContainerEnableButton(I)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->EnableMenuItemButton(I)V

    .line 1216
    :cond_0
    return-void
.end method

.method private _MenuContainerSetOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1234
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOrientation:I

    .line 1235
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->SetOrientation(I)V

    .line 1237
    :cond_0
    return-void
.end method

.method private _MenuContainerSubDepthAct()Z
    .locals 2

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->SubDepthAct()Z

    move-result v0

    .line 1250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _MenuConvertHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ConvertFlashParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ConvertCameraId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ConvertEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ConvertShotMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ConvertSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    :cond_0
    return-void
.end method

.method private _ModeMenuSubItemChangeHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1405
    const-string v0, "pref_mode_intelligent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1407
    const-string v0, "pref_mode_text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_TEXT:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    const-string v0, "pref_mode_face_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {p2}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_SetFaceMode(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetParameter(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private _NoteDialogSetOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    const/16 v2, 0x14

    .line 2260
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2261
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->setOrientation(I)V

    .line 2262
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->RotateNoteDialog()V

    .line 2264
    :cond_0
    return-void
.end method

.method private _ReleaseInstance()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    .line 245
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 246
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->remove()V

    .line 248
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTipsStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 251
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTipsStub:Landroid/view/ViewStub;

    .line 253
    :cond_1
    return-void
.end method

.method private _RotateControlSetDegree(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2252
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->setDegree(I)V

    .line 2254
    :cond_0
    return-void
.end method

.method private _SubShutterButtonInit()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x20

    const/4 v3, 0x1

    .line 800
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    .line 801
    .local v0, currentMode:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 802
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 803
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 804
    if-eq v0, v5, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 805
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_SUB_SHUTTER:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 806
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 810
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 811
    return-void

    .line 808
    :cond_1
    invoke-virtual {p0, v4, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    goto :goto_0
.end method

.method private _TextContainerSetOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTextContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2790
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TextContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/TextContainer;->SetOrientation(I)V

    .line 2792
    :cond_0
    return-void
.end method

.method private _TextEffectClosePopup()V
    .locals 2

    .prologue
    .line 2783
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTextContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2784
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TextContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TextContainer;->_CloseSubPopup()V

    .line 2786
    :cond_0
    return-void
.end method

.method private _TextEffectPopupIsActive()Z
    .locals 2

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTextContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2777
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TextContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TextContainer;->isbIsSubPopupActive()Z

    move-result v0

    .line 2779
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _TimelapseContainerSetOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimelapseContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2817
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;->SetOrientation(I)V

    .line 2819
    :cond_0
    return-void
.end method

.method private _TimelapseEffectClosePopup()V
    .locals 2

    .prologue
    .line 2810
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimelapseContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2811
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;->_CloseSubPopup()V

    .line 2813
    :cond_0
    return-void
.end method

.method private _TimelapseEffectPopupIsActive()Z
    .locals 2

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimelapseContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2804
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;->isbIsSubPopupActive()Z

    move-result v0

    .line 2806
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _TimerShotCancel()V
    .locals 2

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimerShot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->TimerShotCancel()V

    .line 1958
    :cond_0
    return-void
.end method

.method private _ZoomContainerSetZoomIndex(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->SetZoomIndex(I)V

    .line 1541
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/LayoutControl;)Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    return-object v0
.end method


# virtual methods
.method public AutoFocus()V
    .locals 2

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetFocusOperHandler(I)V

    .line 1701
    :cond_0
    return-void
.end method

.method public CancelAutoFocus()V
    .locals 2

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetFocusOperHandler(I)V

    .line 1708
    :cond_0
    return-void
.end method

.method public CancelFocusLock()V
    .locals 3

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetFocusOperHandler(I)V

    .line 1805
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_FOCUS_MODE:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetParameter(J)V

    .line 1807
    :cond_0
    return-void
.end method

.method public Capture()Z
    .locals 1

    .prologue
    .line 1712
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_CaptureOper()V

    .line 1713
    const/4 v0, 0x0

    return v0
.end method

.method public CheckFocusState(I)I
    .locals 5
    .parameter "capturemode"

    .prologue
    const/4 v4, 0x2

    .line 1871
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerGetCurrentFocusState()I

    move-result v0

    .line 1872
    .local v0, mode:I
    const-string v1, "LayoutControl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CheckFocusState() focus mode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " capture mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 1874
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1875
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetFocusData()Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->setFocusDataIsLongPressed(Z)V

    .line 1876
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerFocusStart(I)V

    .line 1885
    :cond_0
    :goto_0
    return v0

    .line 1878
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1879
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->FocusStop(I)V

    goto :goto_0

    .line 1882
    :cond_2
    if-nez v0, :cond_0

    .line 1883
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetFocusOperHandler(I)V

    goto :goto_0
.end method

.method public FaceAmountChangeNotify(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 2738
    const-string v0, "LayoutControl"

    const-string v1, "FaceAmountChangeNotify()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const-string v1, "face_effect_control"

    invoke-interface {v0, v1, p1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetParameter(Ljava/lang/String;I)V

    .line 2740
    return-void
.end method

.method public FaceDetectStart()V
    .locals 2

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1766
    const-string v0, "LayoutControl"

    const-string v1, "[LayoutControl] FaceDetectStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0x21

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetFocusOperHandler(I)V

    .line 1769
    :cond_0
    return-void
.end method

.method public FaceDetectStop()V
    .locals 2

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetFocusOperHandler(I)V

    .line 1778
    :cond_0
    return-void
.end method

.method public FaceEffectKeyChangeNotify(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const-string v1, "pref_mode_face_effect"

    invoke-static {p1}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_SetFaceMode(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetParameter(Ljava/lang/String;I)V

    .line 2745
    return-void
.end method

.method public FocusStart(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1846
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerFocusStart(I)V

    .line 1847
    return-void
.end method

.method public FocusStop(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1851
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerFocusStop(I)V

    .line 1852
    return-void
.end method

.method public GetCurrentOnoffState()Z
    .locals 3

    .prologue
    .line 2041
    const/4 v0, 0x0

    .line 2042
    .local v0, _IsOn:Z
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2043
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;->GetCurrentOnoffState()Z

    move-result v0

    .line 2045
    :cond_0
    return v0
.end method

.method public GetCurrentTriggerState()Z
    .locals 3

    .prologue
    .line 2049
    const/4 v0, 0x0

    .line 2050
    .local v0, _IsPause:Z
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2051
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;->GetCurrentTriggerState()Z

    move-result v0

    .line 2053
    :cond_0
    return v0
.end method

.method public GetFocusMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1811
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerGetFocusMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetFocusState()I
    .locals 1

    .prologue
    .line 1816
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerGetCurrentFocusState()I

    move-result v0

    return v0
.end method

.method public GetRotateControlInstance()Lcom/pantech/app/vegacamera/controller/RotateControl;
    .locals 1

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    return-object v0
.end method

.method public GotoGallery()V
    .locals 0

    .prologue
    .line 2732
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_GotoGallery()V

    .line 2733
    return-void
.end method

.method public Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V
    .locals 1
    .parameter "data"
    .parameter "listener"

    .prologue
    .line 2291
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 2292
    iput-object p2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    .line 2293
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    .line 2296
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_CreateInstance()V

    .line 2297
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_LayoutControlInit()V

    .line 2298
    return-void
.end method

.method public InitFocusParm(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1821
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerInitializeFocusParm(Landroid/hardware/Camera$Parameters;)V

    .line 1822
    return-void
.end method

.method public IsAvailableInteractionFuction()Z
    .locals 2

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsMenuContainerDepthAct()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1722
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->IsShutterTimerActionStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1723
    :cond_0
    const/4 v0, 0x0

    .line 1726
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public IsCameraTipsVisible()Z
    .locals 1

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2433
    const/4 v0, 0x1

    .line 2435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected IsFocusLensSound()Z
    .locals 1

    .prologue
    .line 2824
    const/4 v0, 0x1

    return v0
.end method

.method public IsMenuContainerDepthAct()Z
    .locals 1

    .prologue
    .line 1500
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerDepthAct()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    const/4 v0, 0x1

    .line 1503
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsMenuContainerSubDepthAct()Z
    .locals 1

    .prologue
    .line 1508
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerSubDepthAct()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1509
    const/4 v0, 0x1

    .line 1511
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsTimerShotEnable()Z
    .locals 1

    .prologue
    .line 1904
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_IsTimerShotEnable()Z

    move-result v0

    return v0
.end method

.method public MenuContainerDisableMenuSwitchButton()V
    .locals 1

    .prologue
    .line 1229
    sget v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_CAMERA_SWITCH_MENU_ITEM:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerDisableButton(I)V

    .line 1230
    return-void
.end method

.method public MenuContainerEnableMenuSwitchButton()V
    .locals 1

    .prologue
    .line 1225
    sget v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_CAMERA_SWITCH_MENU_ITEM:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerEnableButton(I)V

    .line 1226
    return-void
.end method

.method public OnBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2455
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsCameraTipsVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2456
    const-string v1, "LayoutControl"

    const-string v2, "OnBackPressed tips visible"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/CameraTips;->OnBackPressed()V

    .line 2469
    :cond_0
    :goto_0
    return v0

    .line 2461
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isShowDialog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2462
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    goto :goto_0

    .line 2466
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ActOnBackPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2469
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public OnBackTouchLongPressed()V
    .locals 1

    .prologue
    .line 2694
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsAvailableInteractionFuction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2699
    :goto_0
    return-void

    .line 2697
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ShowVTouchToast()V

    .line 2698
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SharedCaptureOper()V

    goto :goto_0
.end method

.method public OnCameraTipRemove()V
    .locals 3

    .prologue
    .line 2441
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    if-eqz v0, :cond_0

    .line 2442
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/CameraTips;->setListener(Lcom/pantech/app/vegacamera/ui/CameraTips$Listener;)V

    .line 2446
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-nez v0, :cond_1

    .line 2447
    new-instance v0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 2450
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_GpsRotateDialogShowWaiting()V

    .line 2451
    return-void
.end method

.method public OnFocusRelease()V
    .locals 0

    .prologue
    .line 1866
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerFocusReleased()V

    .line 1867
    return-void
.end method

.method public OnFullScreenChanged(Z)V
    .locals 6
    .parameter "full"

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    const/16 v3, 0x13

    const/4 v2, 0x1

    .line 2648
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_IsTimerShotEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    if-eqz v0, :cond_0

    .line 2649
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->OnFullScreenChanged(Z)V

    .line 2650
    invoke-virtual {p0, v3, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2653
    :cond_0
    if-eqz p1, :cond_3

    .line 2654
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_StartVoiceRecognizer()V

    .line 2656
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->isSaveAfterViewOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2657
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->bIsGoingToQuickView:Z

    if-eqz v0, :cond_1

    .line 2658
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->bIsGoingToQuickView:Z

    .line 2659
    invoke-virtual {p0, v3, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2661
    :cond_1
    invoke-virtual {p0, v5, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2662
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 2671
    :cond_2
    :goto_0
    return-void

    .line 2665
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_StopVoiceRecognizer()V

    .line 2667
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerGetCurrentFocusState()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 2668
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->FocusStop(I)V

    goto :goto_0
.end method

.method public OnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v6, 0x1f

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2474
    sparse-switch p1, :sswitch_data_0

    move v0, v2

    .line 2523
    :goto_0
    return v0

    .line 2477
    :sswitch_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsMenuContainerDepthAct()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 2478
    goto :goto_0

    .line 2480
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 2481
    goto :goto_0

    .line 2483
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eq v0, v5, :cond_3

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsCameraTipsVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2484
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    .line 2485
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->IsShutterTimerActionStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    .line 2486
    goto :goto_0

    .line 2490
    :cond_4
    const-string v0, "LayoutControl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnKeyDown event.getSource() ? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 2492
    goto :goto_0

    .line 2495
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2496
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 2497
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    if-eq v0, v5, :cond_6

    .line 2498
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v0

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v0

    .line 2499
    const-string v3, "pref_setting_continuous_shot"

    const-string v4, "off"

    invoke-virtual {v0, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v1

    .line 2500
    goto/16 :goto_0

    .line 2502
    :cond_7
    invoke-virtual {p0, v6, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2504
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnShutterButtonLongPressed(Z)V

    .line 2505
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 2506
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->bIsLongkeyTracking:Z

    move v0, v1

    .line 2507
    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 2509
    goto/16 :goto_0

    .line 2519
    :sswitch_1
    const-string v0, "LayoutControl"

    const-string v2, "[OnKeyDown] skip music play key during Camera"

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2520
    goto/16 :goto_0

    .line 2474
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method public OnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x3

    const/16 v5, 0x1f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2528
    sparse-switch p1, :sswitch_data_0

    move v0, v2

    .line 2590
    :goto_0
    return v0

    .line 2531
    :sswitch_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsMenuContainerDepthAct()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 2532
    goto :goto_0

    .line 2534
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 2535
    goto :goto_0

    .line 2537
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsOnBurstShot()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2538
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsCameraTipsVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    .line 2539
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->IsShutterTimerActionStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    .line 2540
    goto :goto_0

    .line 2544
    :cond_5
    const-string v0, "LayoutControl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnKeyUp event.getSource() ? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_6

    move v0, v1

    .line 2546
    goto :goto_0

    .line 2549
    :cond_6
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->bIsLongkeyTracking:Z

    if-eqz v0, :cond_8

    .line 2550
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->bIsLongkeyTracking:Z

    .line 2551
    invoke-virtual {p0, v5, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2553
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnShutterButtonLongPressed(Z)V

    :cond_7
    :goto_1
    move v0, v1

    .line 2557
    goto/16 :goto_0

    .line 2554
    :cond_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->isBurstState()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2555
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ShutterButtonClick()V

    goto :goto_1

    .line 2560
    :sswitch_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsMenuContainerDepthAct()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v0, v1

    .line 2561
    goto/16 :goto_0

    .line 2563
    :cond_a
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 2564
    goto/16 :goto_0

    .line 2566
    :cond_b
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eq v0, v4, :cond_c

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsCameraTipsVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    move v0, v1

    .line 2567
    goto/16 :goto_0

    .line 2569
    :cond_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_IsVTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2570
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsAvailableInteractionFuction()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2571
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ShowVTouchToast()V

    .line 2572
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SharedCaptureOper()V

    :cond_e
    move v0, v1

    .line 2576
    goto/16 :goto_0

    .line 2586
    :sswitch_2
    const-string v0, "LayoutControl"

    const-string v2, "[OnKeyUp] skip music play key during Camera"

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2587
    goto/16 :goto_0

    .line 2528
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_2
        0x55 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method public OnLongPress(Landroid/view/View;II)V
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2630
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsMenuContainerDepthAct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2644
    :cond_0
    :goto_0
    return-void

    .line 2633
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2634
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2638
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_IsOnPreviewExceptControl(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2639
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const-string v1, "focus-mode"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, p2, p3}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusData(II)V

    .line 2641
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetFocusData()Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->setFocusDataIsLongPressed(Z)V

    .line 2642
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerFocusStart(I)V

    goto :goto_0
.end method

.method public OnMenuContainerModeMenuSubItemChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1475
    :goto_0
    return-void

    .line 1474
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ModeMenuSubItemChangeHandler(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public OnMenuContainerOneDepthMenuAct(Z)V
    .locals 2
    .parameter "act"

    .prologue
    .line 1483
    if-eqz p1, :cond_0

    .line 1484
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerFocusReleased()V

    .line 1485
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1486
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 1491
    :goto_0
    return-void

    .line 1488
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ActInitLocalLayout()V

    .line 1489
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    goto :goto_0
.end method

.method public OnMenuContainerSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    :goto_0
    return-void

    .line 1466
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuConvertHandler(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public OnMenuContainerTwoDepthMenuAct()V
    .locals 0

    .prologue
    .line 1496
    return-void
.end method

.method public OnOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 2675
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerSetOrientation(I)V

    .line 2676
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerSetOrientation(I)V

    .line 2677
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_RotateControlSetDegree(I)V

    .line 2678
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_NoteDialogSetOrientation(I)V

    .line 2679
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FaceContainerSetOrientation(I)V

    .line 2680
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_TextContainerSetOrientation(I)V

    .line 2681
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_TimelapseContainerSetOrientation(I)V

    .line 2682
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_GpsRotateDialogSetOrientation(I)V

    .line 2683
    return-void
.end method

.method public OnPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .parameter "data"
    .parameter "device"

    .prologue
    .line 2687
    invoke-static {p2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2690
    :cond_0
    return-void
.end method

.method public OnResultVR(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 2059
    return-void
.end method

.method public OnShutterButtonClick(Lcom/pantech/app/vegacamera/controller/ShutterButton;)V
    .locals 3
    .parameter "b"

    .prologue
    const/16 v2, 0x13

    .line 1081
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    .line 1083
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->IsShutterTimerActionStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->isBurstState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1090
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->isSaveAfterViewOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->bIsGoingToQuickView:Z

    if-nez v0, :cond_0

    .line 1094
    :cond_2
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_MAIN_SHUTTER:I

    if-ne v0, v1, :cond_3

    .line 1095
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ShutterButtonClick()V

    goto :goto_0

    .line 1096
    :cond_3
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_SUB_SHUTTER:I

    if-ne v0, v1, :cond_0

    .line 1097
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->getRemainStorageState()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1098
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->ShowDisableToast()V

    goto :goto_0

    .line 1101
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->isBurstState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->CheckTelephonyState(Landroid/app/Activity;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 1106
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1110
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1111
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1112
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 1113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mModuleRootView:Landroid/view/View;

    .line 1114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(I)V

    goto :goto_0
.end method

.method public OnShutterButtonFocus(Lcom/pantech/app/vegacamera/controller/ShutterButton;Z)V
    .locals 3
    .parameter "b"
    .parameter "pressed"

    .prologue
    .line 1063
    const-string v0, "LayoutControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LayoutControl] onShutterButtonFocus(pressed = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    if-eqz p2, :cond_1

    .line 1065
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_MAIN_SHUTTER:I

    if-eq v0, v1, :cond_0

    .line 1067
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_MAIN_SHUTTER:I

    if-eq v0, v1, :cond_0

    .line 1073
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    goto :goto_0
.end method

.method public OnShutterButtonLongPressed(Z)V
    .locals 10
    .parameter "pressed"

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0xf

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 980
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_timershot"

    .line 981
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_timershot_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 980
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, timerShot:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsTimerShotEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 983
    if-nez p1, :cond_0

    .line 984
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ShutterButtonClick()V

    .line 1024
    :goto_0
    return-void

    .line 986
    :cond_0
    const-string v1, "LayoutControl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnShutterButtonLongPressed return timershot "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 991
    :cond_1
    if-eqz p1, :cond_2

    .line 992
    invoke-virtual {p0, v9, v5}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 993
    const/16 v1, 0x29

    invoke-virtual {p0, v1, v5}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 994
    const/16 v1, 0x28

    invoke-virtual {p0, v1, v5}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 995
    const/16 v1, 0x13

    invoke-virtual {p0, v1, v5}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 996
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 997
    invoke-virtual {p0, v6, v7}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 998
    invoke-virtual {p0, v8, v7}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 999
    const/16 v1, 0x11

    invoke-virtual {p0, v1, v7}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1000
    const/16 v1, 0x18

    invoke-virtual {p0, v1, v7}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1001
    const/16 v1, 0x16

    invoke-virtual {p0, v1, v7}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1002
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v1, v6}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->setNeedToSkipFocusSound(Z)V

    .line 1003
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerGetCurrentFocusMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerFocusStop(I)V

    .line 1004
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v1, v5}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->setNeedToSkipFocusSound(Z)V

    .line 1005
    invoke-virtual {p0, v6}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_LongPressedCapture(Z)V

    goto :goto_0

    .line 1007
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerShow()V

    .line 1008
    invoke-virtual {p0, v9, v6}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1009
    const/16 v1, 0x29

    invoke-virtual {p0, v1, v6}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1010
    const/16 v1, 0x28

    invoke-virtual {p0, v1, v6}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1011
    const/16 v1, 0x13

    invoke-virtual {p0, v1, v6}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1012
    invoke-virtual {p0, v6, v5}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1013
    invoke-virtual {p0, v8, v5}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1014
    const/16 v1, 0x11

    invoke-virtual {p0, v1, v5}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1015
    const/16 v1, 0x18

    invoke-virtual {p0, v1, v5}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1016
    const/16 v1, 0x16

    invoke-virtual {p0, v1, v5}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1018
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->isSaveAfterViewOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1019
    const/16 v1, 0x20

    invoke-virtual {p0, v1, v5}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1020
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v1, v5}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 1022
    :cond_3
    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_LongPressedCapture(Z)V

    goto/16 :goto_0
.end method

.method public OnShutterButtonMove(Z)V
    .locals 4
    .parameter "move"

    .prologue
    const/4 v3, 0x0

    .line 1028
    const-string v0, "LayoutControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LayoutControl] OnShutterButtonMove("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    if-nez p1, :cond_0

    .line 1030
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_TimerShotClearIcon()V

    .line 1038
    :goto_0
    return-void

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 1033
    const/16 v0, 0x29

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1034
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1035
    const/16 v0, 0x20

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1036
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    goto :goto_0
.end method

.method public OnShutterButtonTimerShot(ZI)V
    .locals 3
    .parameter "value"
    .parameter "timer"

    .prologue
    .line 1042
    const-string v0, "LayoutControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LayoutControl] OnShutterButtonTimerShot("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    if-ltz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1047
    if-eqz p1, :cond_0

    .line 1048
    invoke-virtual {p0, p2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_TimerShotSetShutterButton(I)V

    .line 1050
    :cond_0
    return-void
.end method

.method public OnShutterTimerActionCanceled()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1054
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 1055
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1056
    const/16 v0, 0x29

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1057
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1058
    const/16 v0, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1059
    return-void
.end method

.method public OnSingleTapUp(Landroid/view/View;II)V
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v2, 0x16

    .line 2595
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2596
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerCloseSubDepth()V

    .line 2626
    :cond_0
    :goto_0
    return-void

    .line 2598
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsMenuContainerDepthAct()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2599
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClosedMenuItem()V

    .line 2600
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerCloseAllDepth()V

    goto :goto_0

    .line 2602
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FaceEffectPopupIsActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2603
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FaceEffectClosePopup()V

    goto :goto_0

    .line 2605
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_TextEffectPopupIsActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2606
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_TextEffectClosePopup()V

    goto :goto_0

    .line 2608
    :cond_4
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_TimelapseEffectPopupIsActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2609
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_TimelapseEffectClosePopup()V

    .line 2612
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2613
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2617
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_IsOnPreview(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2618
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, p2, p3}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusData(II)V

    .line 2619
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerFocusStart(I)V

    .line 2621
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2622
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsColorExtStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2623
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-virtual {v0, v1, p2, p3}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->onSingleTabUp(Lcom/pantech/app/vegacamera/operator/IOperInterface;II)V

    goto/16 :goto_0
.end method

.method public OnStartSmoothZoom(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0x23

    invoke-interface {v0, v1, p1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(II)V

    .line 1555
    :cond_0
    return-void
.end method

.method public OnStopSmoothZoom()V
    .locals 2

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0x24

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(I)V

    .line 1548
    :cond_0
    return-void
.end method

.method public OnTimerShotCancel(Z)V
    .locals 6
    .parameter "forced"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 1992
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 1993
    const-string v0, "LayoutControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnTimerShotCancel TIMER_SHOT_IN_PROGRESS return "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    :goto_0
    return-void

    .line 1996
    :cond_0
    const-string v0, "LayoutControl"

    const-string v1, "OnTimerShotCancel"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_TimerShotClearIcon()V

    .line 1998
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1999
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerShow()V

    .line 2000
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2001
    invoke-virtual {p0, v2, v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 2002
    const/16 v0, 0xf

    invoke-virtual {p0, v0, v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 2003
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 2004
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2005
    const/16 v0, 0x29

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2006
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2007
    invoke-virtual {p0, v3, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2008
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2009
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 2010
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setVisibility(I)V

    .line 2011
    invoke-virtual {p0, v3, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2013
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 2015
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    goto :goto_0
.end method

.method public OnTimerShotEnd()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 1971
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_TimerShotClearIcon()V

    .line 1972
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_CaptureOper()V

    .line 1973
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerShow()V

    .line 1974
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1975
    invoke-virtual {p0, v2, v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1976
    const/16 v0, 0xf

    invoke-virtual {p0, v0, v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1977
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1978
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1979
    const/16 v0, 0x29

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1980
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1981
    invoke-virtual {p0, v3, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1982
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1984
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setVisibility(I)V

    .line 1985
    invoke-virtual {p0, v3, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1987
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 1988
    return-void
.end method

.method public Release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2375
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ReleaseInstance()V

    .line 2376
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    .line 2377
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->SetOperator(Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;)V

    .line 2378
    return-void
.end method

.method public SetChangeZoomInOper()V
    .locals 3

    .prologue
    .line 1570
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    .line 1571
    .local v0, currentMode:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 1572
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v2, 0x27

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(I)V

    .line 1574
    :cond_1
    return-void
.end method

.method public SetChangeZoomOutOper()V
    .locals 3

    .prologue
    .line 1577
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    .line 1578
    .local v0, currentMode:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 1579
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v2, 0x26

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(I)V

    .line 1581
    :cond_1
    return-void
.end method

.method public SetColorExtractionChangeNotify(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2158
    return-void
.end method

.method public SetColorExtractionParameters()V
    .locals 2

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsColorExtStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2149
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsColorExtTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2150
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->setColorExtractionFocus()V

    .line 2153
    :cond_0
    return-void
.end method

.method public SetColorExtractionUpdateMode(Ljava/lang/String;)V
    .locals 4
    .parameter "colorExtractionMode"

    .prologue
    const/16 v2, 0x16

    .line 2135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjColorExtractCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2136
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsColorExtStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->setColorExtractionMode(Ljava/lang/String;)V

    .line 2138
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->updateParmColorExtraction()V

    .line 2144
    :cond_0
    :goto_0
    return-void

    .line 2141
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mColorExtractCtlHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mColorExtractCtlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mObjColorExtractCtlRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public SetExposureParameters()V
    .locals 3

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_AUTO_EXPOSURE:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetParameter(J)V

    .line 1798
    :cond_0
    return-void
.end method

.method public SetFocusDisplayOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 1826
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerSetDisplayOrientation(I)V

    .line 1827
    return-void
.end method

.method public SetFocusIndicatior(I[Landroid/hardware/Camera$Face;)V
    .locals 0
    .parameter "what"
    .parameter "faces"

    .prologue
    .line 1842
    return-void
.end method

.method public SetFocusMirror()V
    .locals 0

    .prologue
    .line 1831
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerSetMirror()V

    .line 1832
    return-void
.end method

.method public SetFocusParameters()V
    .locals 5

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1783
    const-string v0, "LayoutControl"

    const-string v1, "[LayoutControl] SetFocusParameters()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedHardWareISP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1785
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_PREFERENCE:J

    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_AUTO_EXPOSURE:J

    or-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetParameter(J)V

    .line 1791
    :cond_0
    :goto_0
    return-void

    .line 1787
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_PREFERENCE:J

    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_AUTO_EXPOSURE:J

    or-long/2addr v1, v3

    .line 1788
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_FOCUS_MODE:J

    or-long/2addr v1, v3

    .line 1787
    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetParameter(J)V

    goto :goto_0
.end method

.method public SetFocusPreview(Landroid/view/View;I)V
    .locals 0
    .parameter "previewFrame"
    .parameter "displayOrientation"

    .prologue
    .line 1836
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerSetFocusPreview(Landroid/view/View;I)V

    .line 1837
    return-void
.end method

.method public SetOperator(Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;)V
    .locals 0
    .parameter "operator"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    .line 232
    return-void
.end method

.method public SetPreviewLayout()V
    .locals 0

    .prologue
    .line 847
    return-void
.end method

.method public SetUpdateParameterCE()V
    .locals 3

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_COLOR_EXTRACT:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    .line 2163
    return-void
.end method

.method public SetUpdateParameterFlash()V
    .locals 3

    .prologue
    .line 930
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_FLASH:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    .line 931
    return-void
.end method

.method public SetZoomIndex(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1566
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ZoomContainerSetZoomIndex(I)V

    .line 1567
    return-void
.end method

.method public SetZoomParammeter(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0x25

    invoke-interface {v0, v1, p1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(II)V

    .line 1562
    :cond_0
    return-void
.end method

.method public ShowCameraTips()V
    .locals 2

    .prologue
    .line 2398
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsCameraTipsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2415
    :cond_0
    :goto_0
    return-void

    .line 2402
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTipsStub:Landroid/view/ViewStub;

    if-nez v0, :cond_2

    .line 2403
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->camera_tips_stub:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTipsStub:Landroid/view/ViewStub;

    .line 2405
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTipsStub:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2407
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    if-nez v0, :cond_3

    .line 2408
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->camera_tips_tree:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/CameraTips;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    .line 2409
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 2411
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    if-eqz v0, :cond_0

    .line 2412
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->setListener(Lcom/pantech/app/vegacamera/ui/CameraTips$Listener;)V

    .line 2413
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/CameraTips;->show(I)V

    goto :goto_0
.end method

.method public Start()V
    .locals 0

    .prologue
    .line 2347
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_IncludeLayout()V

    .line 2348
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_LayoutObjInit()V

    .line 2349
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_LayoutControlStart()V

    .line 2350
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerEnableButtonSound()V

    .line 2351
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearListenerClickAble()V

    .line 2352
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_InitLayout()V

    .line 2353
    return-void
.end method

.method public StartFaceDetect()V
    .locals 0

    .prologue
    .line 1856
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerStartFaceDetect()V

    .line 1857
    return-void
.end method

.method public Stop()V
    .locals 1

    .prologue
    .line 2365
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_StopLayout()V

    .line 2366
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearListenerClickAble()V

    .line 2367
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_LayoutControlRelease()V

    .line 2368
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_LayoutObjFree()V

    .line 2369
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2371
    return-void
.end method

.method public StopFaceDetect()V
    .locals 0

    .prologue
    .line 1861
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerStopFaceDetect()V

    .line 1862
    return-void
.end method

.method public TextValueChangeNotify(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_TEXT:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    .line 2772
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerStart()V

    .line 2773
    return-void
.end method

.method public TimelapseValueChangeNotify(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2800
    return-void
.end method

.method public TimerShotCancel()V
    .locals 0

    .prologue
    .line 1966
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_TimerShotCancel()V

    .line 1967
    return-void
.end method

.method public UnSetPreviewLayout()V
    .locals 0

    .prologue
    .line 851
    return-void
.end method

.method public UpdateRecordingMmsIcon(II)V
    .locals 2
    .parameter "visibility"
    .parameter "mmsIconKind"

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingMmsIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_RECORDING_MMS_ICON:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingMmsIcon:Landroid/widget/ImageView;

    .line 2104
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingMmsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingMmsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2106
    return-void
.end method

.method public UpdateRecordingSize(Ljava/lang/String;I)V
    .locals 2
    .parameter "size"
    .parameter "color"

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingSizeView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_RECORDING_SIZE:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingSizeView:Landroid/widget/TextView;

    .line 2096
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingSizeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2097
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingSizeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2098
    return-void
.end method

.method public UpdateRecordingTime(Ljava/lang/String;I)V
    .locals 2
    .parameter "time"
    .parameter "color"

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingTimeView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2086
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_RECORDING_TIME:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingTimeView:Landroid/widget/TextView;

    .line 2088
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2089
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2090
    return-void
.end method

.method public UsedInformationArea()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    return-object v0
.end method

.method public VideoRecordStart()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 1731
    const-string v0, "LayoutControl"

    const-string v1, "[LayoutControl] VideoRecordStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1733
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1761
    :cond_0
    :goto_0
    return-void

    .line 1736
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1737
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1742
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1745
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->getRemainStorageState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1746
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->ShowDisableToast()V

    goto :goto_0

    .line 1750
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->CheckTelephonyState(Landroid/app/Activity;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1751
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1755
    :cond_4
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 1756
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1757
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 1758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mModuleRootView:Landroid/view/View;

    .line 1759
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_VideoRecordStartOper()V

    goto :goto_0
.end method

.method protected _ActInitLocalLayout()V
    .locals 0

    .prologue
    .line 1479
    return-void
.end method

.method protected _ActOnBackPressed()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2382
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2383
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerCloseSubDepth()V

    move v0, v1

    .line 2394
    :goto_0
    return v0

    .line 2385
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsMenuContainerDepthAct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2386
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerCloseAllDepth()V

    move v0, v1

    .line 2387
    goto :goto_0

    .line 2388
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 2389
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimerShot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2390
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->TimerShotCancel()V

    move v0, v1

    .line 2391
    goto :goto_0

    .line 2394
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public _ActionVR(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;->ActionVR(I)V

    .line 2038
    :cond_0
    return-void
.end method

.method public _BackTouchInit()V
    .locals 2

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjBackTouch:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2066
    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2068
    :cond_0
    return-void
.end method

.method protected _CaptureCount()I
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x0

    return v0
.end method

.method public _CaptureOper()V
    .locals 3

    .prologue
    .line 925
    const-string v0, "LayoutControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LayoutControl] _CaptureOper() :: capture count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_CaptureCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_CaptureCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(II)V

    .line 927
    return-void
.end method

.method public _ClearLayoutAll()V
    .locals 4

    .prologue
    .line 716
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 719
    return-void

    .line 716
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 717
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    goto :goto_0
.end method

.method public _ColorExtCtlInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x16

    .line 2112
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjColorExtractCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsColorExtStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->InitializeColorExtract()V

    .line 2115
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 2116
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2122
    :cond_0
    :goto_0
    return-void

    .line 2118
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 2119
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    goto :goto_0
.end method

.method public _ControlBarInit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 751
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_THUMBNAIL_VIEW_G:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 753
    .local v0, vThumbNail:Landroid/view/View;
    invoke-virtual {p0, v5, v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 755
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 756
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 757
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 758
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 759
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 760
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 765
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 766
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_THUMBNAIL_VIEW:I

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnailView(Lcom/pantech/app/vegacamera/ui/RotateImageView;)V

    .line 767
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailView()Lcom/pantech/app/vegacamera/ui/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 768
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailView()Lcom/pantech/app/vegacamera/ui/RotateImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnailViewWidth(I)V

    .line 769
    const/16 v1, 0x28

    invoke-virtual {p0, v1, v5}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 770
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_THUMBNAIL_VIEW:I

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 772
    :cond_1
    return-void

    .line 762
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public _ControlBarRelease()V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnailView(Lcom/pantech/app/vegacamera/ui/RotateImageView;)V

    .line 776
    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 777
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 778
    return-void
.end method

.method public _ControlBarRemoteTipsInit()V
    .locals 4

    .prologue
    const/16 v3, 0x2a

    .line 781
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 782
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 783
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 784
    return-void
.end method

.method public _ControlBarRemoteTipsRelease()V
    .locals 2

    .prologue
    .line 787
    const/16 v0, 0x2a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 788
    const/16 v0, 0xb

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 789
    return-void
.end method

.method protected _ConvertSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1417
    const-string v0, "pref_setting_picture_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_PICTURESIZE:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    .line 1459
    :cond_0
    :goto_0
    return-void

    .line 1419
    :cond_1
    const-string v0, "pref_setting_record_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1420
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_VIDEOSIZE:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    goto :goto_0

    .line 1421
    :cond_2
    const-string v0, "pref_setting_timershot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1423
    const-string v0, "pref_setting_ev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1424
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_BRIGHTNESS:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    goto :goto_0

    .line 1425
    :cond_3
    const-string v0, "pref_setting_wb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1426
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_WHITE_BALANCE:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    goto :goto_0

    .line 1427
    :cond_4
    const-string v0, "pref_setting_photometry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1428
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_AUTO_EXPOSURE:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    goto :goto_0

    .line 1429
    :cond_5
    const-string v0, "pref_setting_grid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1431
    const-string v0, "pref_setting_focus_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1432
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_OJT:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    .line 1433
    const-string v0, "Object Tracking"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1434
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerFocusStop(I)V

    goto :goto_0

    .line 1436
    :cond_6
    const-string v0, "pref_setting_quality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1438
    const-string v0, "pref_setting_gps_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    const-string v0, "pref_setting_voice_recognition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1442
    const-string v0, "pref_setting_shutter_sound"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1443
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_SOUND_PLAY:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    goto/16 :goto_0

    .line 1444
    :cond_7
    const-string v0, "pref_setting_storage_location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1446
    const-string v0, "pref_setting_mirror"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1447
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_MIRROR:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    goto/16 :goto_0

    .line 1448
    :cond_8
    const-string v0, "pref_setting_continuous_shot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1449
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_BURST_SHOT:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    .line 1450
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const-wide/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetParameter(J)V

    .line 1451
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1452
    const/16 v0, 0x1f

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    goto/16 :goto_0

    .line 1454
    :cond_9
    const-string v0, "pref_setting_iso"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ISO:J

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetUpdateParameter(J)V

    goto/16 :goto_0
.end method

.method protected _FaceDistortCtlInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x18

    .line 2169
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFaceDistortCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2170
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 2171
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->InitializeFaceDistort()V

    .line 2172
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->SetVisibility(I)V

    .line 2173
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2179
    :cond_0
    :goto_0
    return-void

    .line 2175
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->SetVisibility(I)V

    .line 2176
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    goto :goto_0
.end method

.method public _FocusContainerDoSnap()V
    .locals 2

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->DoSnap()V

    .line 1658
    :cond_0
    return-void
.end method

.method public _FocusContainerFocusReleased()V
    .locals 2

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->onFocusReleased()V

    .line 1676
    :cond_0
    return-void
.end method

.method public _FocusContainerFocusStart(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1637
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsCameraTipsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1643
    :cond_0
    :goto_0
    return-void

    .line 1640
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->FocusStart(I)V

    goto :goto_0
.end method

.method public _FocusContainerFocusStop(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1646
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsCameraTipsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1652
    :cond_0
    :goto_0
    return-void

    .line 1649
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->FocusStop(I)V

    goto :goto_0
.end method

.method public _FocusContainerGetCurrentFocusMode()I
    .locals 3

    .prologue
    .line 1601
    const/4 v0, 0x0

    .line 1602
    .local v0, _Mode:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1603
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 1604
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->GetCurrentFocusMode()I

    move-result v0

    .line 1607
    :cond_0
    return v0
.end method

.method public _FocusContainerGetCurrentFocusState()I
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 1591
    const/4 v0, 0x0

    .line 1592
    .local v0, _Status:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1593
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    if-eqz v1, :cond_0

    .line 1594
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->GetCurrentFocusState()I

    move-result v0

    .line 1597
    :cond_0
    return v0
.end method

.method public _FocusContainerGetFocusMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1611
    const/4 v0, 0x0

    .line 1612
    .local v0, _Mode:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1613
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 1615
    :cond_0
    return-object v0
.end method

.method public _FocusContainerInitializeFocusParm(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1620
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->InitializeFocusParm(Landroid/hardware/Camera$Parameters;)V

    .line 1622
    :cond_0
    return-void
.end method

.method public _FocusContainerSetDisplayOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->SetDisplayOrientation(I)V

    .line 1682
    :cond_0
    return-void
.end method

.method public _FocusContainerSetFocusPreview(Landroid/view/View;I)V
    .locals 2
    .parameter "previewFrame"
    .parameter "displayOrientation"

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->SetFocusPreview(Landroid/view/View;I)V

    .line 1628
    :cond_0
    return-void
.end method

.method public _FocusContainerSetMirror()V
    .locals 2

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->SetMirror()V

    .line 1634
    :cond_0
    return-void
.end method

.method public _FocusContainerStart()V
    .locals 2

    .prologue
    .line 1587
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1588
    return-void
.end method

.method public _FocusContainerStartFaceDetect()V
    .locals 2

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->StartFaceDetection()V

    .line 1664
    :cond_0
    return-void
.end method

.method public _FocusContainerStopFaceDetect()V
    .locals 2

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->StopFaceDetection()V

    .line 1670
    :cond_0
    return-void
.end method

.method protected _GpsRotateDialogShowWaiting()V
    .locals 4

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2902
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->geotag_init_popup:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setMessage(Ljava/lang/String;)V

    .line 2903
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->popup_title_geotag:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 2904
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->popup_button_yes:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2905
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->popup_button_no:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2904
    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setButtonText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    new-instance v1, Lcom/pantech/app/vegacamera/controller/LayoutControl$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl$2;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->SetListener(Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;)V

    .line 2932
    :cond_0
    return-void
.end method

.method public _GridLayoutInit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xa

    .line 2230
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_grid"

    .line 2231
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_grid_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2230
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2232
    .local v0, GridType:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2233
    const/4 v1, 0x4

    invoke-virtual {p0, v5, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 2241
    :cond_0
    :goto_0
    return-void

    .line 2234
    :cond_1
    const-string v1, "type1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2235
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/pantech/app/vegacamera/R$drawable;->camera_grid_01:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2236
    invoke-virtual {p0, v5, v6}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    goto :goto_0

    .line 2237
    :cond_2
    const-string v1, "type2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2238
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/pantech/app/vegacamera/R$drawable;->camera_grid_02:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2239
    invoke-virtual {p0, v5, v6}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    goto :goto_0
.end method

.method public _InformationAreaInit()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    .line 894
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->Start()V

    .line 896
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->SetVisibility(I)V

    .line 898
    :cond_0
    const/16 v0, 0x29

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 899
    return-void
.end method

.method protected _InitLayout()V
    .locals 0

    .prologue
    .line 2343
    return-void
.end method

.method protected _IsTimerShotEnable()Z
    .locals 1

    .prologue
    .line 1900
    const/4 v0, 0x1

    return v0
.end method

.method public _IsVTouchEnabled()Z
    .locals 2

    .prologue
    .line 2270
    const-string v0, "LayoutControl"

    const-string v1, "_IsVTouchEnabled "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjBackTouch:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2272
    const-string v0, "LayoutControl"

    const-string v1, "_IsVTouchEnabled checkNull"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->IsAvailableVCapture()Z

    move-result v0

    .line 2275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _LayoutArray()I
    .locals 1

    .prologue
    .line 2302
    const/4 v0, -0x1

    return v0
.end method

.method protected _LayoutControlInit()V
    .locals 1

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->SetOperator(Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;)V

    .line 2287
    return-void
.end method

.method protected _LayoutControlStart()V
    .locals 0

    .prologue
    .line 2339
    return-void
.end method

.method protected _LayoutObjFree()V
    .locals 0

    .prologue
    .line 2361
    return-void
.end method

.method protected _LayoutObjInit()V
    .locals 0

    .prologue
    .line 2335
    return-void
.end method

.method protected _LongPressedCapture(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 967
    if-eqz p1, :cond_1

    .line 969
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerFocusStart(I)V

    .line 972
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ShutterButtonClick()V

    .line 976
    :cond_1
    return-void
.end method

.method public _MenuContainerClear()V
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->SetVisibility(I)V

    .line 1192
    :cond_0
    return-void
.end method

.method protected _MenuContainerCloseAllDepth()V
    .locals 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->CloseAllDepth()V

    .line 1263
    :cond_0
    return-void
.end method

.method protected _MenuContainerClosedMenuItem()V
    .locals 2

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->ClosedMenuItem()V

    .line 1257
    :cond_0
    return-void
.end method

.method protected _MenuContainerDisableButtonSound()V
    .locals 2

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->DisableMenuItemButtonSound()V

    .line 1204
    :cond_0
    return-void
.end method

.method protected _MenuContainerEnableButtonSound()V
    .locals 2

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->EnableMenuItemButtonSound()V

    .line 1210
    :cond_0
    return-void
.end method

.method public _MenuContainerShow()V
    .locals 2

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->SetVisibility(I)V

    .line 1185
    :cond_0
    return-void
.end method

.method public _MenuContainerShowMenuItemButton(I)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->ShowMenuItemButton(I)V

    .line 1198
    :cond_0
    return-void
.end method

.method public _MenuContainerStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x10

    .line 1165
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->Start()V

    .line 1167
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->SetEnable(Z)V

    .line 1168
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->ReloadPreference()V

    .line 1169
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOrientation:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->SetOrientation(I)V

    .line 1171
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1172
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerShow()V

    .line 1173
    return-void
.end method

.method public _MenuContainerStop()V
    .locals 2

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->Stop()V

    .line 1179
    :cond_0
    return-void
.end method

.method public _NfcHelpLayoutInit()V
    .locals 4

    .prologue
    const/16 v3, 0x17

    .line 2218
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 2220
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    const-string v1, "com.pantech.app.vegacamera.remoteshot.wfd.RemoteTransferServiceWFD"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Camera;->CheckServiceRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2221
    const/4 v0, 0x4

    invoke-virtual {p0, v3, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 2225
    :goto_0
    return-void

    .line 2223
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    goto :goto_0
.end method

.method public _PanoramaShutterButtonInit()V
    .locals 3

    .prologue
    const/16 v2, 0x23

    .line 840
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 841
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 842
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 843
    return-void
.end method

.method public _PhotoShutterButtonInit()V
    .locals 2

    .prologue
    .line 814
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 815
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MainShutterButtonInit()V

    .line 816
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SubShutterButtonInit()V

    .line 817
    return-void
.end method

.method public _RecordCaptureButtonInit()V
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 888
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 889
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 890
    return-void
.end method

.method public _RecordInfoInit()V
    .locals 2

    .prologue
    .line 2074
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 2075
    return-void
.end method

.method public _RecordInfoRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2078
    const/16 v0, 0x15

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 2079
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingSizeView:Landroid/widget/TextView;

    .line 2080
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingTimeView:Landroid/widget/TextView;

    .line 2081
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRecordingMmsIcon:Landroid/widget/ImageView;

    .line 2082
    return-void
.end method

.method public _RecordStopShutterButtonInit()V
    .locals 3

    .prologue
    const/16 v2, 0x26

    .line 875
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 876
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 877
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 878
    return-void
.end method

.method public _RecordStopShutterButtonRelease()V
    .locals 2

    .prologue
    .line 881
    const/16 v0, 0x26

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 882
    const/16 v0, 0x8

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 883
    return-void
.end method

.method public _RemoteShutterButtonInit()V
    .locals 3

    .prologue
    const/16 v2, 0x21

    .line 823
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 824
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 825
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 826
    return-void
.end method

.method public _RemoveCameraTips()V
    .locals 3

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/CameraTips;->setListener(Lcom/pantech/app/vegacamera/ui/CameraTips$Listener;)V

    .line 2420
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mCameraTips:Lcom/pantech/app/vegacamera/ui/CameraTips;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->remove()V

    .line 2424
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-nez v0, :cond_1

    .line 2425
    new-instance v0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 2428
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_GpsRotateDialogShowWaiting()V

    .line 2429
    return-void
.end method

.method protected _RemoveLayoutAllViews()V
    .locals 1

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mModuleRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2328
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mModuleRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2330
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mModuleRootView:Landroid/view/View;

    .line 2331
    return-void
.end method

.method public _SelfShutterButtonInit()V
    .locals 2

    .prologue
    .line 832
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 833
    const/16 v0, 0x22

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 834
    return-void
.end method

.method public _SetFocusAutoMode()V
    .locals 3

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const-string v1, "focus-mode"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    :cond_0
    return-void
.end method

.method protected _SetLayoutVisible(II)V
    .locals 2
    .parameter "state"
    .parameter "visibility"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 586
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjControlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 592
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 594
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsTimerShotEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->shutter_timer_arrow:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->shutter_timer_arrow:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 603
    :pswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjRemoteShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 609
    :pswitch_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjSelfShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 615
    :pswitch_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjPanoramaShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 621
    :pswitch_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjSmartCoverShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 627
    :pswitch_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjVideoShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 633
    :pswitch_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjRecordStopShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 639
    :pswitch_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjGrid:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjGrid:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 648
    :pswitch_a
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->SetVisibility(I)V

    goto/16 :goto_0

    .line 654
    :pswitch_b
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->SetVisibility(I)V

    goto/16 :goto_0

    .line 660
    :pswitch_c
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimerShot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/controller/TimerShot;->SetVisibility(I)V

    goto/16 :goto_0

    .line 666
    :pswitch_d
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjRecordInfo:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 672
    :pswitch_e
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjColorExtractCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetVisibility(I)V

    goto/16 :goto_0

    .line 678
    :pswitch_f
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjNfcHelpLayout:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 684
    :pswitch_10
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFaceDistortCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 685
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->SetVisibility(I)V

    .line 689
    :cond_3
    :pswitch_11
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjAsmContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/AsmContainer;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/controller/AsmContainer;->SetVisibility(I)V

    goto/16 :goto_0

    .line 695
    :pswitch_12
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTextContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TextContainer;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/controller/TextContainer;->SetVisibility(I)V

    goto/16 :goto_0

    .line 701
    :pswitch_13
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimelapseContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;->SetVisibility(I)V

    goto/16 :goto_0

    .line 707
    :pswitch_14
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjRemoteTipsLayout:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected _SetListnerClickAble(IZ)V
    .locals 8
    .parameter "state"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 405
    const/4 v1, 0x0

    .line 407
    .local v1, obj:Ljava/lang/Object;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 570
    .end local v1           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 411
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_2

    .line 412
    move-object v1, p0

    .line 415
    .end local v1           #obj:Ljava/lang/Object;
    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 418
    :pswitch_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->SetOnMenuContainerLister(Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;)V

    goto :goto_0

    .line 424
    :pswitch_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->SetOnZoomChangeListener(Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;)V

    goto :goto_0

    .line 430
    :pswitch_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->SetFocusListener(Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;)V

    goto :goto_0

    .line 436
    :pswitch_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimerShot:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_IsTimerShotEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    if-eqz p2, :cond_3

    .line 439
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/TimerShot;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/controller/TimerShot;->InitializeShutterButtonTimer(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 441
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/TimerShot;

    move-object v3, v1

    check-cast v3, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/controller/TimerShot;->SetListener(Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;)V

    .line 442
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/TimerShot;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->SetOnShutterButtonMoveListener(Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;)V

    goto/16 :goto_0

    .line 448
    :pswitch_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjColorExtractCtlBar:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtractListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetColorExtractionControlListener(Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtractListener;)V

    goto/16 :goto_0

    .line 454
    :pswitch_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjFaceDistortCtlBar:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->SetOnFaceEffectChangeListener(Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;)V

    goto/16 :goto_0

    .line 460
    :pswitch_7
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjBackTouch:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/BackTouchContainer$BackTouchListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->SetOnBackTouchListener(Lcom/pantech/app/vegacamera/controller/BackTouchContainer$BackTouchListener;)V

    goto/16 :goto_0

    .line 466
    :pswitch_8
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjAsmContainer:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 467
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/AsmContainer;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/AsmContainer$AsmListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/AsmContainer;->SetAsmListener(Lcom/pantech/app/vegacamera/controller/AsmContainer$AsmListener;)V

    goto/16 :goto_0

    .line 472
    :pswitch_9
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTextContainer:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/TextContainer;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/TextContainer$TextListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/TextContainer;->SetOnTextListener(Lcom/pantech/app/vegacamera/controller/TextContainer$TextListener;)V

    goto/16 :goto_0

    .line 478
    :pswitch_a
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimelapseContainer:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/TimelapseContainer$TimelapseListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;->SetOnTimelapseListener(Lcom/pantech/app/vegacamera/controller/TimelapseContainer$TimelapseListener;)V

    goto/16 :goto_0

    .line 485
    :pswitch_b
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_setting_continuous_shot"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, isZSLmode:Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    move-object v3, v1

    check-cast v3, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->SetOnShutterButtonListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;)V

    .line 488
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v2

    if-eq v2, v5, :cond_4

    .line 489
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v2

    if-eq v2, v6, :cond_4

    .line 490
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v2

    if-ne v2, v5, :cond_5

    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 491
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v2, v7}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->SetOnShutterButtonLongPressListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;)V

    goto/16 :goto_0

    .line 493
    :cond_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    .line 494
    check-cast v1, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->SetOnShutterButtonLongPressListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;)V

    goto/16 :goto_0

    .line 500
    .end local v0           #isZSLmode:Ljava/lang/String;
    :pswitch_c
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 501
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->SetOnShutterButtonListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;)V

    goto/16 :goto_0

    .line 506
    :pswitch_d
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjRemoteShutter:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_setting_continuous_shot"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .restart local v0       #isZSLmode:Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    move-object v3, v1

    check-cast v3, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->SetOnShutterButtonListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;)V

    .line 509
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v2

    if-eq v2, v5, :cond_6

    .line 510
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v2

    if-eq v2, v6, :cond_6

    .line 511
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v2

    if-ne v2, v5, :cond_7

    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 512
    :cond_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v2, v7}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->SetOnShutterButtonLongPressListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;)V

    goto/16 :goto_0

    .line 514
    :cond_7
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    .line 515
    check-cast v1, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->SetOnShutterButtonLongPressListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;)V

    goto/16 :goto_0

    .line 522
    .end local v0           #isZSLmode:Ljava/lang/String;
    :pswitch_e
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjSelfShutter:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 523
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    move-object v3, v1

    check-cast v3, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->SetOnShutterButtonListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;)V

    .line 527
    :cond_8
    :pswitch_f
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjPanoramaShutter:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 528
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->SetOnShutterButtonListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;)V

    goto/16 :goto_0

    .line 533
    :pswitch_10
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjSmartCoverShutter:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 534
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->SetOnShutterButtonListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;)V

    goto/16 :goto_0

    .line 539
    :pswitch_11
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjVideoShutter:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->SetOnShutterButtonListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;)V

    goto/16 :goto_0

    .line 545
    :pswitch_12
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjRecordStopShutter:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 546
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->SetOnShutterButtonListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;)V

    goto/16 :goto_0

    .line 551
    :pswitch_13
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjRecordCapture:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    check-cast v1, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->SetOnShutterButtonListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;)V

    goto/16 :goto_0

    .line 558
    :pswitch_14
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 559
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 564
    :pswitch_15
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjRemoteTips:Ljava/lang/Object;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method protected _SharedCaptureOper()V
    .locals 2

    .prologue
    .line 909
    const-string v0, "LayoutControl"

    const-string v1, "[BackTouchCamera] _SharedCaptureOper : "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ShutterButtonClick()V

    .line 912
    return-void
.end method

.method protected _ShowVTouchToast()V
    .locals 3

    .prologue
    .line 915
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->v_touch_camera:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 916
    return-void
.end method

.method protected _ShutterButtonClick()V
    .locals 7

    .prologue
    const/16 v6, 0x1f

    const/16 v5, 0x13

    const/4 v4, 0x4

    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 1119
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_IsTimerShotEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->AvailableTimerShot()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1125
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->Start()Z

    .line 1127
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1128
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1129
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1130
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1131
    const/16 v0, 0xf

    invoke-virtual {p0, v0, v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1132
    const/16 v0, 0x29

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1133
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1134
    invoke-virtual {p0, v5, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1136
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1137
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setVisibility(I)V

    .line 1139
    :cond_2
    invoke-virtual {p0, v3, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1140
    invoke-virtual {p0, v6, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1141
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 1142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    goto/16 :goto_0

    .line 1146
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1147
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 1148
    invoke-virtual {p0, v3, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1151
    :cond_4
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1152
    const/16 v0, 0x29

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1153
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1154
    invoke-virtual {p0, v6, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1155
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-eqz v0, :cond_5

    .line 1156
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 1158
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerDoSnap()V

    goto/16 :goto_0
.end method

.method public _SmartCoverShutterButtonInit()V
    .locals 3

    .prologue
    const/16 v2, 0x24

    .line 857
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 858
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 859
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 860
    return-void
.end method

.method public _StartPanoramaCapture()V
    .locals 2

    .prologue
    .line 937
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0x15

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(I)V

    .line 938
    return-void
.end method

.method public _StartVoiceRecognizer()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 2022
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2023
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;->StartVoiceRecognizer()V

    .line 2024
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;

    invoke-interface {v0, p0}, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;->SetVRListenner(Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer$VRListener;)V

    .line 2026
    :cond_0
    return-void
.end method

.method protected _StopLayout()V
    .locals 0

    .prologue
    .line 2357
    return-void
.end method

.method public _StopPanoramaCapture()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(I)V

    .line 942
    return-void
.end method

.method public _StopVoiceRecognizer()V
    .locals 2

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;->StopVoiceRecognizer()V

    .line 2032
    :cond_0
    return-void
.end method

.method protected _TextModeCtlInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x1b

    .line 2185
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTextContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2186
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2187
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TextContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TextContainer;->InitializTextContainer()V

    .line 2188
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TextContainer;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/controller/TextContainer;->SetVisibility(I)V

    .line 2189
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2195
    :cond_0
    :goto_0
    return-void

    .line 2191
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TextContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/TextContainer;->SetVisibility(I)V

    .line 2192
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    goto :goto_0
.end method

.method protected _TimeLapseModeCtlInit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1c

    .line 2201
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetPreferenceGroup()Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    move-result-object v1

    const-string v2, "pref_mode_video_timelapse"

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    .line 2202
    .local v0, TimeLaseMode:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimelapseContainer:Ljava/lang/Object;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2203
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 2204
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;->InitializTimelapseContainer()V

    .line 2205
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;->SetVisibility(I)V

    .line 2206
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2212
    :cond_0
    :goto_0
    return-void

    .line 2208
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;->SetVisibility(I)V

    .line 2209
    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    goto :goto_0
.end method

.method public _TimerShotClearIcon()V
    .locals 2

    .prologue
    .line 1951
    const/16 v0, 0x13

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1952
    return-void
.end method

.method public _TimerShotInit()V
    .locals 4

    .prologue
    const/16 v3, 0x13

    .line 1908
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimerShot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1909
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->GetIcon()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 1911
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1912
    return-void
.end method

.method public _TimerShotSetShutterButton(I)V
    .locals 7
    .parameter "timer"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x20

    const/16 v4, 0x13

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1915
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimerShot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1916
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1918
    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1919
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 1921
    :cond_1
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1922
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 1923
    invoke-virtual {p0, v6, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1924
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1925
    const/16 v0, 0xf

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1926
    const/16 v0, 0x29

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1927
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1928
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1929
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1930
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setVisibility(I)V

    .line 1931
    invoke-virtual {p0, v5, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1933
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 1934
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->SetTimerCount(I)V

    .line 1935
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->Start()Z

    .line 1936
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->GetIcon()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 1937
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->GetCurrentFocusState()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 1938
    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_FocusContainerFocusStop(I)V

    .line 1941
    :cond_3
    invoke-virtual {p0, v4, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 1942
    return-void
.end method

.method public _TimerShotSetShutterMode(Z)V
    .locals 2
    .parameter "move"

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjTimerShot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1946
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->SetShutterTimerShotMode(Z)V

    .line 1948
    :cond_0
    return-void
.end method

.method public _TimerShotStop()V
    .locals 1

    .prologue
    .line 1961
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnTimerShotCancel(Z)V

    .line 1962
    return-void
.end method

.method public _VideoRecordCancelOper()V
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(I)V

    .line 957
    return-void
.end method

.method public _VideoRecordCaptureOper()V
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(I)V

    .line 961
    return-void
.end method

.method public _VideoRecordStartOper()V
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(I)V

    .line 949
    return-void
.end method

.method public _VideoRecordStopOper()V
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(I)V

    .line 953
    return-void
.end method

.method public _VideoShutterButtonInit()V
    .locals 3

    .prologue
    const/16 v2, 0x25

    .line 866
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 867
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 868
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 869
    return-void
.end method

.method public _ZoomButtonInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x11

    .line 1518
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsColorExtStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1520
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->SetVisibility(I)V

    .line 1521
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1528
    :cond_0
    :goto_0
    return-void

    .line 1523
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->InitializeZoom()V

    .line 1524
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->SetVisibility(I)V

    .line 1525
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    goto :goto_0
.end method

.method public _ZoomButtonRelease()V
    .locals 3

    .prologue
    const/16 v2, 0x11

    .line 1531
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->SetVisibility(I)V

    .line 1533
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 1535
    :cond_0
    return-void
.end method

.method protected isSaveAfterViewOn()Z
    .locals 5

    .prologue
    .line 2885
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_goto_viewer"

    .line 2886
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_goto_viewer_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2885
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2887
    .local v0, mSaveAfterView:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2888
    const/4 v1, 0x0

    .line 2890
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCaptureComplete()V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x1f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2702
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2704
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->isSaveAfterViewOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2705
    invoke-virtual {p0, v5, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2706
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 2709
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->isSaveAfterViewOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2710
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->bIsGoingToQuickView:Z

    .line 2712
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerShow()V

    .line 2713
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2714
    const/16 v0, 0x29

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2715
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2716
    invoke-virtual {p0, v4, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2717
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-eqz v0, :cond_2

    .line 2718
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 2720
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 2721
    const/16 v0, 0xf

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 2722
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 2723
    const/16 v0, 0x18

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 2724
    const/16 v0, 0x16

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetLayoutVisible(II)V

    .line 2725
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->bIsGoingToQuickView:Z

    if-nez v0, :cond_3

    .line 2726
    const/16 v0, 0x13

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SetListnerClickAble(IZ)V

    .line 2728
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0x13

    .line 723
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 724
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    .line 725
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->IsShutterTimerActionStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->isBurstState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 729
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_THUMBNAIL_FRAME:I

    if-ne v0, v1, :cond_2

    .line 733
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ClearLayoutAll()V

    .line 737
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerClear()V

    .line 738
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->Stop()V

    .line 739
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_GotoGallery()V

    goto :goto_0

    .line 740
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_INFORMATION_AREA:I

    if-ne v0, v1, :cond_0

    .line 741
    sget v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_SETTINGS_GROUP_MENU_ITEM:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerShowMenuItemButton(I)V

    goto :goto_0
.end method
