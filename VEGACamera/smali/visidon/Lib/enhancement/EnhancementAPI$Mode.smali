.class public final enum Lvisidon/Lib/enhancement/EnhancementAPI$Mode;
.super Ljava/lang/Enum;
.source "EnhancementAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvisidon/Lib/enhancement/EnhancementAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lvisidon/Lib/enhancement/EnhancementAPI$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

.field public static final enum STILL:Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

.field public static final enum VIDEO:Lvisidon/Lib/enhancement/EnhancementAPI$Mode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    new-instance v0, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    const-string v1, "STILL"

    invoke-direct {v0, v1, v2, v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->STILL:Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    .line 154
    new-instance v0, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3, v3}, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->VIDEO:Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->STILL:Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->VIDEO:Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->ENUM$VALUES:[Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "mode"

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 159
    iput p3, p0, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->value:I

    .line 160
    return-void
.end method

.method static synthetic access$2(Lvisidon/Lib/enhancement/EnhancementAPI$Mode;)I
    .locals 1
    .parameter

    .prologue
    .line 156
    iget v0, p0, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->value:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lvisidon/Lib/enhancement/EnhancementAPI$Mode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    return-object v0
.end method

.method public static values()[Lvisidon/Lib/enhancement/EnhancementAPI$Mode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->ENUM$VALUES:[Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    array-length v1, v0

    new-array v2, v1, [Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->value:I

    return v0
.end method
