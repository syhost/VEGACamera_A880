.class public Lcom/pantech/app/vegacamera/bridge/util/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;,
        Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;
    }
.end annotation


# static fields
.field private static final NS_PER_MS:I = 0xf4240

.field private static sWatchdog:Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/util/Profile;->sWatchdog:Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commit()V
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/util/Profile;->sWatchdog:Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->commit(Ljava/lang/Thread;)V

    .line 224
    return-void
.end method

.method public static disable()V
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/util/Profile;->sWatchdog:Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->removeWatchEntry(Ljava/lang/Thread;)V

    .line 198
    return-void
.end method

.method public static disableAll()V
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/util/Profile;->sWatchdog:Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->removeAllWatchEntries()V

    .line 203
    return-void
.end method

.method public static drop()V
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/util/Profile;->sWatchdog:Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->drop(Ljava/lang/Thread;)V

    .line 228
    return-void
.end method

.method public static dumpToFile(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 207
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/util/Profile;->sWatchdog:Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->dumpToFile(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static enable(I)V
    .locals 2
    .parameter "cycleTimeInMs"

    .prologue
    .line 191
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 192
    .local v0, t:Ljava/lang/Thread;
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/util/Profile;->sWatchdog:Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;

    invoke-virtual {v1, v0, p0}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->addWatchEntry(Ljava/lang/Thread;I)V

    .line 193
    return-void
.end method

.method public static hold()V
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/util/Profile;->sWatchdog:Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->hold(Ljava/lang/Thread;)V

    .line 220
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/util/Profile;->sWatchdog:Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->reset()V

    .line 213
    return-void
.end method
