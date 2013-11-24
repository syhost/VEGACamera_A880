.class public final enum Lvisidon/Lib/enhancement/EnhancementAPI$InitState;
.super Ljava/lang/Enum;
.source "EnhancementAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvisidon/Lib/enhancement/EnhancementAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lvisidon/Lib/enhancement/EnhancementAPI$InitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

.field public static final enum FAILED:Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

.field public static final enum OK:Lvisidon/Lib/enhancement/EnhancementAPI$InitState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2, v2}, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;->OK:Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    .line 92
    new-instance v0, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3, v3}, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;->FAILED:Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;->OK:Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    aput-object v1, v0, v2

    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;->FAILED:Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    aput-object v1, v0, v3

    sput-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;->ENUM$VALUES:[Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;->value:I

    .line 98
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvisidon/Lib/enhancement/EnhancementAPI$InitState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    return-object v0
.end method

.method public static values()[Lvisidon/Lib/enhancement/EnhancementAPI$InitState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;->ENUM$VALUES:[Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    array-length v1, v0

    new-array v2, v1, [Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;->value:I

    return v0
.end method
