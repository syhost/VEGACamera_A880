.class public Lvisidon/Lib/enhancement/Enhancement;
.super Ljava/lang/Object;
.source "Enhancement.java"


# instance fields
.field private mEnhancement:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

.field private mStrength:I


# direct methods
.method public constructor <init>(Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;)V
    .locals 1
    .parameter "enhancement"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lvisidon/Lib/enhancement/Enhancement;->mEnhancement:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    .line 28
    iget-object v0, p0, Lvisidon/Lib/enhancement/Enhancement;->mEnhancement:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v0

    invoke-virtual {p0, v0}, Lvisidon/Lib/enhancement/Enhancement;->setStrength(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lvisidon/Lib/enhancement/Enhancement;->mEnhancement:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrength()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lvisidon/Lib/enhancement/Enhancement;->mStrength:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lvisidon/Lib/enhancement/Enhancement;->mEnhancement:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v0

    return v0
.end method

.method public resetToDefaultStrength()Z
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lvisidon/Lib/enhancement/Enhancement;->mStrength:I

    iget-object v1, p0, Lvisidon/Lib/enhancement/Enhancement;->mEnhancement:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lvisidon/Lib/enhancement/Enhancement;->mEnhancement:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v0

    iput v0, p0, Lvisidon/Lib/enhancement/Enhancement;->mStrength:I

    .line 72
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStrength(I)V
    .locals 0
    .parameter "mStrength"

    .prologue
    .line 60
    iput p1, p0, Lvisidon/Lib/enhancement/Enhancement;->mStrength:I

    .line 61
    return-void
.end method
