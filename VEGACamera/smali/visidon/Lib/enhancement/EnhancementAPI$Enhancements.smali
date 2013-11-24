.class public final enum Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;
.super Ljava/lang/Enum;
.source "EnhancementAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvisidon/Lib/enhancement/EnhancementAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Enhancements"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHEEK_BLUSHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

.field private static final synthetic ENUM$VALUES:[Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

.field public static final enum EYEBROW_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

.field public static final enum EYE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

.field public static final enum FACE_CONTOURING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

.field public static final enum MOUTH_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

.field public static final enum NOSE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

.field public static final enum SKIN_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

.field public static final enum SKIN_TONE_ADJUSTING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

.field public static final enum SPOT_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

.field public static final enum TEETH_WHITENING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;


# instance fields
.field private final defaultStrength:I

.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    const-string v1, "SKIN_SMOOTHING"

    const-string v4, "Skin smoothing"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    .line 35
    new-instance v3, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    const-string v4, "SPOT_SMOOTHING"

    const-string v7, "Spot smoothing"

    move v6, v5

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v3, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SPOT_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    .line 36
    new-instance v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    const-string v7, "FACE_CONTOURING"

    const-string v10, "Face contouring"

    move v8, v12

    move v9, v12

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->FACE_CONTOURING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    .line 37
    new-instance v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    const-string v7, "TEETH_WHITENING"

    const-string v10, "Teeth whitening"

    move v8, v13

    move v9, v13

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->TEETH_WHITENING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    .line 38
    new-instance v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    const-string v7, "EYE_SHAPING"

    const-string v10, "Eye enlargement"

    move v8, v14

    move v9, v14

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    .line 39
    new-instance v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    const-string v7, "CHEEK_BLUSHING"

    const/4 v8, 0x5

    const/4 v9, 0x5

    const-string v10, "Cheek blushing"

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->CHEEK_BLUSHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    .line 40
    new-instance v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    const-string v7, "SKIN_TONE_ADJUSTING"

    const/4 v8, 0x6

    const/4 v9, 0x6

    const-string v10, "Skin tone adjusting"

    const/16 v11, 0x32

    invoke-direct/range {v6 .. v11}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_TONE_ADJUSTING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    .line 41
    new-instance v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    const-string v7, "MOUTH_SHAPING"

    const/4 v8, 0x7

    const/4 v9, 0x7

    const-string v10, "Mouth shaping"

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->MOUTH_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    .line 42
    new-instance v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    const-string v7, "NOSE_SHAPING"

    const/16 v8, 0x8

    const/16 v9, 0x8

    const-string v10, "Nose shaping"

    const/16 v11, 0x32

    invoke-direct/range {v6 .. v11}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->NOSE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    .line 43
    new-instance v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    const-string v7, "EYEBROW_SHAPING"

    const/16 v8, 0x9

    const/16 v9, 0x9

    const-string v10, "Eyebrow shaping"

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYEBROW_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    aput-object v1, v0, v2

    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SPOT_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    aput-object v1, v0, v5

    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->FACE_CONTOURING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    aput-object v1, v0, v12

    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->TEETH_WHITENING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    aput-object v1, v0, v13

    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->CHEEK_BLUSHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_TONE_ADJUSTING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->MOUTH_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->NOSE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYEBROW_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    aput-object v2, v0, v1

    sput-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->ENUM$VALUES:[Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .parameter "name"
    .parameter "defaultStrength"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->value:I

    .line 52
    iput-object p4, p0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->name:Ljava/lang/String;

    .line 53
    iput p5, p0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->defaultStrength:I

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    return-object v0
.end method

.method public static values()[Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->ENUM$VALUES:[Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    array-length v1, v0

    new-array v2, v1, [Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getDefaultStrength()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->defaultStrength:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->value:I

    return v0
.end method
