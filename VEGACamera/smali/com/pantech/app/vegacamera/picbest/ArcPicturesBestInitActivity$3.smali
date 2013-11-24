.class Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$3;
.super Ljava/lang/Object;
.source "ArcPicturesBestInitActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->bestface_createNprocess_Popup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$3;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 371
    sparse-switch p2, :sswitch_data_0

    .line 386
    const/4 v0, 0x0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 373
    :sswitch_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$3;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$3;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$3;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 378
    :sswitch_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$3;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$3;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$3;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 371
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method
