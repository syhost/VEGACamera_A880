.class final Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;
.super Ljava/lang/Object;
.source "ImpleBestFaceShotCapture.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    .prologue
    .line 176
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lShutterCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;J)V

    .line 177
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lShutterCallbackTime:J
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$4(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lCaptureStartTime:J
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$5(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lShutterLag:J
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$6(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;J)V

    .line 178
    const-string v0, "BestFaceCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lShutterLag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lShutterLag:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$7(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method
