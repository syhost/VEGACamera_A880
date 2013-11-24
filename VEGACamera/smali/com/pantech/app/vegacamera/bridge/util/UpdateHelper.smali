.class public Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;
.super Ljava/lang/Object;
.source "UpdateHelper.java"


# instance fields
.field private mUpdated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->mUpdated:Z

    .line 20
    return-void
.end method


# virtual methods
.method public isUpdated()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->mUpdated:Z

    return v0
.end method

.method public update(DD)D
    .locals 1
    .parameter "original"
    .parameter "update"

    .prologue
    .line 40
    cmpl-double v0, p1, p3

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->mUpdated:Z

    .line 42
    move-wide p1, p3

    .line 44
    :cond_0
    return-wide p1
.end method

.method public update(II)I
    .locals 1
    .parameter "original"
    .parameter "update"

    .prologue
    .line 24
    if-eq p1, p2, :cond_0

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->mUpdated:Z

    .line 26
    move p1, p2

    .line 28
    :cond_0
    return p1
.end method

.method public update(JJ)J
    .locals 1
    .parameter "original"
    .parameter "update"

    .prologue
    .line 32
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->mUpdated:Z

    .line 34
    move-wide p1, p3

    .line 36
    :cond_0
    return-wide p1
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, original:Ljava/lang/Object;,"TT;"
    .local p2, update:Ljava/lang/Object;,"TT;"
    invoke-static {p1, p2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->mUpdated:Z

    .line 50
    move-object p1, p2

    .line 52
    :cond_0
    return-object p1
.end method
