.class Lcom/pantech/app/vegacamera/aot/AOTCamera$1;
.super Landroid/content/BroadcastReceiver;
.source "AOTCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/aot/AOTCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    .line 1273
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1278
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1282
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1283
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera;->checkStorage()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$0(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    goto :goto_0

    .line 1284
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1285
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1286
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1287
    invoke-static {p1}, Lcom/pantech/app/vegacamera/util/Util;->GetBatteryLevel(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 1288
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    const/16 v2, 0x68

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera;->showCameraErrorAndFinish(I)V
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$1(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V

    goto :goto_0

    .line 1290
    :cond_4
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1292
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1293
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->closeCamera()V

    .line 1294
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationListener:Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$2(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1295
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationListener:Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$2(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->disable()V

    goto :goto_0

    .line 1296
    :cond_5
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera;->startCamera()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$3(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    .line 1298
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationListener:Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$2(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1299
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationListener:Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$2(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->enable()V

    goto/16 :goto_0
.end method
