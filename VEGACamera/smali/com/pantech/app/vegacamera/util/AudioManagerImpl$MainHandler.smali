.class public Lcom/pantech/app/vegacamera/util/AudioManagerImpl$MainHandler;
.super Landroid/os/Handler;
.source "AudioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/util/AudioManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/util/AudioManagerImpl;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/util/AudioManagerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl$MainHandler;->this$0:Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x3

    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl$MainHandler;->this$0:Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->access$0()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->access$1(I)V

    .line 37
    const-string v0, "AudioManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestAudioFocus AUDIOFOCUS_GAIN_TRANSIENT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->access$2()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl$MainHandler;->this$0:Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->access$0()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->access$1(I)V

    .line 41
    const-string v0, "AudioManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestAudioFocus AUDIOFOCUS_GAIN:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->access$2()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/util/AudioManagerImpl$MainHandler;->this$0:Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->access$0()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->access$1(I)V

    .line 45
    const-string v0, "AudioManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "abandonAudioFocus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->access$2()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
