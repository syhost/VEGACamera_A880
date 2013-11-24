.class public Lcom/pantech/app/vegacamera/controller/InformationAreaController;
.super Ljava/lang/Object;
.source "InformationAreaController.java"


# static fields
.field public static final STATE_LOC_FAIL:I = 0x1

.field public static final STATE_LOC_OFF:I = 0x0

.field public static final STATE_LOC_SEARCHED:I = 0x3

.field public static final STATE_LOC_SEARCHING:I = 0x2


# instance fields
.field private InformationCount:I

.field private mGps:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field private mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

.field mLocMgr:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

.field private mLocalVoice:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field private mPictureSize:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field private mTimer:Lcom/pantech/app/vegacamera/ui/RotateImageView;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V
    .locals 2
    .parameter "layout"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 18
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mTimer:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 19
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocalVoice:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 20
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mGps:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 21
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mPictureSize:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->InformationCount:I

    .line 25
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocMgr:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    .line 33
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 34
    return-void
.end method

.method private _LocalVoiceIndicator()V
    .locals 4

    .prologue
    .line 113
    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->indicator_voice:I

    .line 114
    .local v1, voiceTrigger:I
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->indicator_voice_dim:I

    .line 116
    .local v0, voiceNotTrigger:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->GetCurrentOnoffState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->GetCurrentTriggerState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocalVoice:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocalVoice:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    .line 126
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocalVoice:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocalVoice:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 128
    iget v2, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->InformationCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->InformationCount:I

    .line 135
    :cond_1
    :goto_1
    return-void

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocalVoice:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocalVoice:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocalVoice:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocalVoice:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private _PictureSizeIndicator()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 178
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v5

    const-string v6, "pref_setting_picture_size"

    .line 179
    iget-object v7, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v7, v7, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v8, Lcom/pantech/app/vegacamera/R$string;->pref_setting_picture_size_default:I

    invoke-virtual {v7, v8}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-virtual {v5, v6, v7}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, size:Ljava/lang/String;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$array;->setting_picture_size_icons:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 181
    .local v0, array:Landroid/content/res/TypedArray;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$array;->setting_picture_size_entryvalues:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, str:[Ljava/lang/String;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    instance-of v5, v5, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;

    if-eqz v5, :cond_1

    .line 184
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v5

    const-string v6, "pref_setting_record_size"

    .line 185
    iget-object v7, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v7, v7, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v8, Lcom/pantech/app/vegacamera/R$string;->pref_setting_record_size_default:I

    invoke-virtual {v7, v8}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 184
    invoke-virtual {v5, v6, v7}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$array;->setting_record_size_icons:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 187
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$array;->setting_record_size_entryvalues:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 194
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, n:I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 200
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v5, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/Camera;->IsVideoCaptureIntent()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 201
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mPictureSize:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 206
    :goto_2
    return-void

    .line 188
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    instance-of v5, v5, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;

    if-eqz v5, :cond_0

    .line 189
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v6, Lcom/pantech/app/vegacamera/R$string;->effects_video_size:I

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 190
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$array;->setting_record_size_icons:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 191
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$array;->setting_record_size_entryvalues:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 195
    .restart local v1       #i:I
    .restart local v2       #n:I
    :cond_2
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 196
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mPictureSize:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    .line 194
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 203
    :cond_4
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mPictureSize:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v5, v9}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 204
    iget v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->InformationCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->InformationCount:I

    goto :goto_2
.end method

.method private _TimerIndicator()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 94
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v5

    const-string v6, "pref_setting_timershot"

    .line 95
    iget-object v7, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v7, v7, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v8, Lcom/pantech/app/vegacamera/R$string;->pref_setting_timershot_default:I

    invoke-virtual {v7, v8}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-virtual {v5, v6, v7}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, timer:Ljava/lang/String;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$array;->setting_timershot_icons:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, array:Landroid/content/res/TypedArray;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$array;->setting_timershot_entryvalues:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, str:[Ljava/lang/String;
    aget-object v5, v3, v9

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsTimerShotEnable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 100
    :cond_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mTimer:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v3

    .local v2, n:I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 107
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mTimer:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v5, v9}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 108
    iget v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->InformationCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->InformationCount:I

    goto :goto_0

    .line 103
    :cond_2
    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mTimer:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    .line 102
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public Release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocMgr:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocMgr:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->Stop()V

    .line 83
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocMgr:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->Release()V

    .line 84
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocMgr:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    .line 86
    :cond_0
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mTimer:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 87
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocalVoice:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 88
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mGps:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 89
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mPictureSize:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 90
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 91
    return-void
