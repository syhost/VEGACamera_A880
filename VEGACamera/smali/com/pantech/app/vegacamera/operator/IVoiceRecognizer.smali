.class public interface abstract Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;
.super Ljava/lang/Object;
.source "IVoiceRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer$VRListener;
    }
.end annotation


# static fields
.field public static final LVR_BACK:I = 0xa

.field public static final LVR_EMAIL:I = 0x2

.field public static final LVR_FLASH_AUTO:I = 0x5

.field public static final LVR_FLASH_OFF:I = 0x4

.field public static final LVR_FLASH_ON:I = 0x3

.field public static final LVR_FLASH_TORCH:I = 0x6

.field public static final LVR_FRONT:I = 0x9

.field public static final LVR_GALLERY:I = 0xc

.field public static final LVR_HELP:I = 0xd

.field public static final LVR_MESSAGE:I = 0x1

.field public static final LVR_NONE:I = -0x1

.field public static final LVR_RECORD:I = 0xe

.field public static final LVR_SENSOR_CHANGE:I = 0xb

.field public static final LVR_SHUTTER:I = 0x0

.field public static final LVR_ZOOM_IN:I = 0x7

.field public static final LVR_ZOOM_OUT:I = 0x8

.field public static final mListener:Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer$VRListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer;->mListener:Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer$VRListener;

    return-void
.end method


# virtual methods
.method public abstract ActionVR(I)V
.end method

.method public abstract GetCurrentOnoffState()Z
.end method

.method public abstract GetCurrentTriggerState()Z
.end method

.method public abstract Release()V
.end method

.method public abstract SetVRListenner(Lcom/pantech/app/vegacamera/operator/IVoiceRecognizer$VRListener;)V
.end method

.method public abstract StartVoiceRecognizer()V
.end method

.method public abstract StopVoiceRecognizer()V
.end method
