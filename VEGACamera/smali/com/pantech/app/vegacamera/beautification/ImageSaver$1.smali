.class Lcom/pantech/app/vegacamera/beautification/ImageSaver$1;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/beautification/ImageSaver;->loadInBackground()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/beautification/ImageSaver;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/beautification/ImageSaver;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver$1;->this$0:Lcom/pantech/app/vegacamera/beautification/ImageSaver;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 111
    return-void
.end method
