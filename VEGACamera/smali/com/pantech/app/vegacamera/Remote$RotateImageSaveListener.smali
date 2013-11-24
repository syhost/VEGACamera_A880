.class Lcom/pantech/app/vegacamera/Remote$RotateImageSaveListener;
.super Ljava/lang/Object;
.source "Remote.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$ImageSaveResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Remote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateImageSaveListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Remote;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Remote;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Remote$RotateImageSaveListener;->this$0:Lcom/pantech/app/vegacamera/Remote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Remote;Lcom/pantech/app/vegacamera/Remote$RotateImageSaveListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Remote$RotateImageSaveListener;-><init>(Lcom/pantech/app/vegacamera/Remote;)V

    return-void
.end method


# virtual methods
.method public imageSaveResult(Z)V
    .locals 1
    .parameter "action"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$RotateImageSaveListener;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$10(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->dismissDialog()V

    .line 536
    if-nez p1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$RotateImageSaveListener;->this$0:Lcom/pantech/app/vegacamera/Remote;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Remote;->OnErrorSocketException()V

    .line 541
    :cond_0
    return-void
.end method
