.class public Lcom/pantech/app/vegacamera/bridge/data/CameraShortcutImage;
.super Lcom/pantech/app/vegacamera/bridge/data/ActionImage;
.source "CameraShortcutImage.java"


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;)V
    .locals 1
    .parameter "path"
    .parameter "application"

    .prologue
    .line 26
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->placeholder_camera:I

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/app/vegacamera/bridge/data/ActionImage;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public getSupportedOperations()I
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/data/ActionImage;->getSupportedOperations()I

    move-result v0

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    return v0
.end method
