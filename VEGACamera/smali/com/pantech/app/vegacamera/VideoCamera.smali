.class public Lcom/pantech/app/vegacamera/VideoCamera;
.super Lcom/pantech/app/vegacamera/Camera;
.source "VideoCamera.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Camera;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/Camera;->onCreate(Landroid/os/Bundle;)V

    .line 9
    return-void
.end method
