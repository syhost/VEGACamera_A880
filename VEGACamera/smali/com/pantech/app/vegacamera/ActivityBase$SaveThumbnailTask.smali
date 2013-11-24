.class Lcom/pantech/app/vegacamera/ActivityBase$SaveThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/pantech/app/vegacamera/controller/Thumbnail;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/ActivityBase;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ActivityBase$SaveThumbnailTask;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/ActivityBase$SaveThumbnailTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/ActivityBase$SaveThumbnailTask;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/pantech/app/vegacamera/controller/Thumbnail;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/ActivityBase$SaveThumbnailTask;->doInBackground([Lcom/pantech/app/vegacamera/controller/Thumbnail;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/pantech/app/vegacamera/controller/Thumbnail;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 636
    array-length v2, p1

    .line 637
    .local v2, n:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ActivityBase$SaveThumbnailTask;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 638
    .local v0, filesDir:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 641
    const/4 v3, 0x0

    return-object v3

    .line 639
    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {v3, v0}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->SaveLastThumbnailToFile(Ljava/io/File;)V

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
