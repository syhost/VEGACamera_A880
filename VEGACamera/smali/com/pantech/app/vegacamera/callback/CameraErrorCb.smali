.class public Lcom/pantech/app/vegacamera/callback/CameraErrorCb;
.super Ljava/lang/Object;
.source "CameraErrorCb.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraErrorCb"


# instance fields
.field private mCbListener:Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 4
    .parameter "error"
    .parameter "camera"

    .prologue
    const/16 v3, 0x64

    .line 12
    const-string v0, "CameraErrorCb"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Camera] onError : error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    if-ne p1, v3, :cond_2

    .line 14
    const-string v0, "CameraErrorCb"

    const-string v1, "[Camera] onError :android.hardware.Camera.CAMERA_ERROR_SERVER_DIED"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->IsEngMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "android.hardware.Camera.CAMERA_ERROR_SERVER_DIED."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;->mCbListener:Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;

    invoke-interface {v0, v3}, Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;->CameraErrorCbNotify(I)V

    .line 31
    :cond_1
    :goto_0
    return-void

    .line 23
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 24
    const-string v0, "CameraErrorCb"

    const-string v1, "[Camera] onError : android.hardware.Camera.CAMERA_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;->mCbListener:Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;

    invoke-interface {v0, v3}, Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;->CameraErrorCbNotify(I)V

    goto :goto_0

    .line 26
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 28
    const-string v0, "CameraErrorCb"

    const-string v1, "[Camera] onError : error == 2"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;->mCbListener:Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;

    invoke-interface {v0, v3}, Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;->CameraErrorCbNotify(I)V

    goto :goto_0
.end method

.method public setCbListener(Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;->mCbListener:Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;

    .line 39
    return-void
.end method
