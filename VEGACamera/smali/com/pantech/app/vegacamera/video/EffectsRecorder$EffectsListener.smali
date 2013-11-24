.class public interface abstract Lcom/pantech/app/vegacamera/video/EffectsRecorder$EffectsListener;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/video/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EffectsListener"
.end annotation


# virtual methods
.method public abstract EffectRecordingThreadComplete()V
.end method

.method public abstract _do_FaceEffectCapture()V
.end method

.method public abstract onEffectsError(Ljava/lang/Exception;)V
.end method

.method public abstract onEffectsUpdate(II)V
.end method
