.class Lcom/pantech/app/vegacamera/controller/FocusContainer$2;
.super Ljava/lang/Object;
.source "FocusContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/controller/FocusContainer;->_StopFocusLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/controller/FocusContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$2;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$2;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$7(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->cancelFocusLock()V

    .line 369
    return-void
.end method
