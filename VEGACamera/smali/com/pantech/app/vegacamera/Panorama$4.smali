.class Lcom/pantech/app/vegacamera/Panorama$4;
.super Ljava/lang/Object;
.source "Panorama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Panorama;->OnResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Panorama;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$4;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$4;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMediaActionSound:Landroid/media/MediaActionSound;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$31(Lcom/pantech/app/vegacamera/Panorama;)Landroid/media/MediaActionSound;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 494
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$4;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMediaActionSound:Landroid/media/MediaActionSound;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$31(Lcom/pantech/app/vegacamera/Panorama;)Landroid/media/MediaActionSound;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 495
    return-void
.end method
