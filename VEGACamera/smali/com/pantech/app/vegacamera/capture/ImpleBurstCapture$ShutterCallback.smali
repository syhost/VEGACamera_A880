.class final Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;
.super Ljava/lang/Object;
.source "ImpleBurstCapture.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lShutterCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$4(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;J)V

    .line 161
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lShutterCallbackTime:J
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$5(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lCaptureStartTime:J
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$6(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lShutterLag:J
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$7(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;J)V

    .line 162
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iWhat:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$8(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$9(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;I)V

    .line 164
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$9(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstMaxCnt:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$11(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #calls: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->onBurstSoundStop()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$12(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V

    .line 169
    :cond_0
    const-string v0, "ImpleBurstCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onShuter :: iShutterCallbackCnt = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$9(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "ImpleBurstCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lShutterLag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lShutterLag:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method
