.class Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$3;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$3;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelListener()V
    .locals 2

    .prologue
    .line 1454
    const-string v0, "PhotoPage"

    const-string v1, "mAlertDialogListener onCancelListener"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$3;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onConfirmDialogDismissed(Z)V

    .line 1456
    return-void
.end method

.method public onNegativeButtonSelect()V
    .locals 2

    .prologue
    .line 1446
    const-string v0, "PhotoPage"

    .line 1447
    const-string v1, "mAlertDialogListener onNegativeButtonSelect"

    .line 1446
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$3;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onConfirmDialogDismissed(Z)V

    .line 1449
    return-void
.end method

.method public onPositiveButtonSelect()V
    .locals 3

    .prologue
    .line 1436
    sget v0, Lcom/pantech/app/vegacamera/R$id;->positiveButton:I

    .line 1437
    .local v0, mActionId:I
    const-string v1, "PhotoPage"

    const-string v2, "mAlertDialogListener PositiveButton"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$3;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onConfirmDialogDismissed(Z)V

    .line 1440
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$3;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onMenuClicked(I)V
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$5(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;I)V

    .line 1441
    return-void
.end method
