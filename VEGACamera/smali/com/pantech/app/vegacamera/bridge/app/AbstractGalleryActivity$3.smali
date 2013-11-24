.class Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity$3;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity$3;->this$0:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 177
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 178
    return-void
.end method
