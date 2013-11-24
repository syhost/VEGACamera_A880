.class Lcom/pantech/app/vegacamera/Remote$3;
.super Ljava/lang/Object;
.source "Remote.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Remote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Remote;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Remote;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelListener()V
    .locals 2

    .prologue
    .line 1048
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] mAlertDialogListener onCancelListener"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method public onNegativeButtonSelect()V
    .locals 2

    .prologue
    .line 1037
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] mAlertDialogListener onNegativeButtonSelect"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$3(Lcom/pantech/app/vegacamera/Remote;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    const/4 v1, -0x1

    #setter for: Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/Remote;->access$4(Lcom/pantech/app/vegacamera/Remote;I)V

    .line 1041
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$5(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 1043
    :cond_0
    return-void
.end method

.method public onPositiveButtonSelect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1006
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] mAlertDialogListener PositiveButton"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$3(Lcom/pantech/app/vegacamera/Remote;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #setter for: Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I
    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/Remote;->access$4(Lcom/pantech/app/vegacamera/Remote;I)V

    .line 1011
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$5(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 1012
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->mNfcSwitch:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$6(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->SetNfcEnable()V

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$3(Lcom/pantech/app/vegacamera/Remote;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1014
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #setter for: Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I
    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/Remote;->access$4(Lcom/pantech/app/vegacamera/Remote;I)V

    .line 1016
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$5(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 1017
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPreRemoconOrientation(I)V

    .line 1018
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBackPressedCnt(I)V

    goto :goto_0

    .line 1020
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$3(Lcom/pantech/app/vegacamera/Remote;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Remote;->OnFinishService()V

    .line 1024
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$5(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 1025
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #setter for: Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I
    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/Remote;->access$4(Lcom/pantech/app/vegacamera/Remote;I)V

    .line 1027
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->iHandlerMessage:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Remote;->access$7(Lcom/pantech/app/vegacamera/Remote;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Remote;->SetOperHandler(I)V

    .line 1028
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$3;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #setter for: Lcom/pantech/app/vegacamera/Remote;->iHandlerMessage:I
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/Remote;->access$8(Lcom/pantech/app/vegacamera/Remote;I)V

    goto :goto_0
.end method
