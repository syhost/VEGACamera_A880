.class public Lcom/pantech/app/vegacamera/data/AppData;
.super Lcom/pantech/app/vegacamera/data/AppDataBase;
.source "AppData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/data/AppData$FocusData;
    }
.end annotation


# instance fields
.field private RGB_B:Ljava/lang/String;

.field private RGB_G:Ljava/lang/String;

.field private RGB_R:Ljava/lang/String;

.field private bBurstState:Z

.field private bShutterTimerActionStarted:Z

.field private b_touch:I

.field private g_touch:I

.field private iDeviceState:I

.field private iEffectsState:I

.field private iFaceEffectsIndex:I

.field private iPanoramaCaptureState:I

.field private is4648test:Z

.field private isHeadsetPlugged:Z

.field private mColorCtrlIndex:I

.field private mColorExtractionViewControl:I

.field private mColorValueOld:I

.field private mComboPref:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

.field private mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

.field private mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

.field protected mLocMgrState:I

.field private mLocation:Landroid/location/Location;

.field private mParam:Landroid/hardware/Camera$Parameters;

.field private mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

.field private mPrevColorExtractionMode:I

.field private mSaveUri:Landroid/net/Uri;

.field private mTouchedforColorExtraction:Z

.field private r_touch:I

.field private sCropValue:Ljava/lang/String;

