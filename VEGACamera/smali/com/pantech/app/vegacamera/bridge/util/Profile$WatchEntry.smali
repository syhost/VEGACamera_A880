.class Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/util/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchEntry"
.end annotation


# instance fields
.field cycleTime:I

.field holdingStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isHolding:Z

.field thread:Ljava/lang/Thread;

.field wakeTime:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;-><init>()V

    return-void
.end method
