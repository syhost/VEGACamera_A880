.class public Lcom/pantech/app/vegacamera/controller/MenuContainer;
.super Ljava/lang/Object;
.source "MenuContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;,
        Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuContainer"


# instance fields
.field final DEFAUT_MENU_ITEMS:[Ljava/lang/String;

.field final EFFECT_MENU_ITEMS:[Ljava/lang/String;

.field final MODE_MENU_ITEMS:[Ljava/lang/String;

.field final SETTINGS_MENU_ITEMS:[Ljava/lang/String;

.field private mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

.field private mListener:Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

.field private mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V
    .locals 8
    .parameter "layout"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mListener:Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 17
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "pref_flash_mode_camera"

    aput-object v1, v0, v3

    const-string v1, "pref_flash_mode_video"

    aput-object v1, v0, v4

    .line 18
    const-string v1, "pref_camera_id_status"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->DEFAUT_MENU_ITEMS:[Ljava/lang/String;

    .line 21
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_mode_normal"

    aput-object v1, v0, v3

    const-string v1, "pref_mode_intelligent"

    aput-object v1, v0, v4

    .line 22
    const-string v1, "pref_mode_hdr"

    aput-object v1, v0, v5

    const-string v1, "pref_mode_face_effect"

    aput-object v1, v0, v6

    const-string v1, "pref_mode_beauty"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 23
    const-string v2, "pref_mode_best_face"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_mode_text"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_mode_remote"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 24
    const-string v2, "pref_mode_self"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_mode_panorama"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_mode_video_timelapse"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->MODE_MENU_ITEMS:[Ljava/lang/String;

    .line 27
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_effect_none"

    aput-object v1, v0, v3

    const-string v1, "pref_effect_water_color_pencil"

    aput-object v1, v0, v4

    .line 28
    const-string v1, "pref_effect_cartoon"

    aput-object v1, v0, v5

    const-string v1, "pref_effect_poster_color"

    aput-object v1, v0, v6

    const-string v1, "pref_effect_poster_b_n_w"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 29
    const-string v2, "pref_effect_dot_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_effect_dot_b_n_w"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_effect_neon"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 30
    const-string v2, "pref_effect_embossing"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_effect_color_mono"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_effect_color_sepia"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 31
    const-string v2, "pref_effect_color_aqua"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pref_effect_color_extraction"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->EFFECT_MENU_ITEMS:[Ljava/lang/String;

    .line 34
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_setting_collect_type"

    aput-object v1, v0, v3

    const-string v1, "pref_setting_picture_size"

    aput-object v1, v0, v4

    .line 35
    const-string v1, "pref_setting_record_size"

    aput-object v1, v0, v5

    const-string v1, "pref_setting_timershot"

    aput-object v1, v0, v6

    const-string v1, "pref_setting_ev"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 36
    const-string v2, "pref_setting_wb"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_setting_iso"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_setting_photometry"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 37
    const-string v2, "pref_setting_grid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_setting_goto_viewer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_setting_focus_mode"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 38
    const-string v2, "pref_setting_anti_banding"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pref_setting_gps_info"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pref_setting_low_light"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 39
    const-string v2, "pref_setting_continuous_shot"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pref_setting_mirror"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 40
    const-string v2, "pref_setting_voice_record"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "pref_setting_shutter_sound"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 41
    const-string v2, "pref_setting_anti_shake"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "pref_setting_reset"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "pref_setting_storage_location"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->SETTINGS_MENU_ITEMS:[Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 64
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->Init()V

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/MenuContainer;)Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mListener:Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

    return-object v0
.end method


# virtual methods
.method public CloseAllDepth()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "MenuContainer"

    const-string v1, "[MenuController] CloseAllDepth()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->CloseMenuItemAllDepth()Z

    .line 146
    :cond_0
    return-void
.end method

.method public CloseSubDepth()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "MenuContainer"

    const-string v1, "[MenuController] CloseSubDepth()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->CloseMenuItemSubDepth()Z

    .line 153
    :cond_0
    return-void
.end method

.method public ClosedMenuItem()V
    .locals 2

    .prologue
    .line 135
    const-string v0, "MenuContainer"

    const-string v1, "[MenuController] ClosedMenuItem()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->ClosedMenuItem()V

    .line 139
    :cond_0
    return-void
.end method

.method public DepthAct()Z
    .locals 2

    .prologue
    .line 119
    const-string v0, "MenuContainer"

    const-string v1, "[MenuController] CameraMenuDepthAct()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->GetActivePopupWindow()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DisableMenuItemButton(I)V
    .locals 2
    .parameter "item"

    .prologue
    .line 184
    const-string v0, "MenuContainer"

    const-string v1, "[MenuController] DisableMenuItemButton()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->DisableMenuItemButton(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public DisableMenuItemButtonSound()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "MenuContainer"

    const-string v1, "[MenuController] DisableMenuItemButtonSound()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->DisableButtonSound()V

    .line 167
    :cond_0
    return-void
.end method

.method public EnableMenuItemButton(I)V
    .locals 2
    .parameter "item"

    .prologue
    .line 177
    const-string v0, "MenuContainer"

    const-string v1, "[MenuController] EnableMenuItemButton()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->EnableMenuItemButton(I)V

    .line 181
    :cond_0
    return-void
.end method

.method public EnableMenuItemButtonSound()V
    .locals 2

    .prologue
    .line 170
    const-string v0, "MenuContainer"

    const-string v1, "[MenuController] EnableMenuItemButtonSound()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->EnableButtonSound()V

    .line 174
    :cond_0
    return-void
.end method

.method public Init()V
    .locals 3

    .prologue
    .line 68
    const-string v0, "MenuContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] Init() :: this.mMenuControlContainer is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->menu_control_bar:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    .line 72
    :cond_0
    return-void
.end method

.method public Release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    const-string v0, "MenuContainer"

    const-string v1, "[MenuController] Release()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mListener:Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

    .line 91
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->Release()V

    .line 92
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    .line 93
    return-void
.end method

.method public ReloadPreference()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->ReloadPreference()V

    .line 116
    :cond_0
    return-void
.end method

.method public SetEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 96
    const-string v0, "MenuContainer"

    const-string v1, "[MenuController] setEnable()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->setEnabled(Z)V

    .line 100
    :cond_0
    return-void
.end method

.method public SetOnMenuContainerLister(Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 54
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mListener:Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mListener:Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->SetListener(Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    new-instance v1, Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;-><init>(Lcom/pantech/app/vegacamera/controller/MenuContainer;Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->SetListener(Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;)V

    goto :goto_0
.end method

.method public SetOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->setOrientation(I)V

    .line 110
    :cond_0
    return-void
.end method

.method public SetVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->setVisibility(I)V

    .line 104
    return-void
.end method

.method public ShowMenuItemButton(I)V
    .locals 2
    .parameter "item"

    .prologue
    .line 156
    const-string v0, "MenuContainer"

    const-string v1, "[MenuController] ShowMenuItemButton()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->ShowMenuItemButton(I)V

    .line 160
    :cond_0
    return-void
.end method

.method public Start()V
    .locals 6

    .prologue
    .line 75
    const-string v0, "MenuContainer"

    const-string v1, "[MenuController] Start()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->DEFAUT_MENU_ITEMS:[Ljava/lang/String;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->MODE_MENU_ITEMS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->EFFECT_MENU_ITEMS:[Ljava/lang/String;

    .line 77
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->SETTINGS_MENU_ITEMS:[Ljava/lang/String;

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->Initialize(Lcom/pantech/app/vegacamera/data/AppData;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    new-instance v1, Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;-><init>(Lcom/pantech/app/vegacamera/controller/MenuContainer;Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->SetListener(Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;)V

    .line 79
    return-void
.end method

.method public Stop()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "MenuContainer"

    const-string v1, "[MenuController] Stop()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->CloseMenuItemAllDepth()Z

    .line 86
    :cond_0
    return-void
.end method

.method public SubDepthAct()Z
    .locals 2

    .prologue
    .line 127
    const-string v0, "MenuContainer"

    const-string v1, "[MenuController] CameraMenuSubDepthAct()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer;->mMenuControlContainer:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->GetActiveSubPopupWindow()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
