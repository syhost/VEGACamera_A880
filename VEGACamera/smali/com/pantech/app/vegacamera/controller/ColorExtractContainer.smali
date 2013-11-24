.class public Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;
.super Ljava/lang/Object;
.source "ColorExtractContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;
.implements Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$SubPopupListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtractListener;,
        Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;,
        Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorPointHandler;
    }
.end annotation


# static fields
.field public static final COLOR_EXTRACTION_COORDINATES:Ljava/lang/String; = "pantech-color-extraction-coordinates"

.field public static final COLOR_EXTRACTION_COORDINATES_B:Ljava/lang/String; = "pantech-color-extraction-coordinates-b"

.field public static final COLOR_EXTRACTION_COORDINATES_G:Ljava/lang/String; = "pantech-color-extraction-coordinates-g"

.field public static final COLOR_EXTRACTION_COORDINATES_R:Ljava/lang/String; = "pantech-color-extraction-coordinates-r"

.field private static final COLOR_EXTRACTION_INIT_INDEX:I = 0x10

.field private static final COLOR_EXTRACTION_MAX_INDEX:I = 0xff

.field private static final COLOR_EXTRACTION_MODE_BLUE:I = 0x4

.field private static final COLOR_EXTRACTION_MODE_GREEN:I = 0x3

.field private static final COLOR_EXTRACTION_MODE_OFF:I = 0x0

.field private static final COLOR_EXTRACTION_MODE_RED:I = 0x2

.field private static final COLOR_EXTRACTION_MODE_TOUCH:I = 0x1

.field private static final COLOR_EXTRACTION_MODE_YELLOW:I = 0x5

.field public static final COLOR_EXTRACTION_RGB_B:Ljava/lang/String; = "pantech-colorextraction-rgb-b"

.field public static final COLOR_EXTRACTION_RGB_G:Ljava/lang/String; = "pantech-colorextraction-rgb-g"

.field public static final COLOR_EXTRACTION_RGB_R:Ljava/lang/String; = "pantech-colorextraction-rgb-r"

.field private static final COLOR_EXTRACTION_TOUCH_RGB:I = 0x15

.field private static final COLOR_EXTRACTION_VIEW_CONTROL:I = 0x16

.field private static final COLOR_EXTRACTION_ZOOM_RESET:I = 0x17

.field private static final TAG:Ljava/lang/String; = "ColorExtractContainer"


# instance fields
.field private ColorExtXpoint:I

.field private ColorExtYpoint:I

.field private _CEListener:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtractListener;

.field private b_gradient_temp:I

.field private b_max:I

.field private b_min:I

.field private b_touch:I

.field private b_touch_temp:I

.field private color_level:I

.field private g_gradient_temp:I

.field private g_max:I

.field private g_min:I

.field private g_touch:I

.field private g_touch_temp:I

.field private iColorValue:I

.field private iColorValueOld:I

.field private iInitIndex:I

.field private ivCEIcon:Landroid/widget/ImageView;

.field private lColorControlBar:Landroid/widget/LinearLayout;

.field private mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

.field private mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

.field mColorExtraction:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

.field private mColorExtractionMode:I

.field private mColorExtractionViewControl:I

.field private final mColorPointHandler:Landroid/os/Handler;

.field private mColorPointVisibility:Z

.field private mDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

.field private mParam:Landroid/hardware/Camera$Parameters;

.field private mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

.field mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

.field private mTouchedforColorExtraction:Z

.field private prevColorExtractionMode:I

.field private r_gradient_temp:I

.field private r_max:I

.field private r_min:I

.field private r_touch:I

.field private r_touch_temp:I

.field private rgb888:I

.field private rgb888_2:I

.field private touch_update_cnt:I

