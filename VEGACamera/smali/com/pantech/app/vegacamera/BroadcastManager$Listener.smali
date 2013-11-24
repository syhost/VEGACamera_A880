.class public interface abstract Lcom/pantech/app/vegacamera/BroadcastManager$Listener;
.super Ljava/lang/Object;
.source "BroadcastManager.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/IBroadcastManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/BroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract BatteryStateChanged(I)V
.end method

.method public abstract CallStateChanged(I)V
.end method

.method public abstract HeadSetStateChanged(I)V
.end method

.method public abstract MediaStateChanged()V
.end method

.method public abstract RingerModeStateChanged(I)V
.end method

.method public abstract SmartCoverClose()V
.end method

.method public abstract SmartCoverOpen()V
.end method
