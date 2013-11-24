.class Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$1;
.super Ljava/lang/Object;
.source "SettingsGroup.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$1;->this$0:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelListener()V
    .locals 2

    .prologue
    .line 959
    const-string v0, "SettingsGroup"

    const-string v1, "mAlertDialogListener onCancelListener"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$1;->this$0:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->onConfirmDialogDismissed()V

    .line 961
    return-void
.end method

.method public onNegativeButtonSelect()V
    .locals 2

    .prologue
    .line 953
    const-string v0, "SettingsGroup"

    const-string v1, "mAlertDialogListener onNegativeButtonSelect"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$1;->this$0:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->onConfirmDialogDismissed()V

    .line 955
    return-void
.end method

.method public onPositiveButtonSelect()V
    .locals 2

    .prologue
    .line 945
    const-string v0, "SettingsGroup"

    const-string v1, "mAlertDialogListener PositiveButton"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$1;->this$0:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->onConfirmDialogDismissed()V

    .line 948
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$1;->this$0:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;

    #calls: Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->reset()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->access$0(Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;)V

    .line 949
    return-void
.end method