.field private vRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V
    .locals 3
    .parameter "layout"

    .prologue
    const/16 v0, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 57
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->vRootView:Landroid/view/ViewGroup;

    .line 59
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    .line 60
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->lColorControlBar:Landroid/widget/LinearLayout;

    .line 61
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ivCEIcon:Landroid/widget/ImageView;

    .line 63
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    .line 64
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 66
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValue:I

    .line 67
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValueOld:I

    .line 68
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iInitIndex:I

    .line 70
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    .line 71
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    .line 72
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    .line 73
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    .line 74
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    .line 75
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch_temp:I

    .line 76
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch_temp:I

    .line 77
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch_temp:I

    .line 78
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_gradient_temp:I

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_gradient_temp:I

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_gradient_temp:I

    .line 79
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->rgb888:I

    .line 80
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->rgb888_2:I

    .line 83
    new-instance v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorPointHandler;

    invoke-direct {v0, p0, v2}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorPointHandler;-><init>(Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorPointHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointHandler:Landroid/os/Handler;

    .line 84
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    .line 85
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    .line 87
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->touch_update_cnt:I

    .line 91
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionViewControl:I

    .line 92
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    .line 93
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->prevColorExtractionMode:I

    .line 95
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointVisibility:Z

    .line 98
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_CEListener:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtractListener;

    .line 115
    sget-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_OFF:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtraction:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    .line 128
    const-string v0, "ColorExtractContainer"

    const-string v1, "[ColorExtractContainer] [CE] ColorExtractContainer()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_MENU_CONTROL_LAYOUT:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->vRootView:Landroid/view/ViewGroup;

    .line 131
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetPreferenceGroup()Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_effect_color_extraction"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    .line 132
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_InitializeLayoutCtl()V

    .line 146
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->frame:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    .line 147
    return-void
.end method

.method private SetColorExtractionRGB_Touch()V
    .locals 22

    .prologue
    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v18

    const-string v19, "pref_effect_color_extraction"

    .line 1127
    const-string v20, "off"

    .line 1126
    invoke-virtual/range {v18 .. v20}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1129
    .local v17, value:Ljava/lang/String;
    const-string v18, "color_touch"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1130
    const-string v18, "ColorExtractContainer"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[ColorExtractContainer] [CE] SetColorExtractionRGB_Touch() : color_level = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    move/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    move/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1146
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    .line 1147
    const/16 v18, 0xff

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    .line 1148
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    .line 1149
    const/16 v18, 0xff

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    .line 1150
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    .line 1151
    const/16 v18, 0xff

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    .line 1153
    const-string v18, "%d, %d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1154
    .local v16, rgb_r:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setRGB_R(Ljava/lang/String;)V

    .line 1156
    const-string v18, "%d, %d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1157
    .local v15, rgb_g:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/pantech/app/vegacamera/data/AppData;->setRGB_G(Ljava/lang/String;)V

    .line 1159
    const-string v18, "%d, %d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1160
    .local v14, rgb_b:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/pantech/app/vegacamera/data/AppData;->setRGB_B(Ljava/lang/String;)V

    .line 1347
    .end local v14           #rgb_b:Ljava/lang/String;
    .end local v15           #rgb_g:Ljava/lang/String;
    .end local v16           #rgb_r:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_12

    .line 1165
    const/4 v12, 0x3

    .line 1166
    .local v12, r_step:I
    const/16 v13, 0x14

    .line 1167
    .local v13, r_value:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_11

    .line 1168
    const/4 v8, 0x2

    .line 1169
    .local v8, g_step:I
    const/16 v9, 0x14

    .line 1170
    .local v9, g_value:I
    const/4 v4, 0x1

    .line 1171
    .local v4, b_step:I
    const/16 v5, 0x14

    .line 1221
    .local v5, b_value:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    move/from16 v18, v0

    mul-int/lit8 v19, v12, 0x14

    div-int/lit8 v19, v19, 0x2

    sub-int v11, v18, v19

    .line 1222
    .local v11, r_min_temp:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    move/from16 v18, v0

    mul-int/lit8 v19, v12, 0x14

    add-int v10, v18, v19

    .line 1226
    .local v10, r_max_temp:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    move/from16 v18, v0

    mul-int/lit8 v19, v8, 0x14

    div-int/lit8 v19, v19, 0x2

    sub-int v7, v18, v19

    .line 1227
    .local v7, g_min_temp:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    move/from16 v18, v0

    mul-int/lit8 v19, v8, 0x14

    add-int v6, v18, v19

    .line 1231
    .local v6, g_max_temp:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    move/from16 v18, v0

    mul-int/lit8 v19, v4, 0x14

    div-int/lit8 v19, v19, 0x2

    sub-int v3, v18, v19

    .line 1232
    .local v3, b_min_temp:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    move/from16 v18, v0

    mul-int/lit8 v19, v4, 0x14

    add-int v2, v18, v19

    .line 1238
    .local v2, b_max_temp:I
    if-gez v11, :cond_2

    .line 1239
    const/4 v11, 0x0

    .line 1240
    :cond_2
    const/16 v18, 0xff

    move/from16 v0, v18

    if-le v10, v0, :cond_3

    .line 1241
    const/16 v10, 0xff

    .line 1242
    :cond_3
    if-gez v7, :cond_4

    .line 1243
    const/4 v7, 0x0

    .line 1244
    :cond_4
    const/16 v18, 0xff

    move/from16 v0, v18

    if-le v6, v0, :cond_5

    .line 1245
    const/16 v6, 0xff

    .line 1246
    :cond_5
    if-gez v3, :cond_6

    .line 1247
    const/4 v3, 0x0

    .line 1248
    :cond_6
    const/16 v18, 0xff

    move/from16 v0, v18

    if-le v2, v0, :cond_7

    .line 1249
    const/16 v2, 0xff

    .line 1255
    :cond_7
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v12, v0, :cond_17

    .line 1257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, 0xa

    sub-int v18, v11, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    .line 1268
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_18

    .line 1269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v18, v18, v10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    .line 1274
    :goto_3
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_8

    .line 1275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    .line 1279
    :cond_8
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v8, v0, :cond_19

    .line 1281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, 0xa

    sub-int v18, v7, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    .line 1292
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1a

    .line 1293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v18, v18, v6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    .line 1298
    :goto_5
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_9

    .line 1299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    .line 1303
    :cond_9
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v4, v0, :cond_1b

    .line 1305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, 0xa

    sub-int v18, v3, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    .line 1316
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1c

    .line 1317
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v18, v18, v2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    .line 1322
    :goto_7
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_a

    .line 1323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    .line 1326
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    move/from16 v18, v0

    if-gez v18, :cond_b

    .line 1327
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    .line 1328
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    move/from16 v18, v0

    const/16 v19, 0xff

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 1329
    const/16 v18, 0xff

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    .line 1330
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    move/from16 v18, v0

    if-gez v18, :cond_d

    .line 1331
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    .line 1332
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    move/from16 v18, v0

    const/16 v19, 0xff

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    .line 1333
    const/16 v18, 0xff

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    .line 1334
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    move/from16 v18, v0

    if-gez v18, :cond_f

    .line 1335
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    .line 1336
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    move/from16 v18, v0

    const/16 v19, 0xff

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    .line 1337
    const/16 v18, 0xff

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    .line 1338
    :cond_10
    const-string v18, "%d, %d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1339
    .restart local v16       #rgb_r:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setRGB_R(Ljava/lang/String;)V

    .line 1341
    const-string v18, "%d, %d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1342
    .restart local v15       #rgb_g:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/pantech/app/vegacamera/data/AppData;->setRGB_G(Ljava/lang/String;)V

    .line 1344
    const-string v18, "%d, %d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1345
    .restart local v14       #rgb_b:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/pantech/app/vegacamera/data/AppData;->setRGB_B(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1173
    .end local v2           #b_max_temp:I
    .end local v3           #b_min_temp:I
    .end local v4           #b_step:I
    .end local v5           #b_value:I
    .end local v6           #g_max_temp:I
    .end local v7           #g_min_temp:I
    .end local v8           #g_step:I
    .end local v9           #g_value:I
    .end local v10           #r_max_temp:I
    .end local v11           #r_min_temp:I
    .end local v14           #rgb_b:Ljava/lang/String;
    .end local v15           #rgb_g:Ljava/lang/String;
    .end local v16           #rgb_r:Ljava/lang/String;
    :cond_11
    const/4 v8, 0x1

    .line 1174
    .restart local v8       #g_step:I
    const/16 v9, 0x14

    .line 1175
    .restart local v9       #g_value:I
    const/4 v4, 0x2

    .line 1176
    .restart local v4       #b_step:I
    const/16 v5, 0x14

    .line 1178
    .restart local v5       #b_value:I
    goto/16 :goto_1

    .end local v4           #b_step:I
    .end local v5           #b_value:I
    .end local v8           #g_step:I
    .end local v9           #g_value:I
    .end local v12           #r_step:I
    .end local v13           #r_value:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_13

    .line 1179
    const/4 v12, 0x2

    .line 1180
    .restart local v12       #r_step:I
    const/16 v13, 0x14

    .line 1181
    .restart local v13       #r_value:I
    const/4 v8, 0x1

    .line 1182
    .restart local v8       #g_step:I
    const/16 v9, 0x14

    .line 1183
    .restart local v9       #g_value:I
    const/4 v4, 0x3

    .line 1184
    .restart local v4       #b_step:I
    const/16 v5, 0x14

    .line 1185
    .restart local v5       #b_value:I
    goto/16 :goto_1

    .end local v4           #b_step:I
    .end local v5           #b_value:I
    .end local v8           #g_step:I
    .end local v9           #g_value:I
    .end local v12           #r_step:I
    .end local v13           #r_value:I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_14

    .line 1186
    const/4 v12, 0x2

    .line 1187
    .restart local v12       #r_step:I
    const/16 v13, 0x14

    .line 1188
    .restart local v13       #r_value:I
    const/4 v8, 0x3

    .line 1189
    .restart local v8       #g_step:I
    const/16 v9, 0x14

    .line 1190
    .restart local v9       #g_value:I
    const/4 v4, 0x1

    .line 1191
    .restart local v4       #b_step:I
    const/16 v5, 0x14

    .line 1192
    .restart local v5       #b_value:I
    goto/16 :goto_1

    .end local v4           #b_step:I
    .end local v5           #b_value:I
    .end local v8           #g_step:I
    .end local v9           #g_value:I
    .end local v12           #r_step:I
    .end local v13           #r_value:I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_16

    .line 1193
    const/4 v12, 0x1

    .line 1194
    .restart local v12       #r_step:I
    const/16 v13, 0x14

    .line 1196
    .restart local v13       #r_value:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_15

    .line 1197
    const/4 v8, 0x3

    .line 1198
    .restart local v8       #g_step:I
    const/16 v9, 0x14

    .line 1199
    .restart local v9       #g_value:I
    const/4 v4, 0x2

    .line 1200
    .restart local v4       #b_step:I
    const/16 v5, 0x14

    .line 1201
    .restart local v5       #b_value:I
    goto/16 :goto_1

    .line 1202
    .end local v4           #b_step:I
    .end local v5           #b_value:I
    .end local v8           #g_step:I
    .end local v9           #g_value:I
    :cond_15
    const/4 v8, 0x2

    .line 1203
    .restart local v8       #g_step:I
    const/16 v9, 0x14

    .line 1204
    .restart local v9       #g_value:I
    const/4 v4, 0x3

    .line 1205
    .restart local v4       #b_step:I
    const/16 v5, 0x14

    .line 1207
    .restart local v5       #b_value:I
    goto/16 :goto_1

    .line 1208
    .end local v4           #b_step:I
    .end local v5           #b_value:I
    .end local v8           #g_step:I
    .end local v9           #g_value:I
    .end local v12           #r_step:I
    .end local v13           #r_value:I
    :cond_16
    const/4 v12, 0x1

    .line 1209
    .restart local v12       #r_step:I
    const/16 v13, 0x14

    .line 1210
    .restart local v13       #r_value:I
    const/4 v8, 0x1

    .line 1211
    .restart local v8       #g_step:I
    const/16 v9, 0x14

    .line 1212
    .restart local v9       #g_value:I
    const/4 v4, 0x1

    .line 1213
    .restart local v4       #b_step:I
    const/16 v5, 0x14

    .restart local v5       #b_value:I
    goto/16 :goto_1

    .line 1262
    .restart local v2       #b_max_temp:I
    .restart local v3       #b_min_temp:I
    .restart local v6       #g_max_temp:I
    .restart local v7       #g_min_temp:I
    .restart local v10       #r_max_temp:I
    .restart local v11       #r_min_temp:I
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x3

    sub-int v18, v11, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    goto/16 :goto_2

    .line 1271
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0x14

    add-int/lit8 v18, v18, 0x28

    add-int v18, v18, v10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    goto/16 :goto_3

    .line 1286
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x3

    sub-int v18, v7, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    goto/16 :goto_4

    .line 1295
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0x14

    add-int/lit8 v18, v18, 0x28

    add-int v18, v18, v6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    goto/16 :goto_5

    .line 1310
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x3

    sub-int v18, v3, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    goto/16 :goto_6

    .line 1319
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0x14

    add-int/lit8 v18, v18, 0x28

    add-int v18, v18, v2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    goto/16 :goto_7
.end method

.method private _GetColorExtractionTouchRGB()V
    .locals 4

    .prologue
    .line 599
    const-string v0, "ColorExtractContainer"

    const-string v1, "[ColorExtractContainer] [CE] _GetColorExtractionTouchRGB() ~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 601
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    .line 603
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-r"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-r"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-r"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 606
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-r"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 607
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-r"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 608
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-r"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 609
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-r"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    .line 610
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setR_touch(I)V

    .line 611
    const-string v0, "ColorExtractContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ColorExtractContainer] [CE] getColorExtractionTouchRGB() ::  r_touch = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-g"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-g"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-g"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 623
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-g"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 624
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-g"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 625
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-g"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 626
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-g"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    .line 627
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setG_touch(I)V

    .line 628
    const-string v0, "ColorExtractContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ColorExtractContainer] [CE] getColorExtractionTouchRGB() ::  g_touch = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-b"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-b"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-b"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 640
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-b"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 641
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-b"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 642
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-b"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 643
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "pantech-color-extraction-coordinates-b"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    .line 644
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setB_touch(I)V

    .line 645
    const-string v0, "ColorExtractContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ColorExtractContainer] [CE] getColorExtractionTouchRGB() ::  b_touch = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_2
    :goto_2
    const-string v0, "ColorExtractContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ColorExtractContainer] [CE] getColorExtractionTouchRGB() ::  R = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " G = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 654
    const-string v2, " B = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_3
    return-void

    .line 614
    :cond_4
    const-string v0, "ColorExtractContainer"

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ColorExtractContainer] [CE] getColorExtractionTouchRGB(), mParameters.get = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "pantech-color-extraction-coordinates-r"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 615
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 631
    :cond_5
    const-string v0, "ColorExtractContainer"

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ColorExtractContainer] [CE] getColorExtractionTouchRGB(), mParameters.get = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 633
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "pantech-color-extraction-coordinates-g"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 632
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 648
    :cond_6
    const-string v0, "ColorExtractContainer"

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ColorExtractContainer] [CE] getColorExtractionTouchRGB(), mParameters.get = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "pantech-color-extraction-coordinates-b"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 649
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 647
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private _SetCEMode(Ljava/lang/String;)I
    .locals 2
    .parameter "mode"

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, index:I
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const/4 v0, 0x0

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    const-string v1, "color_touch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    const/4 v0, 0x1

    .line 231
    goto :goto_0

    :cond_2
    const-string v1, "color_red"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    const/4 v0, 0x2

    .line 233
    goto :goto_0

    :cond_3
    const-string v1, "color_green"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    const/4 v0, 0x3

    .line 235
    goto :goto_0

    :cond_4
    const-string v1, "color_blue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 236
    const/4 v0, 0x4

    .line 237
    goto :goto_0

    :cond_5
    const-string v1, "color_yellow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private _SetCameraParametersColorExtraction()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 787
    const-string v4, "ColorExtractContainer"

    const-string v5, "[ColorExtractContainer] [CE] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v4, "ColorExtractContainer"

    const-string v5, "[ColorExtractContainer] [CE] SetCameraParametersColorExtraction() ~~~~~~~~~~~~~~~~~~~~~~~~~~~ !!!!!"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v4, "ColorExtractContainer"

    const-string v5, "[ColorExtractContainer] [CE] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v4

    const-string v5, "pref_effect_color_extraction"

    .line 792
    const-string v6, "off"

    .line 791
    invoke-virtual {v4, v5, v6}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 794
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v4

    if-nez v4, :cond_1

    .line 795
    const-string v4, "ColorExtractContainer"

    const-string v5, "[ColorExtractContainer] [CE] SetCameraParametersColorExtraction() : return"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 807
    const-string v4, "%d, %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, rgb_r:Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "pantech-colorextraction-rgb-r"

    invoke-virtual {v4, v5, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v4, "%d, %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, rgb_g:Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "pantech-colorextraction-rgb-g"

    invoke-virtual {v4, v5, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v4, "%d, %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, rgb_b:Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "pantech-colorextraction-rgb-b"

    invoke-virtual {v4, v5, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "pantech-colorextraction"

    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtraction:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public InitializeColorExtract()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 150
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_SetCEMode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValue:I

    .line 151
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getColorExtValueOld()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValueOld:I

    .line 153
    const-string v0, "ColorExtractContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ColorExtractContainer] [CE] InitializeColorExtract() : iColorValue = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string v2, " iColorValueOld = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValueOld:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    .line 161
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValue:I

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValueOld:I

    if-eq v0, v1, :cond_1

    .line 162
    iput v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iInitIndex:I

    .line 163
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iInitIndex:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setColorExtCtrlIndex(I)V

    .line 170
    :goto_0
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iInitIndex:I

    if-ge v0, v3, :cond_0

    .line 171
    iput v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iInitIndex:I

    .line 174
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValue:I

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValueOld:I

    .line 175
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValueOld:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setColorExtValueOld(I)V

    .line 177
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getColorExtractionViewControl()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionViewControl:I

    .line 178
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getTouchedforColorExtraction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mTouchedforColorExtraction:Z

    .line 183
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getR_touch()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    .line 184
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getG_touch()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    .line 185
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getB_touch()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    .line 187
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iInitIndex:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->calColorLevel(I)V

    .line 189
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValue:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetGradation(I)V

    .line 191
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->SetCEMax(I)V

    .line 192
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iInitIndex:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->SetCEIndex(I)V

    .line 196
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getColorExtCtrlIndex()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iInitIndex:I

    goto :goto_0
.end method

.method public OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->vRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 309
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ivCEIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtraction:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    const/16 v0, 0x10

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iInitIndex:I

    .line 313
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iInitIndex:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setColorExtCtrlIndex(I)V

    .line 314
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iInitIndex:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->SetCEIndex(I)V

    .line 316
    const-string v0, "color_touch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetVisibility(I)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, p2}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_SetCEMode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValueOld:I

    .line 322
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValueOld:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setColorExtValueOld(I)V

    .line 325
    :cond_1
    invoke-direct {p0, p2}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_SetCEMode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValue:I

    .line 326
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValue:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetGradation(I)V

    .line 328
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_CEListener:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtractListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtractListener;->SetUpdateParameterCE()V

    .line 329
    return-void
.end method

.method public Release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 459
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->vRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 460
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 461
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    .line 462
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->lColorControlBar:Landroid/widget/LinearLayout;

    .line 463
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_CEListener:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtractListener;

    .line 464
    return-void
.end method

.method public SetColorExtractionControlListener(Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtractListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_CEListener:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtractListener;

    .line 125
    return-void
.end method

.method public SetColorExtractionLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 833
    const-string v0, "ColorExtractContainer"

    const-string v1, "[ColorExtractContainer] [CE] setColorExtractionLayout() "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 836
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionViewControl:I

    .line 837
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionViewControl:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setColorExtractionViewControl(I)V

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    if-eq v0, v2, :cond_0

    .line 841
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionViewControl:I

    .line 842
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionViewControl:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setColorExtractionViewControl(I)V

    goto :goto_0
.end method

.method public SetColorExtractionRGB()V
    .locals 12

    .prologue
    const/16 v11, 0x12

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0xff

    const/4 v7, 0x0

    .line 952
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v4

    const-string v5, "pref_effect_color_extraction"

    .line 953
    const-string v6, "off"

    .line 952
    invoke-virtual {v4, v5, v6}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 955
    .local v3, value:Ljava/lang/String;
    const-string v4, "ColorExtractContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[ColorExtractContainer] [CE] SetColorExtractionRGB() : color_level = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 958
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    .line 959
    iput v8, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    .line 960
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    .line 961
    iput v8, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    .line 962
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    .line 963
    iput v8, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    .line 1094
    :cond_0
    :goto_0
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    if-gez v4, :cond_1

    .line 1095
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    .line 1096
    :cond_1
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    if-le v4, v8, :cond_2

    .line 1097
    iput v8, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    .line 1098
    :cond_2
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    if-gez v4, :cond_3

    .line 1099
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    .line 1100
    :cond_3
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    if-le v4, v8, :cond_4

    .line 1101
    iput v8, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    .line 1102
    :cond_4
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    if-gez v4, :cond_5

    .line 1103
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    .line 1104
    :cond_5
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    if-le v4, v8, :cond_6

    .line 1105
    iput v8, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    .line 1107
    :cond_6
    const-string v4, "%d, %d"

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1108
    .local v2, rgb_r:Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4, v2}, Lcom/pantech/app/vegacamera/data/AppData;->setRGB_R(Ljava/lang/String;)V

    .line 1110
    const-string v4, "%d, %d"

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1111
    .local v1, rgb_g:Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setRGB_G(Ljava/lang/String;)V

    .line 1113
    const-string v4, "%d, %d"

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, rgb_b:Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4, v0}, Lcom/pantech/app/vegacamera/data/AppData;->setRGB_B(Ljava/lang/String;)V

    .line 1115
    .end local v0           #rgb_b:Ljava/lang/String;
    .end local v1           #rgb_g:Ljava/lang/String;
    .end local v2           #rgb_r:Ljava/lang/String;
    :goto_1
    return-void

    .line 964
    :cond_7
    const-string v4, "color_red"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 966
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    if-ltz v4, :cond_9

    .line 971
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    if-ge v4, v11, :cond_8

    .line 972
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    rsub-int/lit8 v4, v4, 0x7d

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    .line 979
    :goto_2
    iput v8, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    .line 980
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    .line 981
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    if-ltz v4, :cond_a

    .line 985
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    .line 989
    :goto_3
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    .line 990
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    if-ltz v4, :cond_b

    .line 994
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    goto/16 :goto_0

    .line 974
    :cond_8
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x2

    rsub-int/lit8 v4, v4, 0x7d

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    goto :goto_2

    .line 977
    :cond_9
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x78

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    goto :goto_2

    .line 987
    :cond_a
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x55

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    goto :goto_3

    .line 996
    :cond_b
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x55

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    goto/16 :goto_0

    .line 998
    :cond_c
    const-string v4, "color_green"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1001
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    .line 1002
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    if-ltz v4, :cond_d

    .line 1006
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    .line 1010
    :goto_4
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    if-ltz v4, :cond_e

    .line 1013
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    rsub-int/lit8 v4, v4, 0x3c

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    .line 1017
    :goto_5
    iput v8, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    .line 1018
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    .line 1019
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    if-ltz v4, :cond_f

    .line 1023
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    goto/16 :goto_0

    .line 1008
    :cond_d
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    goto :goto_4

    .line 1015
    :cond_e
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x78

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    goto :goto_5

    .line 1025
    :cond_f
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    goto/16 :goto_0

    .line 1027
    :cond_10
    const-string v4, "color_blue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1030
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    .line 1031
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    if-ltz v4, :cond_11

    .line 1036
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x46

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    .line 1040
    :goto_6
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    .line 1041
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    if-ltz v4, :cond_12

    .line 1046
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x78

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    .line 1050
    :goto_7
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    if-ltz v4, :cond_14

    .line 1053
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    if-ge v4, v11, :cond_13

    .line 1054
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    rsub-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    .line 1061
    :goto_8
    iput v8, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    goto/16 :goto_0

    .line 1038
    :cond_11
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x78

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    goto :goto_6

    .line 1048
    :cond_12
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x78

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    goto :goto_7

    .line 1056
    :cond_13
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x2

    rsub-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    goto :goto_8

    .line 1059
    :cond_14
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x78

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    goto :goto_8

    .line 1062
    :cond_15
    const-string v4, "color_yellow"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1065
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    if-ltz v4, :cond_16

    .line 1068
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    rsub-int v4, v4, 0x8c

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    .line 1072
    :goto_9
    iput v8, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    .line 1073
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    if-ltz v4, :cond_17

    .line 1076
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    rsub-int/lit8 v4, v4, 0x6e

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    .line 1080
    :goto_a
    iput v8, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    .line 1081
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    .line 1082
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    if-ltz v4, :cond_18

    .line 1086
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x78

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    goto/16 :goto_0

    .line 1070
    :cond_16
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit16 v4, v4, 0xaa

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    goto :goto_9

    .line 1078
    :cond_17
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit16 v4, v4, 0xaa

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    goto :goto_a

    .line 1088
    :cond_18
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    goto/16 :goto_0

    .line 1090
    :cond_19
    const-string v4, "color_touch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1
.end method

.method public SetColorExtractionTouch()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/high16 v7, -0x100

    const/4 v6, -0x1

    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 865
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_effect_color_extraction"

    .line 866
    const-string v3, "off"

    .line 865
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, value:Ljava/lang/String;
    const-string v1, "color_touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 869
    const-string v1, "ColorExtractContainer"

    const-string v2, "[ColorExtractContainer] [CE] SetColorExtractionTouch() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_GetColorExtractionTouchRGB()V

    .line 873
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    if-ne v1, v6, :cond_4

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    if-ne v1, v6, :cond_4

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    if-ne v1, v6, :cond_4

    .line 874
    :cond_1
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->touch_update_cnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->touch_update_cnt:I

    .line 875
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->touch_update_cnt:I

    if-ge v1, v8, :cond_2

    .line 876
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 877
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 879
    :cond_2
    const-string v1, "ColorExtractContainer"

    const-string v2, "[ColorExtractContainer] [CE] SetColorExtractionTouch() : return 111 ~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_3
    :goto_0
    return-void

    .line 881
    :cond_4
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch_temp:I

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch_temp:I

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch_temp:I

    if-ne v1, v2, :cond_6

    .line 882
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->touch_update_cnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->touch_update_cnt:I

    .line 883
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->touch_update_cnt:I

    if-ge v1, v8, :cond_5

    .line 884
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 885
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 887
    :cond_5
    const-string v1, "ColorExtractContainer"

    const-string v2, "[ColorExtractContainer] [CE] SetColorExtractionTouch() : return 222 ~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 890
    :cond_6
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch_temp:I

    .line 891
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch_temp:I

    .line 892
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch_temp:I

    .line 895
    const-string v1, "ColorExtractContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ColorExtractContainer] [CE] SetColorExtractionTouch() : R = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " G = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 896
    const-string v3, " B = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 895
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->rgb888:I

    .line 902
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    add-int/lit8 v1, v1, -0xa

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_gradient_temp:I

    .line 903
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    add-int/lit8 v1, v1, -0xa

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_gradient_temp:I

    .line 904
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    add-int/lit8 v1, v1, -0xa

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_gradient_temp:I

    .line 906
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_gradient_temp:I

    if-gez v1, :cond_7

    .line 907
    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_gradient_temp:I

    .line 908
    :cond_7
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_gradient_temp:I

    if-gez v1, :cond_8

    .line 909
    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_gradient_temp:I

    .line 910
    :cond_8
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_gradient_temp:I

    if-gez v1, :cond_9

    .line 911
    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_gradient_temp:I

    .line 914
    :cond_9
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_gradient_temp:I

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v7

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_gradient_temp:I

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_gradient_temp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->rgb888:I

    .line 916
    const-string v1, "ColorExtractContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ColorExtractContainer] [CE] SetColorExtractionTouch() : rgb888 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->rgb888:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->rgb888_2:I

    .line 919
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    add-int/lit8 v1, v1, 0x46

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_gradient_temp:I

    .line 920
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    add-int/lit8 v1, v1, 0x46

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_gradient_temp:I

    .line 921
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    add-int/lit8 v1, v1, 0x46

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_gradient_temp:I

    .line 923
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_gradient_temp:I

    if-le v1, v5, :cond_a

    .line 924
    iput v5, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_gradient_temp:I

    .line 925
    :cond_a
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_gradient_temp:I

    if-le v1, v5, :cond_b

    .line 926
    iput v5, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_gradient_temp:I

    .line 927
    :cond_b
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_gradient_temp:I

    if-le v1, v5, :cond_c

    .line 928
    iput v5, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_gradient_temp:I

    .line 930
    :cond_c
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_gradient_temp:I

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v7

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_gradient_temp:I

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_gradient_temp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->rgb888_2:I

    .line 932
    const-string v1, "ColorExtractContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ColorExtractContainer] [CE] SetColorExtractionTouch() : rgb888_2 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->rgb888_2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const/4 v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionViewControl:I

    .line 939
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionViewControl:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->setColorExtractionViewControl(I)V

    .line 940
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetVisibility(I)V

    .line 944
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetGradationTouch()V

    .line 946
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetColorExtractionRGB_Touch()V

    .line 947
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_SetCameraParametersColorExtraction()V

    goto/16 :goto_0
.end method

.method public SetColorExtractionView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 847
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    if-eqz v0, :cond_0

    .line 848
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    if-ne v0, v1, :cond_2

    .line 849
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionViewControl:I

    if-ne v0, v1, :cond_1

    .line 850
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetColorExtractionRGB_Touch()V

    .line 860
    :goto_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_SetCameraParametersColorExtraction()V

    .line 862
    :cond_0
    return-void

    .line 853
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    .line 854
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->resetColorExtractionRGB()V

    goto :goto_0

    .line 857
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetColorExtractionRGB()V

    goto :goto_0
.end method

.method public SetGradation(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 244
    packed-switch p1, :pswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->lColorControlBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ivCEIcon:Landroid/widget/ImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_color_point_touch:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_color_point_pallet_touch:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->SetBarBackground(I)V

    .line 251
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetGradationTouch()V

    goto :goto_0

    .line 254
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ivCEIcon:Landroid/widget/ImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_color_point_red:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_color_point_pallet_red:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->SetBarBackground(I)V

    goto :goto_0

    .line 258
    :pswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ivCEIcon:Landroid/widget/ImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_color_point_green:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_color_point_pallet_green:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->SetBarBackground(I)V

    goto :goto_0

    .line 262
    :pswitch_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ivCEIcon:Landroid/widget/ImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_color_point_blue:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_color_point_pallet_blue:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->SetBarBackground(I)V

    goto :goto_0

    .line 266
    :pswitch_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ivCEIcon:Landroid/widget/ImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_color_point_yellow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_color_point_pallet_yellow:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->SetBarBackground(I)V

    goto :goto_0

    .line 244
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

.method public SetGradationTouch()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 275
    const-string v2, "ColorExtractContainer"

    const-string v3, "[ColorExtractContainer] [CE] SetGradationTouch()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->rgb888:I

    .line 288
    .local v1, startColor:I
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->rgb888_2:I

    .line 289
    .local v0, endColor:I
    const-string v2, "ColorExtractContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ColorExtractContainer] [CE] SetGradationTouch() : startColor = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " endColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 290
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    const-string v2, "ColorExtractContainer"

    const-string v3, "[ColorExtractContainer] [CE] SetGradationTouch() : return 2"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_0
    return-void

    .line 297
    :cond_1
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v5

    aput v1, v4, v6

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 299
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 300
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    goto :goto_0
.end method

.method public SetVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->getColorExtractionVisibility()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointVisibility:Z

    .line 337
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointVisibility:Z

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->lColorControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    if-nez p1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->lColorControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 342
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->setEnabled(Z)V

    .line 357
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->vRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 346
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->lColorControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 347
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->setEnabled(Z)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->vRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 352
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->lColorControlBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->lColorControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public _InitColorExtractValues()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 216
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValue:I

    .line 217
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValueOld:I

    .line 218
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iColorValueOld:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setColorExtValueOld(I)V

    .line 219
    const/16 v0, 0x10

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iInitIndex:I

    .line 220
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->iInitIndex:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setColorExtCtrlIndex(I)V

    .line 221
    return-void
.end method

.method public _InitializeLayoutCtl()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->ce_control_bars:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->lColorControlBar:Landroid/widget/LinearLayout;

    .line 200
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->lColorControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 201
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 202
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->lColorControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->ce_image:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ivCEIcon:Landroid/widget/ImageView;

    .line 205
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ivCEIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->ce_control_bar:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/CEControlBar;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    .line 208
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->Initialize(Landroid/content/Context;)V

    .line 209
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->SetOnColorChangeListener(Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;)V

    .line 210
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mCECtlBar:Lcom/pantech/app/vegacamera/ui/CEControlBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->setEnabled(Z)V

    .line 212
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetVisibility(I)V

    .line 213
    return-void
.end method

.method public calColorLevel(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 378
    const-string v1, "ColorExtractContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ColorExtractContainer] [CE] calColorLevel() : index : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    add-int/lit8 v0, p1, -0x10

    .line 383
    .local v0, temp:I
    if-gez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 387
    :cond_0
    div-int/lit8 v1, v0, 0x6

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    .line 389
    const-string v1, "ColorExtractContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ColorExtractContainer] [CE] calColorLevel() : color_level : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public checkColorExtraction()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 563
    const-string v1, "ColorExtractContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ColorExtractContainer] [CE] checkColorExtraction() : mColorExtractionMode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_effect_color_extraction"

    .line 566
    const-string v3, "off"

    .line 565
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, value:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionViewControl:I

    .line 574
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionViewControl:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->setColorExtractionViewControl(I)V

    .line 575
    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    .line 576
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->resetColorExtractionRGB()V

    .line 577
    invoke-virtual {p0, v5, v5}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->setColorExtractionXYpoint(II)V

    .line 579
    iput v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->prevColorExtractionMode:I

    .line 580
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->prevColorExtractionMode:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->setPrevColorExtractionMode(I)V

    .line 584
    :cond_0
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 596
    return-void
.end method

.method public getColorExtractionVisibility()Z
    .locals 5

    .prologue
    .line 1350
    const/4 v0, 0x0

    .line 1352
    .local v0, result:Z
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_color_extraction"

    .line 1353
    const-string v4, "off"

    .line 1352
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1355
    .local v1, value:Ljava/lang/String;
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1356
    const/4 v0, 0x0

    .line 1359
    :cond_0
    const-string v2, "color_touch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1360
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->getColorExtractionViewControl()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1361
    const/4 v0, 0x1

    .line 1369
    :goto_0
    return v0

    .line 1363
    :cond_1
    const/4 v0, 0x0

    .line 1365
    goto :goto_0

    .line 1366
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, -0x2

    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/pantech/app/vegacamera/R$id;->ce_image:I

    if-ne v3, v4, :cond_0

    .line 362
    const-string v3, "ColorExtractContainer"

    const-string v4, "[ColorExtractContainer] [CE] onClick() "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 365
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v3, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_sub_list:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->vRootView:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;

    .line 366
    .local v2, popup:Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->Initialize(Lcom/pantech/app/vegacamera/preference/ListPreference;)V

    .line 367
    invoke-virtual {v2, p0}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->setSubPopupListener(Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$SubPopupListener;)V

    .line 368
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 369
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 370
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x1

    sget v4, Lcom/pantech/app/vegacamera/R$id;->menu_control_bar:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 371
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->vRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ivCEIcon:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #popup:Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;
    :cond_0
    return-void
.end method

.method public onColorBarTouchEvent(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 416
    const-string v0, "ColorExtractContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ColorExtractContainer] [CE] onColorBarTouchEvent() : pressed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public onColorStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 411
    const-string v0, "ColorExtractContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ColorExtractContainer] [CE] onColorStateChanged() : state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public onColorValueChanged(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 394
    const-string v0, "ColorExtractContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ColorExtractContainer] [CE] onColorValueChanged() : index : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData;->setColorExtCtrlIndex(I)V

    .line 397
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->calColorLevel(I)V

    .line 399
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetColorExtractionRGB()V

    .line 400
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetColorExtractionRGB_Touch()V

    .line 402
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_SetCameraParametersColorExtraction()V

    .line 404
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_CEListener:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtractListener;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_CEListener:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtractListener;

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtractListener;->SetColorExtractionChangeNotify(I)V

    .line 407
    :cond_0
    return-void
.end method

.method public onSingleTabUp(Lcom/pantech/app/vegacamera/operator/IOperInterface;II)V
    .locals 4
    .parameter "ioperInterface"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 420
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_effect_color_extraction"

    .line 421
    const-string v3, "off"

    .line 420
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, value:Ljava/lang/String;
    const-string v1, "color_touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    const-string v1, "ColorExtractContainer"

    const-string v2, "[CE] --------------------------------------------------------"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v1, "ColorExtractContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ColorExtractContainer] [CE] onSingleTapUp() x "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v1, "ColorExtractContainer"

    const-string v2, "[CE] --------------------------------------------------------"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    const-string v1, "color_touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mTouchedforColorExtraction:Z

    .line 445
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mTouchedforColorExtraction:Z

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->setTouchedforColorExtraction(Z)V

    .line 446
    invoke-virtual {p0, p2, p3}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->setColorExtractionXYpoint(II)V

    goto :goto_0
.end method

.method public resetColorExtractionRGB()V
    .locals 3

    .prologue
    const/16 v0, 0xff

    const/4 v2, 0x0

    .line 509
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_min:I

    .line 510
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_max:I

    .line 511
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_min:I

    .line 512
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_max:I

    .line 513
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_min:I

    .line 514
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_max:I

    .line 516
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    .line 517
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    .line 518
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    .line 520
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setR_touch(I)V

    .line 521
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setG_touch(I)V

    .line 522
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setB_touch(I)V

    .line 524
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->r_touch_temp:I

    .line 525
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->g_touch_temp:I

    .line 526
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->b_touch_temp:I

    .line 527
    return-void
.end method

.method public setCameraData(Lcom/pantech/app/vegacamera/PreviewFrameLayout;)V
    .locals 0
    .parameter "nPreviewFrameLayout"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    .line 497
    return-void
.end method

.method public setColorExtractionFocus()V
    .locals 7

    .prologue
    const/16 v6, 0x15

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 660
    const-string v1, "ColorExtractContainer"

    const-string v2, "[CE] ----------------------------------------------------------------------------------------------"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v1, "ColorExtractContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ColorExtractContainer] [CE] setColorExtractionFocus() : ColorExtXpoint = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ColorExtXpoint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 662
    const-string v3, " ColorExtXpoint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ColorExtYpoint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 661
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v1, "ColorExtractContainer"

    const-string v2, "[CE] ----------------------------------------------------------------------------------------------"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_effect_color_extraction"

    .line 666
    const-string v3, "off"

    .line 665
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, value:Ljava/lang/String;
    const-string v1, "color_touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ColorExtXpoint:I

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ColorExtYpoint:I

    if-ne v1, v4, :cond_2

    .line 683
    const-string v1, "ColorExtractContainer"

    const-string v2, "[ColorExtractContainer] [CE] setColorExtractionFocus() : return [2]"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :cond_2
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mTouchedforColorExtraction:Z

    if-nez v1, :cond_3

    .line 692
    const-string v1, "ColorExtractContainer"

    const-string v2, "[ColorExtractContainer] [CE] setColorExtractionFocus() : return [3]"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_3
    iput-boolean v5, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mTouchedforColorExtraction:Z

    .line 697
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mTouchedforColorExtraction:Z

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->setTouchedforColorExtraction(Z)V

    .line 700
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ColorExtXpoint:I

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ColorExtYpoint:I

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->setColorExtractionFocusPointer(II)V

    .line 702
    iput v5, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->touch_update_cnt:I

    .line 704
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 705
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 706
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setColorExtractionFocusPointer(II)V
    .locals 10
    .parameter "RawX"
    .parameter "RawY"

    .prologue
    .line 712
    const-string v6, "ColorExtractContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ColorExtractContainer] [CE] setColorExtractionFocusPointer() ::  RawX = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " || RawY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 713
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 712
    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const/4 v3, -0x1

    .line 716
    .local v3, xPoint:I
    const/4 v5, -0x1

    .line 718
    .local v5, yPoint:I
    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v6

    if-nez v6, :cond_1

    .line 719
    const-string v6, "ColorExtractContainer"

    const-string v7, "[ColorExtractContainer] [CE] setColorExtractionFocusPointer() : return"

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    move v3, p1

    .line 726
    move v5, p2

    .line 729
    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getLeft()I

    move-result v6

    sub-int v6, v3, v6

    int-to-float v2, v6

    .line 730
    .local v2, x:F
    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getTop()I

    move-result v6

    sub-int v6, v5, v6

    int-to-float v4, v6

    .line 732
    .local v4, y:F
    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    .line 734
    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mParam:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 736
    .local v1, s:Landroid/hardware/Camera$Size;
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v3, v6

    .line 737
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    iget-object v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v5, v6

    .line 739
    const-string v6, "%d, %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, coordinates:Ljava/lang/String;
    const-string v6, "ColorExtractContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ColorExtractContainer] [CE] coordinates = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v6

    if-eqz v6, :cond_0

    .line 743
    const-string v6, "ColorExtractContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ColorExtractContainer] [CE] Color Extraction Coordinates is ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-string v7, "pantech-color-extraction-coordinates"

    invoke-virtual {v6, v7, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v7, v7, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0
.end method

.method public setColorExtractionMode(Ljava/lang/String;)V
    .locals 3
    .parameter "mdecolorationMode"

    .prologue
    .line 750
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    sget-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_OFF:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtraction:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    .line 752
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    .line 753
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->_InitColorExtractValues()V

    .line 771
    :cond_0
    :goto_0
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    if-nez v0, :cond_6

    .line 772
    const-string v0, "ColorExtractContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ColorExtractContainer] [CE] setColorExtractionMode() : mColorExtractionMode =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 773
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtraction:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 772
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :goto_1
    return-void

    .line 754
    :cond_1
    const-string v0, "color_touch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    sget-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_TOUCH:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtraction:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    .line 756
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    goto :goto_0

    .line 757
    :cond_2
    const-string v0, "color_red"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 758
    sget-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_RED:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtraction:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    .line 759
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    goto :goto_0

    .line 760
    :cond_3
    const-string v0, "color_green"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 761
    sget-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_GREEN:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtraction:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    .line 762
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    goto :goto_0

    .line 763
    :cond_4
    const-string v0, "color_blue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 764
    sget-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_BLUE:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtraction:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    .line 765
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    goto :goto_0

    .line 766
    :cond_5
    const-string v0, "color_yellow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    sget-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_YELLOW:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtraction:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    .line 768
    const/4 v0, 0x5

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    goto :goto_0

    .line 775
    :cond_6
    const-string v0, "ColorExtractContainer"

    const-string v1, "[CE] ------------------------------------------------------  "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v0, "ColorExtractContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ColorExtractContainer] [CE] setColorExtractionMode() : mColorExtractionMode =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 777
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtraction:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v0, "ColorExtractContainer"

    const-string v1, "[CE] ------------------------------------------------------  "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setColorExtractionXYpoint(II)V
    .locals 3
    .parameter "Xpoint"
    .parameter "Ypoint"

    .prologue
    .line 500
    const-string v0, "ColorExtractContainer"

    const-string v1, "[ColorExtractContainer] [CE] ----------------------------------------------------------------"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v0, "ColorExtractContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ColorExtractContainer] [CE] setColorExtractionXYpoint() : Xpoint = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Ypoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v0, "ColorExtractContainer"

    const-string v1, "[ColorExtractContainer] [CE] ----------------------------------------------------------------"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ColorExtXpoint:I

    .line 504
    iput p2, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->ColorExtYpoint:I

    .line 505
    return-void
.end method

.method public updateParmColorExtraction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 530
    const-string v0, "ColorExtractContainer"

    const-string v1, "[ColorExtractContainer] [CE] updateParmColorExtraction()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->checkColorExtraction()V

    .line 534
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getPrevColorExtractionMode()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->prevColorExtractionMode:I

    .line 540
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->prevColorExtractionMode:I

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    if-eq v0, v1, :cond_0

    .line 541
    iput v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionViewControl:I

    .line 542
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionViewControl:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setColorExtractionViewControl(I)V

    .line 543
    iput v3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->color_level:I

    .line 544
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->resetColorExtractionRGB()V

    .line 546
    invoke-virtual {p0, v2, v2}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->setColorExtractionXYpoint(II)V

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetColorExtractionRGB()V

    .line 554
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetColorExtractionRGB_Touch()V

    .line 555
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetColorExtractionLayout()V

    .line 557
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorExtractionMode:I

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->prevColorExtractionMode:I

    .line 558
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->prevColorExtractionMode:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setPrevColorExtractionMode(I)V

    .line 560
    return-void
.end method
