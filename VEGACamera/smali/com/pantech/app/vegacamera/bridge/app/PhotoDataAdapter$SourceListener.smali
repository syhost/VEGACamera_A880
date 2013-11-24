.class Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$SourceListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 982
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$SourceListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$SourceListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 982
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 2

    .prologue
    .line 985
    const-string v0, "PhotoDataAdapter"

    const-string v1, "onContentDirty"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$SourceListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mReloadTask:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$5(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$SourceListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mReloadTask:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$5(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    .line 988
    :cond_0
    return-void
.end method
