.class public Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;
.super Ljava/lang/Object;
.source "ChangeNotifier.java"


# instance fields
.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Landroid/net/Uri;Lcom/pantech/app/vegacamera/bridge/CameraApp;)V
    .locals 2
    .parameter "set"
    .parameter "uri"
    .parameter "application"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 32
    invoke-interface {p3}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;[Landroid/net/Uri;Lcom/pantech/app/vegacamera/bridge/CameraApp;)V
    .locals 3
    .parameter "set"
    .parameter "uris"
    .parameter "application"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 37
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 40
    return-void

    .line 38
    :cond_0
    invoke-interface {p3}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2, p0}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public fakeChange()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->onChange(Z)V

    .line 50
    return-void
.end method

.method public isDirty()Z
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method protected onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->notifyContentChanged()V

    .line 56
    :cond_0
    return-void
.end method