.end method

.method public SetVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_INFORMATION_AREA:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->InformationCount:I

    .line 65
    if-nez p1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->_TimerIndicator()V

    .line 67
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->_LocalVoiceIndicator()V

    .line 68
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->_GpsIndicator(I)V

    .line 69
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->_PictureSizeIndicator()V

    .line 71
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->InformationCount:I

    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_INFORMATION_AREA:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_INFORMATION_AREA:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public Start()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mTimer:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_INDICATOR_TIMER:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mTimer:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->GetRotateControlInstance()Lcom/pantech/app/vegacamera/controller/RotateControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mTimer:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocalVoice:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_INDICATOR_LOCAL_VOICE:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocalVoice:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->GetRotateControlInstance()Lcom/pantech/app/vegacamera/controller/RotateControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocalVoice:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mGps:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_INDICATOR_GPS:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mGps:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 47
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->GetRotateControlInstance()Lcom/pantech/app/vegacamera/controller/RotateControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mGps:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocMgr:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    if-nez v0, :cond_2

    .line 50
    new-instance v0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-direct {v0, v1, p0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;Lcom/pantech/app/vegacamera/controller/InformationAreaController;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocMgr:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mPictureSize:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-nez v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_INDICATOR_PICTURE_SIZE:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mPictureSize:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->GetRotateControlInstance()Lcom/pantech/app/vegacamera/controller/RotateControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mPictureSize:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 57
    :cond_3
    return-void
.end method

.method protected _GpsIndicator(I)V
    .locals 10
    .parameter "visibility"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 138
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_gps_info"

    .line 140
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_gps_info_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, str:Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 142
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocMgrState()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 143
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mGps:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    sget v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->RESOURCE_INDICATOR_GPS_ON:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    .line 150
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mGps:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v1, v7}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 151
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->InformationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->InformationCount:I

    .line 157
    :goto_1
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->InformationCount:I

    if-ne v1, v8, :cond_6

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocMgrState()I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 158
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocMgr:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->Start()V

    .line 175
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 144
    .restart local v0       #str:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocMgrState()I

    move-result v1

    if-eq v1, v8, :cond_3

    .line 145
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocMgrState()I

    move-result v1

    if-nez v1, :cond_4

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mGps:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    sget v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->RESOURCE_INDICATOR_GPS_OFF:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 147
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocMgrState()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 148
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mGps:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    sget v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->RESOURCE_INDICATOR_GPS_OFF:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 153
    :cond_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mGps:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    sget v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->RESOURCE_INDICATOR_GPS_OFF:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    .line 154
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mGps:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1, v9}, Lcom/pantech/app/vegacamera/data/AppData;->SetLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 161
    :cond_6
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 162
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocMgrState()I

    move-result v1

    if-eq v1, v6, :cond_7

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocMgrState()I

    move-result v1

    if-eq v1, v5, :cond_7

    .line 163
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocMgr:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->Start()V

    goto :goto_2

    .line 164
    :cond_7
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocMgrState()I

    move-result v1

    if-ne v1, v6, :cond_8

    .line 165
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mGps:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    sget v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->RESOURCE_INDICATOR_GPS_ON:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    .line 166
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocMgr:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->Stop()V

    goto/16 :goto_2

    .line 167
    :cond_8
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1, v7}, Lcom/pantech/app/vegacamera/data/AppData;->SetLocMgrState(I)V

    .line 169
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocMgr:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->Stop()V

    .line 170
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1, v9}, Lcom/pantech/app/vegacamera/data/AppData;->SetLocation(Landroid/location/Location;)V

    goto/16 :goto_2
.end method

.method public setLocMGRState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v1, :cond_0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/data/AppData;->SetLocMgrState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
