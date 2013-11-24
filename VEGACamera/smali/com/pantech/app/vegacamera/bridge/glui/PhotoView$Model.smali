.class public interface abstract Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# static fields
.field public static final FOCUS_HINT_NEXT:I = 0x0

.field public static final FOCUS_HINT_PREVIOUS:I = 0x1

.field public static final LOADING_COMPLETE:I = 0x1

.field public static final LOADING_FAIL:I = 0x2

.field public static final LOADING_INIT:I


# virtual methods
.method public abstract getCurrentIndex()I
.end method

.method public abstract getImageRotation(I)I
.end method

.method public abstract getImageSize(ILcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;)V
.end method

.method public abstract getLoadingState(I)I
.end method

.method public abstract getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
.end method

.method public abstract getScreenNail(I)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
.end method

.method public abstract isCamera(I)Z
.end method

.method public abstract isDeletable(I)Z
.end method

.method public abstract isPanorama(I)Z
.end method

.method public abstract isStaticCamera(I)Z
.end method

.method public abstract isVideo(I)Z
.end method

.method public abstract moveTo(I)V
.end method

.method public abstract setFocusHintDirection(I)V
.end method

.method public abstract setFocusHintPath(Lcom/pantech/app/vegacamera/bridge/data/Path;)V
.end method

.method public abstract setNeedFullImage(Z)V
.end method
