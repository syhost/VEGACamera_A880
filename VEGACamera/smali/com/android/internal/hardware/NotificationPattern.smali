.class public Lcom/android/internal/hardware/NotificationPattern;
.super Lcom/android/internal/hardware/AbsSkyLightPattern;
.source "NotificationPattern.java"


# static fields
.field private static final mPatterns:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/hardware/NotificationPattern;->mPatterns:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/internal/hardware/NotificationPattern;->mPatterns:[I

    invoke-direct {p0, v0}, Lcom/android/internal/hardware/AbsSkyLightPattern;-><init>([I)V

    .line 10
    return-void
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x3

    return v0
.end method
