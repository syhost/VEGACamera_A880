.class Lcom/pantech/app/vegacamera/Panorama$3;
.super Ljava/lang/Object;
.source "Panorama.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$3;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 423
    sparse-switch p2, :sswitch_data_0

    .line 436
    :goto_0
    :sswitch_0
    return v1

    .line 425
    :sswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 426
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$3;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ResetToPreview()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$7(Lcom/pantech/app/vegacamera/Panorama;)V

    goto :goto_0

    .line 429
    :sswitch_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 430
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$3;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ResetToPreview()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$7(Lcom/pantech/app/vegacamera/Panorama;)V

    goto :goto_0

    .line 423
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method
