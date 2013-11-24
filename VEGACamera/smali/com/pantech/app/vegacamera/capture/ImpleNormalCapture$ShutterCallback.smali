.class final Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;
.super Ljava/lang/Object;
.source "ImpleNormalCapture.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    .prologue
    .line 183
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lShutterCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$7(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V

    .line 184
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lShutterCallbackTime:J
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$8(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lCaptureStartTime:J
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$9(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lShutterLag:J
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V

    .line 185
    const-string v0, "ImpleNormalCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lShutterLag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lShutterLag:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$11(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method
