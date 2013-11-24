.class Lcom/pantech/app/vegacamera/ActivityBase$DeviceAllowedObserver;
.super Landroid/database/ContentObserver;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceAllowedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 1
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ActivityBase$DeviceAllowedObserver;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 392
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 393
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$DeviceAllowedObserver;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    #calls: Lcom/pantech/app/vegacamera/ActivityBase;->_CheckFotaDevLocked()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->access$5(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 398
    return-void
.end method
