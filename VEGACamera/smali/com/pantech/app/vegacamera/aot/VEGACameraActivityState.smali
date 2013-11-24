.class public Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;
.super Ljava/lang/Object;
.source "VEGACameraActivityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;
    }
.end annotation


# static fields
.field public static final CAMERA_ACTIVITY_STATE_ONCREATE:I = 0x0

.field public static final CAMERA_ACTIVITY_STATE_ONDESTROY:I = 0x3

.field public static final CAMERA_ACTIVITY_STATE_ONPAUSE:I = 0x2

.field public static final CAMERA_ACTIVITY_STATE_ONRESUME:I = 0x1

.field private static mListener:Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;->mListener:Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getCameraActivityStateListener()Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;->mListener:Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;

    return-object v0
.end method

.method public static sendCameraActivityState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 24
    sget-object v0, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;->mListener:Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;->onAOTCameraActivityListener(I)V

    .line 25
    return-void
.end method

.method public static setCameraActivityStateListener(Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 16
    sput-object p0, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;->mListener:Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;

    .line 17
    return-void
.end method
