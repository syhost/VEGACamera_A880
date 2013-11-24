.class public interface abstract Lcom/pantech/app/vegacamera/operator/ICapture;
.super Ljava/lang/Object;
.source "ICapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;
    }
.end annotation


# virtual methods
.method public abstract onCapture()V
.end method

.method public abstract onCaptureAnimation()V
.end method

.method public abstract onRelease()V
.end method

.method public abstract onStop()V
.end method

.method public abstract setCaptureMode(I)V
.end method

.method public abstract setListener(Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;)V
.end method
