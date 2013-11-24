.class public interface abstract Lcom/pantech/app/vegacamera/operator/IShutterTimer$OnAction;
.super Ljava/lang/Object;
.source "IShutterTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/operator/IShutterTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAction"
.end annotation


# virtual methods
.method public abstract CancelShutterTimer()V
.end method

.method public abstract OperateShutterTimerAction(Landroid/view/MotionEvent;)V
.end method

.method public abstract SetShutterTimerLayout()Z
.end method

.method public abstract StartShutterTimerShot(Landroid/view/MotionEvent;)Z
.end method
