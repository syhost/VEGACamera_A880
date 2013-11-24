.class public Lcom/pantech/app/vegacamera/util/AudioManagerImpl;
.super Landroid/media/AudioManager;
.source "AudioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/util/AudioManagerImpl$MainHandler;
    }
.end annotation


# static fields
.field public static final ABANDDON_DURATION_TIME:I = 0x7d0

.field public static final ABANDDON_NO_TIME:I = 0x0

.field private static final AUDIOFOCUS_ABANDON:I = 0x66

.field private static final AUDIOFOCUS_REQUEST_GAIN:I = 0x65

.field private static final AUDIOFOCUS_REQUEST_TRANSIENT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AudioManagerImpl"

.field private static listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private static volatile mAudioManagerImpl:Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

.field private static result:I


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl$1;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl$1;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl$MainHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl$MainHandler;-><init>(Lcom/pantech/app/vegacamera/util/AudioManagerImpl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method public static GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    sget-object v0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->mAudioManagerImpl:Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-class v1, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    monitor-enter v1

    .line 58
    :try_start_0
    new-instance v0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->mAudioManagerImpl:Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    sget-object v0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->mAudioManagerImpl:Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private _RemoveMessage()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->getmHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->getmHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->getmHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 69
    return-void
.end method

.method static synthetic access$0()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$1(I)V
    .locals 0
    .parameter

    .prologue
    .line 20
    sput p0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->result:I

    return-void
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->result:I

    return v0
.end method


# virtual methods
.method public AbandonAudioFocus(I)V
    .locals 4
    .parameter "duraition"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->_RemoveMessage()V

    .line 89
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->getmHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 90
    return-void
.end method

.method public Release()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->_RemoveMessage()V

    .line 73
    return-void
.end method

.method public RequestAudioFocusGainOper()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->_RemoveMessage()V

    .line 84
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->getmHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 85
    return-void
.end method

.method public RequestAudioFocusOper()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->_RemoveMessage()V

    .line 78
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->getmHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    return-void
.end method

.method public getmHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
