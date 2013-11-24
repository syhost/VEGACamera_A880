.class Lcom/pantech/app/vegacamera/Photo$1;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/PreviewFrameLayout$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Photo;->_InitializeMiscControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Photo;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Photo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Photo$1;->this$0:Lcom/pantech/app/vegacamera/Photo;

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 752
    return-void
.end method
