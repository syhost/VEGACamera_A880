.class Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field private final mActionId:I

.field private final mListener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter
    .parameter "actionId"
    .parameter "listener"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;->mActionId:I

    .line 187
    iput-object p3, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;

    .line 188
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 209
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 192
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;->mActionId:I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->onMenuClicked(ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    goto :goto_0
.end method
