.class public Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;
.super Ljava/lang/Object;
.source "AnimationTime.java"


# static fields
.field private static volatile sTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()J
    .locals 2

    .prologue
    .line 37
    sget-wide v0, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->sTime:J

    return-wide v0
.end method

.method public static startTime()J
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->sTime:J

    .line 42
    sget-wide v0, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->sTime:J

    return-wide v0
.end method

.method public static update()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->sTime:J

    .line 33
    return-void
.end method
