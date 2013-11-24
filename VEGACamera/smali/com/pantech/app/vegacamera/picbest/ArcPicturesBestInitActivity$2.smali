.class Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$2;
.super Ljava/lang/Object;
.source "ArcPicturesBestInitActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 362
    :cond_0
    return-void
.end method
