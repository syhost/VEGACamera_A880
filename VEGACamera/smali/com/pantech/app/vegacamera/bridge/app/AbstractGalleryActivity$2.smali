.class Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity$2;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->finish()V

    .line 172
    return-void
.end method