.field private sWdrState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/data/AppDataBase;-><init>()V

    .line 17
    iput-object v2, p0, Lcom/pantech/app/vegacamera/data/AppData;->mParam:Landroid/hardware/Camera$Parameters;

    .line 18
    iput-object v2, p0, Lcom/pantech/app/vegacamera/data/AppData;->mComboPref:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    .line 19
    iput-object v2, p0, Lcom/pantech/app/vegacamera/data/AppData;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 21
    new-instance v0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;-><init>(Lcom/pantech/app/vegacamera/data/AppData;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    .line 22
    iput-object v2, p0, Lcom/pantech/app/vegacamera/data/AppData;->mLocation:Landroid/location/Location;

    .line 24
    iput v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->iDeviceState:I

    .line 25
    iput v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->iPanoramaCaptureState:I

    .line 26
    iput v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->iEffectsState:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->iFaceEffectsIndex:I

    .line 29
    iput-object v2, p0, Lcom/pantech/app/vegacamera/data/AppData;->sWdrState:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/pantech/app/vegacamera/data/AppData;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    .line 32
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->is4648test:Z

    .line 34
    iput v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mPrevColorExtractionMode:I

    .line 35
    iput v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mColorValueOld:I

    .line 36
    iput v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mColorCtrlIndex:I

    .line 37
    iput v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mColorExtractionViewControl:I

    .line 38
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mTouchedforColorExtraction:Z

    .line 39
    iput v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->r_touch:I

    .line 40
    iput v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->g_touch:I

    .line 41
    iput v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->b_touch:I

    .line 42
    iput-object v2, p0, Lcom/pantech/app/vegacamera/data/AppData;->RGB_R:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/pantech/app/vegacamera/data/AppData;->RGB_G:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/pantech/app/vegacamera/data/AppData;->RGB_B:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/pantech/app/vegacamera/data/AppData;->sCropValue:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/pantech/app/vegacamera/data/AppData;->mSaveUri:Landroid/net/Uri;

    .line 49
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->bBurstState:Z

    .line 51
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->isHeadsetPlugged:Z

    .line 52
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->bShutterTimerActionStarted:Z

    .line 54
    iput v1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mLocMgrState:I

    .line 16
    return-void
.end method


# virtual methods
.method public GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mComboPref:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    return-object v0
.end method

.method public GetCropValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->sCropValue:Ljava/lang/String;

    return-object v0
.end method

.method public GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public GetDeviceState()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->iDeviceState:I

    return v0
.end method

.method public GetEffectsState()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->iEffectsState:I

    return v0
.end method

.method public GetFocusData()Lcom/pantech/app/vegacamera/data/AppData$FocusData;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    return-object v0
.end method

.method public GetIs4648test()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->is4648test:Z

    return v0
.end method

.method public GetLocMgrState()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mLocMgrState:I

    return v0
.end method

.method public GetLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public GetPanoramaCaptureState()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->iPanoramaCaptureState:I

    return v0
.end method

.method public GetParam()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mParam:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public GetPreferenceGroup()Lcom/pantech/app/vegacamera/preference/PreferenceGroup;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    return-object v0
.end method

.method public GetSaveUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method public GetWdrState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->sWdrState:Ljava/lang/String;

    return-object v0
.end method

.method public IsShutterTimerActionStarted()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->bShutterTimerActionStarted:Z

    return v0
.end method

.method public Release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mParam:Landroid/hardware/Camera$Parameters;

    .line 162
    iput-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mComboPref:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    .line 163
    iput-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 164
    return-void
.end method

.method public SetComobPref(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)V
    .locals 0
    .parameter "combopref"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mComboPref:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    .line 86
    return-void
.end method

.method public SetCropValue(Ljava/lang/String;)V
    .locals 0
    .parameter "sCropValue"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->sCropValue:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public SetDevice(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    .line 70
    return-void
.end method

.method public SetDeviceState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 109
    iput p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->iDeviceState:I

    .line 110
    packed-switch p1, :pswitch_data_0

    .line 119
    :pswitch_0
    return-void

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public SetEffectsState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 146
    iput p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->iEffectsState:I

    .line 147
    packed-switch p1, :pswitch_data_0

    .line 158
    :pswitch_0
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public SetIs4648test(Z)V
    .locals 0
    .parameter "is4648test"

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->is4648test:Z

    .line 308
    return-void
.end method

.method public SetLocMgrState(I)V
    .locals 0
    .parameter "mLocMgrState"

    .prologue
    .line 61
    iput p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mLocMgrState:I

    .line 62
    return-void
.end method

.method public SetLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mLocation:Landroid/location/Location;

    .line 102
    return-void
.end method

.method public SetPanoramaCaptureState(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 126
    iput p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->iPanoramaCaptureState:I

    .line 127
    return-void
.end method

.method public SetParam(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mParam:Landroid/hardware/Camera$Parameters;

    .line 78
    return-void
.end method

.method public SetPreferenceGroup(Lcom/pantech/app/vegacamera/preference/PreferenceGroup;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 94
    return-void
.end method

.method public SetSaveUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "mSaveUri"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mSaveUri:Landroid/net/Uri;

    .line 412
    return-void
.end method

.method public SetShutterTimerActionStarted(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->bShutterTimerActionStarted:Z

    .line 440
    return-void
.end method

.method public SetWdrState(Ljava/lang/String;)V
    .locals 0
    .parameter "wdr"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->sWdrState:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public getB_touch()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->b_touch:I

    return v0
.end method

.method public getColorExtCtrlIndex()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mColorCtrlIndex:I

    return v0
.end method

.method public getColorExtValueOld()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mColorValueOld:I

    return v0
.end method

.method public getColorExtractionViewControl()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mColorExtractionViewControl:I

    return v0
.end method

.method public getFaceEffectsIndex()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->iFaceEffectsIndex:I

    return v0
.end method

.method public getFocusArea()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->getFocusArea()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFocusDataFace()[Landroid/hardware/Camera$Face;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->getFocusDataFace()[Landroid/hardware/Camera$Face;

    move-result-object v0

    return-object v0
.end method

.method public getFocusDataRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->getFocusDataRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getFocusDataType()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->getFocusDataType()I

    move-result v0

    return v0
.end method

.method public getFocusDataX()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->getFocusDataX()I

    move-result v0

    return v0
.end method

.method public getFocusDataY()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->getFocusDataY()I

    move-result v0

    return v0
.end method

.method public getFocusResult()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->getFocusResult()Z

    move-result v0

    return v0
.end method

.method public getG_touch()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->g_touch:I

    return v0
.end method

.method public getPrevColorExtractionMode()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mPrevColorExtractionMode:I

    return v0
.end method

.method public getRGB_B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->RGB_B:Ljava/lang/String;

    return-object v0
.end method

.method public getRGB_G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->RGB_G:Ljava/lang/String;

    return-object v0
.end method

.method public getRGB_R()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->RGB_R:Ljava/lang/String;

    return-object v0
.end method

.method public getR_touch()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->r_touch:I

    return v0
.end method

.method public getTouchedforColorExtraction()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mTouchedforColorExtraction:Z

    return v0
.end method

.method public isBurstState()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->bBurstState:Z

    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->isHeadsetPlugged:Z

    return v0
.end method

.method public setB_touch(I)V
    .locals 0
    .parameter "B_touch"

    .prologue
    .line 371
    iput p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->b_touch:I

    .line 372
    return-void
.end method

.method public setBurstState(Z)V
    .locals 0
    .parameter "bBurstState"

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->bBurstState:Z

    .line 420
    return-void
.end method

.method public setColorExtCtrlIndex(I)V
    .locals 0
    .parameter "ColorCtrlIndex"

    .prologue
    .line 331
    iput p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mColorCtrlIndex:I

    .line 332
    return-void
.end method

.method public setColorExtValueOld(I)V
    .locals 0
    .parameter "ColorValueOld"

    .prologue
    .line 323
    iput p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mColorValueOld:I

    .line 324
    return-void
.end method

.method public setColorExtractionViewControl(I)V
    .locals 0
    .parameter "ColorExtractionViewControl"

    .prologue
    .line 339
    iput p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mColorExtractionViewControl:I

    .line 340
    return-void
.end method

.method public setFaceEffectsIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 447
    iput p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->iFaceEffectsIndex:I

    .line 448
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->iFaceEffectsIndex:I

    return v0
.end method

.method public setFocusArea(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, focusArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->setFocusArea(Ljava/util/List;)V

    .line 268
    return-void
.end method

.method public setFocusData(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->setFocusData(II)V

    .line 256
    return-void
.end method

.method public setFocusData(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "type"
    .parameter "r"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->setFocusData(ILandroid/graphics/Rect;)V

    .line 260
    return-void
.end method

.method public setFocusData([Landroid/hardware/Camera$Face;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->setFocusData([Landroid/hardware/Camera$Face;)V

    .line 264
    return-void
.end method

.method public setFocusResult(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->mFocusData:Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->setFocusResult(Z)V

    .line 272
    return-void
.end method

.method public setG_touch(I)V
    .locals 0
    .parameter "G_touch"

    .prologue
    .line 363
    iput p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->g_touch:I

    .line 364
    return-void
.end method

.method public setHeadsetState(I)V
    .locals 1
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    .line 427
    if-nez p1, :cond_1

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->isHeadsetPlugged:Z

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    if-ne p1, v0, :cond_0

    .line 430
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/data/AppData;->isHeadsetPlugged:Z

    goto :goto_0
.end method

.method public setPrevColorExtractionMode(I)V
    .locals 0
    .parameter "prevColorExtractionMode"

    .prologue
    .line 315
    iput p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mPrevColorExtractionMode:I

    .line 316
    return-void
.end method

.method public setRGB_B(Ljava/lang/String;)V
    .locals 0
    .parameter "rGB_B"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->RGB_B:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setRGB_G(Ljava/lang/String;)V
    .locals 0
    .parameter "rGB_G"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->RGB_G:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setRGB_R(Ljava/lang/String;)V
    .locals 0
    .parameter "rGB_R"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->RGB_R:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setR_touch(I)V
    .locals 0
    .parameter "R_touch"

    .prologue
    .line 355
    iput p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->r_touch:I

    .line 356
    return-void
.end method

.method public setTouchedforColorExtraction(Z)V
    .locals 0
    .parameter "TouchedforColorExtraction"

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/data/AppData;->mTouchedforColorExtraction:Z

    .line 348
    return-void
.end method
