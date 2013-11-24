.class Lcom/pantech/app/vegacamera/Effects$3;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Effects;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$3;->this$0:Lcom/pantech/app/vegacamera/Effects;

    .line 1821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLearningDone(Landroid/filterpacks/videoproc/BackDropperFilter;)V
    .locals 3
    .parameter "filter"

    .prologue
    const/4 v2, 0x1

    .line 1823
    const-string v0, "Effects"

    const-string v1, "Learning done callback triggered"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$3;->this$0:Lcom/pantech/app/vegacamera/Effects;

    const/4 v1, 0x2

    #calls: Lcom/pantech/app/vegacamera/Effects;->sendMessage(II)V
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/Effects;->access$13(Lcom/pantech/app/vegacamera/Effects;II)V

    .line 1828
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$3;->this$0:Lcom/pantech/app/vegacamera/Effects;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/Effects;->enable3ALocks(Z)V

    .line 1829
    return-void
.end method
