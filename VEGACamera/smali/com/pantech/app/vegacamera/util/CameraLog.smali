.class public Lcom/pantech/app/vegacamera/util/CameraLog;
.super Ljava/lang/Object;
.source "CameraLog.java"


# static fields
.field public static final LOG_ENABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->IsEngMode()Z

    move-result v0

    sput-boolean v0, Lcom/pantech/app/vegacamera/util/CameraLog;->LOG_ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 14
    sget-boolean v0, Lcom/pantech/app/vegacamera/util/CameraLog;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "message"
    .parameter "e"

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 19
    sget-boolean v0, Lcom/pantech/app/vegacamera/util/CameraLog;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "message"
    .parameter "ex"

    .prologue
    .line 24
    sget-boolean v0, Lcom/pantech/app/vegacamera/util/CameraLog;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 9
    sget-boolean v0, Lcom/pantech/app/vegacamera/util/CameraLog;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 29
    sget-boolean v0, Lcom/pantech/app/vegacamera/util/CameraLog;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "message"
    .parameter "e"

    .prologue
    .line 42
    sget-boolean v0, Lcom/pantech/app/vegacamera/util/CameraLog;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "e"

    .prologue
    .line 47
    sget-boolean v0, Lcom/pantech/app/vegacamera/util/CameraLog;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_0
    return-void
.end method
