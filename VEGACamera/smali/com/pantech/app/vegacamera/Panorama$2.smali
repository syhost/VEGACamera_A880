.class Lcom/pantech/app/vegacamera/Panorama$2;
.super Ljava/lang/Object;
.source "Panorama.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Panorama;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$2;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 417
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 418
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$2;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ResetToPreview()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$7(Lcom/pantech/app/vegacamera/Panorama;)V

    .line 419
    return-void
.end method
