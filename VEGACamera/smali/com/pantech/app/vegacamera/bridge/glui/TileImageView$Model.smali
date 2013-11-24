.class public interface abstract Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;
.super Ljava/lang/Object;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract getImageHeight()I
.end method

.method public abstract getImageWidth()I
.end method

.method public abstract getLevelCount()I
.end method

.method public abstract getScreenNail()Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
.end method

.method public abstract getTile(IIIIILcom/pantech/app/vegacamera/bridge/data/BitmapPool;)Landroid/graphics/Bitmap;
.end method
