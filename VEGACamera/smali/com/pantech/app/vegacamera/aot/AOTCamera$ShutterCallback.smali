.class final Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;
.super Ljava/lang/Object;
.source "AOTCamera.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/aot/AOTCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 792
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ShutterCallback] onShutter"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera;->invisibleMainLayout()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$13(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    .line 794
    return-void
.end method
