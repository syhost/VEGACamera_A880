.class Lcom/pantech/app/vegacamera/aot/AOTLayout$1;
.super Ljava/lang/Object;
.source "AOTLayout.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/aot/AOTLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field SavedX:F

.field SavedY:F

.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTLayout;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTLayout;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->SavedX:F

    .line 41
    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->SavedY:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    .line 70
    const-string v2, "AOTLayout"

    const-string v3, "[AOTLayout]onScale"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 72
    .local v0, currentX:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 74
    .local v1, currentY:F
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTLayout;->mSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->access$0(Lcom/pantech/app/vegacamera/aot/AOTLayout;)Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTLayout;->mSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->access$0(Lcom/pantech/app/vegacamera/aot/AOTLayout;)Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->SavedX:F

    sub-float v3, v0, v3

    .line 76
    iget v4, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->SavedY:F

    sub-float v4, v1, v4

    .line 75
    invoke-interface {v2, v3, v4}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;->onSizeChange(FF)V

    .line 79
    :cond_0
    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->SavedX:F

    .line 80
    iput v1, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->SavedY:F

    .line 82
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    .line 53
    const-string v2, "AOTLayout"

    const-string v3, "[AOTLayout]onScaleBegin"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 56
    .local v0, currentX:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 58
    .local v1, currentY:F
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTLayout;->mSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->access$0(Lcom/pantech/app/vegacamera/aot/AOTLayout;)Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTLayout;->mSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->access$0(Lcom/pantech/app/vegacamera/aot/AOTLayout;)Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;->onSizeChangeStart()V

    .line 62
    :cond_0
    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->SavedX:F

    .line 63
    iput v1, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->SavedY:F

    .line 65
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 45
    const-string v0, "AOTLayout"

    const-string v1, "[AOTLayout]onScaleEnd"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTLayout;->mSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->access$0(Lcom/pantech/app/vegacamera/aot/AOTLayout;)Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTLayout;->mSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->access$0(Lcom/pantech/app/vegacamera/aot/AOTLayout;)Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;->onSizeChangeFinish()V

    .line 49
    :cond_0
    return-void
.end method
