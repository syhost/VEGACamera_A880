.class Lcom/pantech/app/vegacamera/browser/Browser$DirectoryFilter;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/browser/Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirectoryFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/browser/Browser;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/browser/Browser;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/pantech/app/vegacamera/browser/Browser$DirectoryFilter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .parameter "pathname"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser$DirectoryFilter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    #getter for: Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/browser/Browser;->access$0(Lcom/pantech/app/vegacamera/browser/Browser;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Browser] DirectoryFilter :: accept"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    goto :goto_0
.end method
