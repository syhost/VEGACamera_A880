.class public interface abstract Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;
.super Ljava/lang/Object;
.source "AppBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/AppBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Server"
.end annotation


# virtual methods
.method public abstract addSecureAlbumItem(ZI)V
.end method

.method public abstract notifyScreenNailChanged()V
.end method

.method public abstract setCameraRelativeFrame(Landroid/graphics/Rect;)V
.end method

.method public abstract setSwipingEnabled(Z)V
.end method

.method public abstract switchToQuickView(I)V
.end method

.method public abstract switchWithCaptureAnimation(I)Z
.end method
