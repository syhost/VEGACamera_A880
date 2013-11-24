.class Lcom/pantech/app/vegacamera/controller/FocusContainer$1;
.super Ljava/lang/Object;
.source "FocusContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/controller/FocusContainer;->FocusStop(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/controller/FocusContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$1;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$1;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$1;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$5(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v1

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusDataType()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$1;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$5(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v2

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusDataRect()Landroid/graphics/Rect;

    move-result-object v2

    #calls: Lcom/pantech/app/vegacamera/controller/FocusContainer;->_FocusStop(ILandroid/graphics/Rect;)V
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$6(Lcom/pantech/app/vegacamera/controller/FocusContainer;ILandroid/graphics/Rect;)V

    .line 211
    return-void
.end method
