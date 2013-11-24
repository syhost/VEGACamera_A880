.class Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$4;
.super Ljava/lang/Object;
.source "ArcPicturesBestInitActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$4;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$4;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    .line 396
    return-void
.end method
