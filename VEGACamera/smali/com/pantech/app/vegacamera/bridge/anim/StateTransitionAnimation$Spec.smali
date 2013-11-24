.class public Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;
.super Ljava/lang/Object;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$pantech$app$vegacamera$bridge$anim$StateTransitionAnimation$Transition:[I

.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

.field public static final OUTGOING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

.field public static final PHOTO_INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;


# instance fields
.field public backgroundAlphaFrom:F

.field public backgroundAlphaTo:F

.field public backgroundScaleFrom:F

.field public backgroundScaleTo:F

.field public contentAlphaFrom:F

.field public contentAlphaTo:F

.field public contentScaleFrom:F

.field public contentScaleTo:F

.field public duration:I

.field public interpolator:Landroid/view/animation/Interpolator;

.field public overlayAlphaFrom:F

.field public overlayAlphaTo:F

.field public overlayScaleFrom:F

.field public overlayScaleTo:F


# direct methods
.method static synthetic $SWITCH_TABLE$com$pantech$app$vegacamera$bridge$anim$StateTransitionAnimation$Transition()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->$SWITCH_TABLE$com$pantech$app$vegacamera$bridge$anim$StateTransitionAnimation$Transition:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->values()[Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->None:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->$SWITCH_TABLE$com$pantech$app$vegacamera$bridge$anim$StateTransitionAnimation$Transition:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x4040

    const/high16 v3, 0x3f00

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    .line 34
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 52
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    .line 53
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    .line 54
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    .line 55
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    .line 56
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    .line 57
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 58
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    .line 59
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v4, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 60
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 62
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    .line 63
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 64
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    .line 65
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    .line 66
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v4, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    .line 67
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 68
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    .line 69
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    const/high16 v1, 0x3e80

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 70
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 72
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->PHOTO_INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x14a

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->duration:I

    .line 37
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    .line 38
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    .line 39
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    .line 40
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    .line 41
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 42
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    .line 43
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 44
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 45
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 46
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    .line 47
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    .line 48
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    .line 49
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->interpolator:Landroid/view/animation/Interpolator;

    .line 29
    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;)Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-static {p0}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->specForTransition(Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;)Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    move-result-object v0

    return-object v0
.end method

.method private static specForTransition(Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;)Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;
    .locals 2
    .parameter "t"

    .prologue
    .line 76
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->$SWITCH_TABLE$com$pantech$app$vegacamera$bridge$anim$StateTransitionAnimation$Transition()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 78
    :pswitch_0
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    goto :goto_0

    .line 80
    :pswitch_1
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    goto :goto_0

    .line 82
    :pswitch_2
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;->PHOTO_INCOMING:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Spec;

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
