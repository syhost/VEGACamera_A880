.class Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils$1;
.super Ljava/lang/Object;
.source "GalleryUtils.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->fakeBusy(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cv:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Landroid/os/ConditionVariable;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils$1;->val$cv:Landroid/os/ConditionVariable;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 132
    return-void
.end method
