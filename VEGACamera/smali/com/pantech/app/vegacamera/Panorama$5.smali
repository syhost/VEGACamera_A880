.class Lcom/pantech/app/vegacamera/Panorama$5;
.super Ljava/lang/Object;
.source "Panorama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Panorama;->_PlayCaptureSound(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Panorama;

.field private final synthetic val$isStart:Z


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Panorama;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$5;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    iput-boolean p2, p0, Lcom/pantech/app/vegacamera/Panorama$5;->val$isStart:Z

    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 876
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$5;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMediaActionSound:Landroid/media/MediaActionSound;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$31(Lcom/pantech/app/vegacamera/Panorama;)Landroid/media/MediaActionSound;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$5;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMediaActionSound:Landroid/media/MediaActionSound;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$31(Lcom/pantech/app/vegacamera/Panorama;)Landroid/media/MediaActionSound;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama$5;->val$isStart:Z

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$5;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->RequestAudioFocusGainOper()V

    .line 886
    :goto_1
    return-void

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$5;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->AbandonAudioFocus(I)V

    goto :goto_1

    .line 878
    :catch_0
    move-exception v0

    goto :goto_0
.end method
