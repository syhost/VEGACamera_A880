.class final Lcom/pantech/app/vegacamera/aot/AOTCamera$RawPictureCallback;
.super Ljava/lang/Object;
.source "AOTCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/aot/AOTCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$RawPictureCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Lcom/pantech/app/vegacamera/aot/AOTCamera$RawPictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 797
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$RawPictureCallback;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 800
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RawPictureCallback] onPictureTaken"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    return-void
.end method
