.class Lcom/pantech/app/vegacamera/Panorama$8;
.super Ljava/lang/Object;
.source "Panorama.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Panorama;->_SetViews(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Panorama;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$8;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    .line 1090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChange(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$8;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$22(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetPanoramaCaptureState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$8;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ShowDirectionIndicators(I)V
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/Panorama;->access$37(Lcom/pantech/app/vegacamera/Panorama;I)V

    .line 1096
    :cond_0
    return-void
.end method

.method public onDirectionChanged()V
    .locals 4

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$8;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    const/4 v1, 0x1

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ShowTooFastIndication(Z)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/Panorama;->access$38(Lcom/pantech/app/vegacamera/Panorama;Z)V

    .line 1101
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$8;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$8;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1102
    return-void
.end method
