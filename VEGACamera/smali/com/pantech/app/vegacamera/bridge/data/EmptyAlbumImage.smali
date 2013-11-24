.class public Lcom/pantech/app/vegacamera/bridge/data/EmptyAlbumImage;
.super Lcom/pantech/app/vegacamera/bridge/data/ActionImage;
.source "EmptyAlbumImage.java"


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;)V
    .locals 1
    .parameter "path"
    .parameter "application"

    .prologue
    .line 26
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->placeholder_empty:I

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/app/vegacamera/bridge/data/ActionImage;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/data/ActionImage;->getSupportedOperations()I

    move-result v0

    or-int/lit16 v0, v0, 0x4000

    return v0
.end method
