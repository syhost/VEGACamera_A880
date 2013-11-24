.class Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/pantech/app/vegacamera/controller/Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field private mLookAtCache:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;Z)V
    .locals 2
    .parameter
    .parameter "lookAtCache"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 583
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] LoadThumbnailTask"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iput-boolean p2, p0, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;->mLookAtCache:Z

    .line 585
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/pantech/app/vegacamera/controller/Thumbnail;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 590
    iget-object v5, p0, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 591
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 592
    .local v3, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz v5, :cond_0

    .line 593
    iget-object v5, p0, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v3

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    .line 614
    .end local v3           #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :cond_1
    :goto_0
    return-object v3

    .line 600
    .restart local v3       #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :cond_2
    if-nez v3, :cond_1

    .line 601
    new-array v2, v6, [Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 603
    .local v2, result:[Lcom/pantech/app/vegacamera/controller/Thumbnail;
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/pantech/app/vegacamera/controller/Thumbnail;)I

    move-result v0

    .line 604
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v3, v4

    .line 608
    goto :goto_0

    .line 606
    :pswitch_1
    const/4 v4, 0x0

    aget-object v3, v2, v4

    goto :goto_0

    .line 610
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;->cancel(Z)Z

    move-object v3, v4

    .line 611
    goto :goto_0

    .line 604
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V
    .locals 1
    .parameter "thumbnail"

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 623
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->UpdateThumbnailView()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/pantech/app/vegacamera/controller/Thumbnail;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;->onPostExecute(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    return-void
.end method
