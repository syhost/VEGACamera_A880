.class public Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;
.super Ljava/lang/Object;
.source "LocalVoiceRecognizer.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;
.implements Lcom/pantech/app/vegacamera/util/QueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$MainHandler;,
        Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$UtilContentObserver;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final HANDLE_LV_REMOVE_DIALOG:I = 0x1

.field private static final KEY_NAME:Ljava/lang/String; = "_name"

.field private static final KEY_VALUE:Ljava/lang/String; = "_value"

.field private static LVR_Email:[Ljava/lang/String; = null

.field private static LVR_Flashauto:[Ljava/lang/String; = null

.field private static LVR_Flashoff:[Ljava/lang/String; = null

.field private static LVR_Flashon:[Ljava/lang/String; = null

.field private static LVR_Flashtorch:[Ljava/lang/String; = null

.field private static LVR_Gallery:[Ljava/lang/String; = null

.field private static LVR_Help:[Ljava/lang/String; = null

.field private static LVR_Message:[Ljava/lang/String; = null

.field private static LVR_Record:[Ljava/lang/String; = null

.field private static LVR_SensorChanged:[Ljava/lang/String; = null

.field private static LVR_Shutter:[Ljava/lang/String; = null

.field private static LVR_Zoomin:[Ljava/lang/String; = null

.field private static LVR_Zoomout:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LocalVoiceRecognizer"

.field private static mQueryHandler:Lcom/pantech/app/vegacamera/util/QueryHandler; = null

.field private static final proj:[Ljava/lang/String; = null

.field private static final sLVOnOff:Ljava/lang/String; = "LocalVoiceOnOff"

.field private static final sLVTrigger:Ljava/lang/String; = "TriggerOnOff"

.field private static final whereLVOnOff:Ljava/lang/String; = "_name= \'LocalVoiceOnOff\'"

.field private static final whereLVTrigger:Ljava/lang/String; = "_name= \'TriggerOnOff\'"


# instance fields
.field private fOnoffState:Z

.field private fTriggerState:Z

.field private iOrientation:I

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

.field private mListener:Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer$VRListener;

.field private mNoteDialogListener:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog$Listener;

.field private mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

.field private mUtilContentObserver:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$UtilContentObserver;

.field private mVoicelistener:Landroid/view/View$OnVoiceListListener;

.field private vLocalVoice:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 32
    const-string v0, "content://com.pantech.apps.SkySetting.SkySettingsOracle"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->CONTENT_URI:Landroid/net/Uri;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->proj:[Ljava/lang/String;

    .line 40
    sput-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mQueryHandler:Lcom/pantech/app/vegacamera/util/QueryHandler;

    .line 44
    sput-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Shutter:[Ljava/lang/String;

    .line 45
    sput-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Message:[Ljava/lang/String;

    .line 46
    sput-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Email:[Ljava/lang/String;

    .line 47
    sput-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashon:[Ljava/lang/String;

    .line 48
    sput-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashoff:[Ljava/lang/String;

    .line 49
    sput-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashauto:[Ljava/lang/String;

    .line 50
    sput-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashtorch:[Ljava/lang/String;

    .line 51
    sput-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Zoomin:[Ljava/lang/String;

    .line 52
    sput-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Zoomout:[Ljava/lang/String;

    .line 53
    sput-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_SensorChanged:[Ljava/lang/String;

    .line 54
    sput-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Gallery:[Ljava/lang/String;

    .line 55
    sput-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Help:[Ljava/lang/String;

    .line 56
    sput-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Record:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V
    .locals 3
    .parameter "layout"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 60
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    .line 61
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mVoicelistener:Landroid/view/View$OnVoiceListListener;

    .line 62
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mUtilContentObserver:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$UtilContentObserver;

    .line 63
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    .line 65
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->vLocalVoice:Landroid/view/View;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->iOrientation:I

    .line 69
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->fOnoffState:Z

    .line 70
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->fTriggerState:Z

    .line 72
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mListener:Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer$VRListener;

    .line 74
    new-instance v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$MainHandler;-><init>(Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$1;-><init>(Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mNoteDialogListener:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog$Listener;

    .line 85
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 86
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_InitLocalVoiceListWords()V

    .line 89
    return-void
.end method

.method private _ActVoiceAsWords(Ljava/lang/String;)V
    .locals 4
    .parameter "words"

    .prologue
    .line 307
    const/4 v0, -0x1

    .line 309
    .local v0, nResut:I
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Shutter:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_CompareWords([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    const/4 v0, 0x0

    .line 338
    :cond_0
    :goto_0
    const-string v1, "LocalVoiceRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[LocalVoiceRecognizer] onResultVR() id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mListener:Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer$VRListener;

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mListener:Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer$VRListener;

    invoke-interface {v1, v0}, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer$VRListener;->OnResultVR(I)V

    .line 342
    :cond_1
    return-void

    .line 311
    :cond_2
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Message:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_CompareWords([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    const/4 v0, 0x1

    .line 313
    goto :goto_0

    :cond_3
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Email:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_CompareWords([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    const/4 v0, 0x2

    .line 315
    goto :goto_0

    :cond_4
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashon:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_CompareWords([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 316
    const/4 v0, 0x3

    .line 317
    goto :goto_0

    :cond_5
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashoff:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_CompareWords([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 318
    const/4 v0, 0x4

    .line 319
    goto :goto_0

    :cond_6
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashauto:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_CompareWords([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 320
    const/4 v0, 0x5

    .line 321
    goto :goto_0

    :cond_7
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashtorch:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_CompareWords([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 322
    const/4 v0, 0x6

    .line 323
    goto :goto_0

    :cond_8
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Zoomin:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_CompareWords([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 324
    const/4 v0, 0x7

    .line 325
    goto :goto_0

    :cond_9
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Zoomout:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_CompareWords([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 326
    const/16 v0, 0x8

    .line 327
    goto :goto_0

    :cond_a
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_SensorChanged:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_CompareWords([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 328
    const/16 v0, 0xb

    .line 329
    goto :goto_0

    :cond_b
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Gallery:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_CompareWords([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 330
    const/16 v0, 0xc

    .line 331
    goto/16 :goto_0

    :cond_c
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Help:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_CompareWords([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 332
    const/16 v0, 0xd

    .line 333
    goto/16 :goto_0

    :cond_d
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Record:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_CompareWords([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const/16 v0, 0xe

    goto/16 :goto_0
.end method

.method private _CancelQuery()V
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mQueryHandler:Lcom/pantech/app/vegacamera/util/QueryHandler;

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mQueryHandler:Lcom/pantech/app/vegacamera/util/QueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/QueryHandler;->cancelOperation(I)V

    .line 183
    sget-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mQueryHandler:Lcom/pantech/app/vegacamera/util/QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/QueryHandler;->cancelOperation(I)V

    .line 184
    sget-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mQueryHandler:Lcom/pantech/app/vegacamera/util/QueryHandler;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/QueryHandler;->clearQueryListener()V

    .line 185
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mQueryHandler:Lcom/pantech/app/vegacamera/util/QueryHandler;

    .line 187
    :cond_0
    return-void
.end method

.method private _CompareWords([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "wordList"
    .parameter "word"

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, m:I
    if-eqz p1, :cond_0

    .line 297
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 303
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 298
    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 299
    const/4 v1, 0x1

    goto :goto_1

    .line 297
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _InitLocalVoiceListWords()V
    .locals 3

    .prologue
    .line 250
    const-string v1, "LocalVoiceRecognizer"

    const-string v2, "[LocalVoiceRecognizer] _InitLocalVoiceListWords"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 254
    .local v0, res:Landroid/content/res/Resources;
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Shutter:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 255
    sget v1, Lcom/pantech/app/vegacamera/R$array;->local_voice_capture_words:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Shutter:[Ljava/lang/String;

    .line 257
    :cond_0
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Message:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 258
    sget v1, Lcom/pantech/app/vegacamera/R$array;->local_voice_msg_words:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Message:[Ljava/lang/String;

    .line 260
    :cond_1
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Email:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 261
    sget v1, Lcom/pantech/app/vegacamera/R$array;->local_voice_email_words:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Email:[Ljava/lang/String;

    .line 263
    :cond_2
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashon:[Ljava/lang/String;

    if-nez v1, :cond_3

    .line 264
    sget v1, Lcom/pantech/app/vegacamera/R$array;->local_voice_flashon_words:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashon:[Ljava/lang/String;

    .line 266
    :cond_3
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashoff:[Ljava/lang/String;

    if-nez v1, :cond_4

    .line 267
    sget v1, Lcom/pantech/app/vegacamera/R$array;->local_voice_flashoff_words:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashoff:[Ljava/lang/String;

    .line 269
    :cond_4
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashauto:[Ljava/lang/String;

    if-nez v1, :cond_5

    .line 270
    sget v1, Lcom/pantech/app/vegacamera/R$array;->local_voice_flashauto_words:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashauto:[Ljava/lang/String;

    .line 272
    :cond_5
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashtorch:[Ljava/lang/String;

    if-nez v1, :cond_6

    .line 273
    sget v1, Lcom/pantech/app/vegacamera/R$array;->local_voice_flashtorch_words:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashtorch:[Ljava/lang/String;

    .line 275
    :cond_6
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Zoomin:[Ljava/lang/String;

    if-nez v1, :cond_7

    .line 276
    sget v1, Lcom/pantech/app/vegacamera/R$array;->local_voice_zoomin_words:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Zoomin:[Ljava/lang/String;

    .line 278
    :cond_7
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Zoomout:[Ljava/lang/String;

    if-nez v1, :cond_8

    .line 279
    sget v1, Lcom/pantech/app/vegacamera/R$array;->local_voice_zoomout_words:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Zoomout:[Ljava/lang/String;

    .line 281
    :cond_8
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_SensorChanged:[Ljava/lang/String;

    if-nez v1, :cond_9

    .line 282
    sget v1, Lcom/pantech/app/vegacamera/R$array;->local_voice_switchid_words:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_SensorChanged:[Ljava/lang/String;

    .line 284
    :cond_9
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Gallery:[Ljava/lang/String;

    if-nez v1, :cond_a

    .line 285
    sget v1, Lcom/pantech/app/vegacamera/R$array;->local_voice_gallery_words:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Gallery:[Ljava/lang/String;

    .line 287
    :cond_a
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Help:[Ljava/lang/String;

    if-nez v1, :cond_b

    .line 288
    sget v1, Lcom/pantech/app/vegacamera/R$array;->local_voice_help_words:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Help:[Ljava/lang/String;

    .line 290
    :cond_b
    sget-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Record:[Ljava/lang/String;

    if-nez v1, :cond_c

    .line 291
    sget v1, Lcom/pantech/app/vegacamera/R$array;->local_voice_record_words:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Record:[Ljava/lang/String;

    .line 292
    :cond_c
    return-void
.end method

.method private _RegisterLocalVoiceDBObserver()V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mUtilContentObserver:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$UtilContentObserver;

    if-nez v0, :cond_0

    .line 152
    const-string v0, "LocalVoiceRecognizer"

    const-string v1, "_RegisterLocalVoiceDBObserver()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$UtilContentObserver;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$UtilContentObserver;-><init>(Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mUtilContentObserver:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$UtilContentObserver;

    .line 154
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TriggerOnOff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 155
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mUtilContentObserver:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$UtilContentObserver;

    .line 154
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    :cond_0
    return-void
.end method

.method private _RemoveNoteDialog()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->isShowDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->dismissDialog()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    .line 127
    :cond_0
    return-void
.end method

.method private _SendLocalVoiceIntent(Z)V
    .locals 3
    .parameter "fStart"

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.app.lvengine.appcreate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, i:Landroid/content/Intent;
    const-string v1, "appnum"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    :goto_0
    return-void

    .line 216
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.app.lvengine.appdestroy"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "appnum"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private _SetLocalVoiceListener()V
    .locals 3

    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->vLocalVoice:Landroid/view/View;

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_INDICATOR_LOCAL_VOICE:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->vLocalVoice:Landroid/view/View;

    .line 226
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->vLocalVoice:Landroid/view/View;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mVoicelistener:Landroid/view/View$OnVoiceListListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnVoiceListListener(Landroid/view/View$OnVoiceListListener;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_SendLocalVoiceIntent(Z)V

    .line 232
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "LocalVoiceRecognizer"

    const-string v2, "setOnVoiceListListener() NoSuchMethod"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _SetOnLocalVoiceList()V
    .locals 3

    .prologue
    .line 190
    const-string v1, "LocalVoiceRecognizer"

    const-string v2, "_SetOnLocalVoiceList()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mVoicelistener:Landroid/view/View$OnVoiceListListener;

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$2;-><init>(Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mVoicelistener:Landroid/view/View$OnVoiceListListener;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const-string v1, "LocalVoiceRecognizer"

    const-string v2, "setLocalVoiceListener(NoClassDefFound)"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _ShowNoteDialog()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 109
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 110
    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 108
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->iOrientation:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setOrientation(I)V

    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mNoteDialogListener:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog$Listener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setListener(Lcom/pantech/app/vegacamera/ui/RotateNoteDialog$Listener;)V

    .line 115
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->putNoteDialog()V

    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->showDialog()V

    .line 118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    return-void
.end method

.method private _StartEmailIntent()V
    .locals 6

    .prologue
    .line 345
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v3

    if-nez v3, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    const-string v3, "LocalVoiceRecognizer"

    const-string v4, "_StartEmailIntent is skipped when IsGallerySecretMode"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetUri()Landroid/net/Uri;

    move-result-object v2

    .line 355
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v3

    .line 356
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    const-string v5, "mime_type"

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->getColumnInfoFromURI(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, stringMimeType:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.EMAIL_ATTACH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, emailIntent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 360
    const-string v3, "android.intent.extra.EMAIL"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v3, "android.intent.extra.TEXT"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v3, "image/jpeg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "image/jpg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 365
    :cond_3
    const-string v3, "image/jpeg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    :goto_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 366
    :cond_4
    const-string v3, "video/3gp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "video/3gpp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 367
    const-string v3, "video/mp4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    :cond_5
    const-string v3, "video/3gp"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private _StartMsgIntent()V
    .locals 6

    .prologue
    .line 377
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v3

    if-nez v3, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 382
    const-string v3, "LocalVoiceRecognizer"

    const-string v4, "_StartMsgIntent is skipped when IsGallerySecretMode"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetUri()Landroid/net/Uri;

    move-result-object v2

    .line 387
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v3

    .line 388
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    const-string v5, "mime_type"

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->getColumnInfoFromURI(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, stringMimeType:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, MsgIntent:Landroid/content/Intent;
    const-string v3, "com.pantech.app.mms"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 394
    const-string v3, "image/jpeg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "image/jpg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 395
    :cond_3
    const-string v3, "image/*"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    :goto_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 396
    :cond_4
    const-string v3, "video/3gp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "video/3gpp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 397
    const-string v3, "video/mp4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    :cond_5
    const-string v3, "video/*"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private _StartQuery()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->initDbStatus()V

    .line 176
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->CheckLVOnoffDbStatus()V

    .line 177
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->CheckLVPauseStatus()V

    goto :goto_0
.end method

.method private _UnRegisterLocalVoiceDBObserver()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mUtilContentObserver:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$UtilContentObserver;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mUtilContentObserver:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$UtilContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mUtilContentObserver:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$UtilContentObserver;

    goto :goto_0
.end method

.method private _UnSetLocalVoiceListener()V
    .locals 3

    .prologue
    .line 235
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_SendLocalVoiceIntent(Z)V

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->vLocalVoice:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->vLocalVoice:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnVoiceListListener(Landroid/view/View$OnVoiceListListener;)V

    .line 239
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mVoicelistener:Landroid/view/View$OnVoiceListListener;

    if-eqz v1, :cond_0

    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mVoicelistener:Landroid/view/View$OnVoiceListListener;

    .line 242
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->vLocalVoice:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "LocalVoiceRecognizer"

    const-string v2, "setOnVoiceListListener() NoSuchMethod"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_RemoveNoteDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_StartQuery()V

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_ActVoiceAsWords(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ActionVR(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 436
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    if-nez v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsAvailableInteractionFuction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LocalVoiceRecognizer] actionVR() id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    if-nez p1, :cond_2

    .line 447
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_SharedCaptureOper()V

    goto :goto_0

    .line 448
    :cond_2
    if-ne p1, v3, :cond_3

    .line 449
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_StartMsgIntent()V

    goto :goto_0

    .line 450
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 451
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_StartEmailIntent()V

    goto :goto_0

    .line 452
    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 453
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->SetChangeZoomInOper()V

    goto :goto_0

    .line 454
    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    .line 455
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->SetChangeZoomOutOper()V

    goto :goto_0

    .line 456
    :cond_6
    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    .line 457
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_CAMERA_SWITCH_MENU_ITEM:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerShowMenuItemButton(I)V

    goto :goto_0

    .line 460
    :cond_7
    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    .line 461
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 462
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_CAMERA_SWITCH_MENU_ITEM:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerShowMenuItemButton(I)V

    goto :goto_0

    .line 464
    :cond_8
    const/16 v0, 0xb

    if-ne p1, v0, :cond_9

    .line 465
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_CAMERA_SWITCH_MENU_ITEM:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_MenuContainerShowMenuItemButton(I)V

    goto :goto_0

    .line 466
    :cond_9
    const/16 v0, 0xc

    if-ne p1, v0, :cond_a

    .line 467
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->GotoGallery()V

    goto :goto_0

    .line 468
    :cond_a
    const/16 v0, 0xd

    if-ne p1, v0, :cond_b

    .line 469
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_ShowNoteDialog()V

    goto/16 :goto_0

    .line 470
    :cond_b
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->VideoRecordStart()V

    goto/16 :goto_0
.end method

.method public CheckLVOnoffDbStatus()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 501
    sget-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mQueryHandler:Lcom/pantech/app/vegacamera/util/QueryHandler;

    if-eqz v0, :cond_0

    .line 502
    sget-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mQueryHandler:Lcom/pantech/app/vegacamera/util/QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->proj:[Ljava/lang/String;

    const-string v5, "_name= \'LocalVoiceOnOff\'"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/pantech/app/vegacamera/util/QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method

.method public CheckLVPauseStatus()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 507
    sget-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mQueryHandler:Lcom/pantech/app/vegacamera/util/QueryHandler;

    if-eqz v0, :cond_0

    .line 508
    sget-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mQueryHandler:Lcom/pantech/app/vegacamera/util/QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->proj:[Ljava/lang/String;

    const-string v5, "_name= \'TriggerOnOff\'"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/pantech/app/vegacamera/util/QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_0
    return-void
.end method

.method public GetCurrentOnoffState()Z
    .locals 3

    .prologue
    .line 514
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LocalVoiceRecognizer] GetCurrentOnoffState fOnoffState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->fOnoffState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->fOnoffState:Z

    return v0
.end method

.method public GetCurrentTriggerState()Z
    .locals 3

    .prologue
    .line 520
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LocalVoiceRecognizer] GetCurrentTriggerState fTriggerState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->fTriggerState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->fTriggerState:Z

    return v0
.end method

.method public Release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 478
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    .line 480
    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Shutter:[Ljava/lang/String;

    .line 481
    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Message:[Ljava/lang/String;

    .line 482
    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Email:[Ljava/lang/String;

    .line 483
    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashon:[Ljava/lang/String;

    .line 484
    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashoff:[Ljava/lang/String;

    .line 485
    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Flashauto:[Ljava/lang/String;

    .line 486
    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Zoomin:[Ljava/lang/String;

    .line 487
    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Zoomout:[Ljava/lang/String;

    .line 488
    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_SensorChanged:[Ljava/lang/String;

    .line 489
    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Gallery:[Ljava/lang/String;

    .line 490
    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Help:[Ljava/lang/String;

    .line 491
    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->LVR_Record:[Ljava/lang/String;

    .line 492
    return-void
.end method

.method public RotateNoteDialog()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->isShowDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mRotateNoteDialog:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->iOrientation:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setOrientation(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public SetVRListenner(Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer$VRListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mListener:Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer$VRListener;

    .line 416
    return-void
.end method

.method public StartVoiceRecognizer()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_SetOnLocalVoiceList()V

    .line 421
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_SetLocalVoiceListener()V

    .line 422
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_RegisterLocalVoiceDBObserver()V

    .line 423
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_StartQuery()V

    .line 425
    return-void
.end method

.method public StopVoiceRecognizer()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_UnSetLocalVoiceListener()V

    .line 430
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_UnRegisterLocalVoiceDBObserver()V

    .line 431
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_CancelQuery()V

    .line 432
    return-void
.end method

.method public initDbStatus()V
    .locals 2

    .prologue
    .line 495
    sget-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mQueryHandler:Lcom/pantech/app/vegacamera/util/QueryHandler;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lcom/pantech/app/vegacamera/util/QueryHandler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/pantech/app/vegacamera/util/QueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/pantech/app/vegacamera/util/QueryHandler$AsyncQueryListener;)V

    sput-object v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mQueryHandler:Lcom/pantech/app/vegacamera/util/QueryHandler;

    .line 498
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    .line 527
    const/4 v0, 0x2

    .line 528
    .local v0, STATE_PAUSE:I
    const-string v4, "LocalVoiceRecognizer"

    const-string v5, "[LocalVoiceRecognizer] onQueryComplete"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    packed-switch p1, :pswitch_data_0

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 532
    :pswitch_0
    const/4 v2, 0x0

    .line 534
    .local v2, valueOnoff:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 535
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 536
    const-string v4, "_value"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 546
    :try_start_1
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 547
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->fOnoffState:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 556
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsAvailableInteractionFuction()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_InformationAreaInit()V

    goto :goto_0

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mContext:Landroid/content/Context;

    const-string v5, "LocalVoiceOnOff"

    const-string v6, "1"

    invoke-static {v4, v5, v6, v7}, Lcom/pantech/app/vegacamera/util/Util;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 541
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 549
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->fOnoffState:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 552
    :catch_1
    move-exception v1

    .line 553
    .restart local v1       #e:Ljava/lang/Exception;
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->fOnoffState:Z

    goto :goto_2

    .line 562
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #valueOnoff:Ljava/lang/String;
    :pswitch_1
    const/4 v3, 0x0

    .line 564
    .local v3, valueTrigger:Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 565
    :try_start_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 566
    const-string v4, "_value"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 567
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 574
    :cond_4
    :goto_3
    :try_start_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 575
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->fTriggerState:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 583
    :goto_4
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsAvailableInteractionFuction()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 584
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_InformationAreaInit()V

    goto :goto_0

    .line 569
    :catch_2
    move-exception v1

    .line 570
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 577
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->fTriggerState:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 579
    :catch_3
    move-exception v1

    .line 580
    .restart local v1       #e:Ljava/lang/Exception;
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->fTriggerState:Z

    goto :goto_4

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "iOri"

    .prologue
    .line 136
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->iOrientation:I

    .line 137
    return-void
.end method
