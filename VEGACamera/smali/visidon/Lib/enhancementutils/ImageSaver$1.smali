.class Lvisidon/Lib/enhancementutils/ImageSaver$1;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvisidon/Lib/enhancementutils/ImageSaver;->loadInBackground()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvisidon/Lib/enhancementutils/ImageSaver;


# direct methods
.method constructor <init>(Lvisidon/Lib/enhancementutils/ImageSaver;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lvisidon/Lib/enhancementutils/ImageSaver$1;->this$0:Lvisidon/Lib/enhancementutils/ImageSaver;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 201
    return-void
.end method
