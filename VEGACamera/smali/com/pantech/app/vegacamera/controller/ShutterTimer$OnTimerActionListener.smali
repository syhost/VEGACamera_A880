.class public interface abstract Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;
.super Ljava/lang/Object;
.source "ShutterTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/ShutterTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTimerActionListener"
.end annotation


# virtual methods
.method public abstract OnSetTimerCount(I)V
.end method

.method public abstract OnTimerActionCancel(Z)V
.end method

.method public abstract OnTimerActionStart()V
.end method

.method public abstract OnTimerAnimationStart(I)V
.end method

.method public abstract OnTimerAnimationStop()V
.end method

.method public abstract OnTimerNotOperated()V
.end method
