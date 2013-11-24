.class public final enum Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;
.super Ljava/lang/Enum;
.source "ColorExtractContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorExtraction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

.field public static final enum SKY_COLOREXT_BLUE:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

.field public static final enum SKY_COLOREXT_GREEN:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

.field public static final enum SKY_COLOREXT_OFF:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

.field public static final enum SKY_COLOREXT_RED:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

.field public static final enum SKY_COLOREXT_TOUCH:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

.field public static final enum SKY_COLOREXT_YELLOW:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;


# instance fields
.field private colorext:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 101
    new-instance v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    const-string v1, "SKY_COLOREXT_OFF"

    const-string v2, "off"

    invoke-direct {v0, v1, v4, v2}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_OFF:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    new-instance v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    const-string v1, "SKY_COLOREXT_TOUCH"

    const-string v2, "color_touch"

    invoke-direct {v0, v1, v5, v2}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_TOUCH:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    new-instance v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    const-string v1, "SKY_COLOREXT_RED"

    const-string v2, "color_red"

    invoke-direct {v0, v1, v6, v2}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_RED:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    new-instance v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    const-string v1, "SKY_COLOREXT_GREEN"

    .line 102
    const-string v2, "color_green"

    invoke-direct {v0, v1, v7, v2}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_GREEN:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    new-instance v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    const-string v1, "SKY_COLOREXT_BLUE"

    const-string v2, "color_blue"

    invoke-direct {v0, v1, v8, v2}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_BLUE:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    new-instance v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    const-string v1, "SKY_COLOREXT_YELLOW"

    const/4 v2, 0x5

    const-string v3, "color_yellow"

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_YELLOW:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    .line 100
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    sget-object v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_OFF:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_TOUCH:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_RED:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_GREEN:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_BLUE:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->SKY_COLOREXT_YELLOW:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->ENUM$VALUES:[Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "arg"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput-object p3, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->colorext:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->ENUM$VALUES:[Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    array-length v1, v0

    new-array v2, v1, [Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorExtraction;->colorext:Ljava/lang/String;

    return-object v0
.end method
