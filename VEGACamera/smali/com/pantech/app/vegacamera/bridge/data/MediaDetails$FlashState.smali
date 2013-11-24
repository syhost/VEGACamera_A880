.class public Lcom/pantech/app/vegacamera/bridge/data/MediaDetails$FlashState;
.super Ljava/lang/Object;
.source "MediaDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlashState"
.end annotation


# static fields
.field private static FLASH_FIRED_MASK:I


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    sput v0, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails$FlashState;->FLASH_FIRED_MASK:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails$FlashState;->mState:I

    .line 71
    return-void
.end method


# virtual methods
.method public isFlashFired()Z
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails$FlashState;->mState:I

    sget v1, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails$FlashState;->FLASH_FIRED_MASK:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
