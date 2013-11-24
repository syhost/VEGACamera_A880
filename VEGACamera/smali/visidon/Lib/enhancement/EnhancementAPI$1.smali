.class Lvisidon/Lib/enhancement/EnhancementAPI$1;
.super Ljava/lang/Object;
.source "EnhancementAPI.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvisidon/Lib/enhancement/EnhancementAPI;->enhanceFacesAndSaveImageToMediaStorage([BLjava/util/ArrayList;Landroid/content/Context;Ljava/io/File;Z)Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 406
    return-void
.end method
