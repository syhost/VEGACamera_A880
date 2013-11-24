.class Lcom/pantech/app/vegacamera/Effects$2;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;


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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    .line 1772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunnerDone(I)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 1774
    monitor-enter p0

    .line 1775
    :try_start_0
    const-string v3, "Effects"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Graph runner done (result="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/Effects;->access$3(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/core/GraphRunner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mOldRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/Effects;->access$9(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/core/GraphRunner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1776
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1775
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v3

    iget-boolean v3, v3, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v3, :cond_0

    .line 1779
    monitor-exit p0

    .line 1818
    :goto_0
    return-void

    .line 1781
    :cond_0
    const/4 v3, 0x6

    if-ne p1, v3, :cond_1

    .line 1783
    const-string v3, "Effects"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error running filter graph!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/Effects;->access$3(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/core/GraphRunner;

    move-result-object v4

    if-nez v4, :cond_7

    :goto_1
    #calls: Lcom/pantech/app/vegacamera/Effects;->raiseError(Ljava/lang/Exception;)V
    invoke-static {v3, v2}, Lcom/pantech/app/vegacamera/Effects;->access$10(Lcom/pantech/app/vegacamera/Effects;Ljava/lang/Exception;)V

    .line 1786
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$9(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1788
    const-string v2, "Effects"

    const-string v3, "Tearing down old graph."

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1790
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$11(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/GraphEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 1791
    .local v1, glEnv:Landroid/filterfw/core/GLEnvironment;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1792
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 1794
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$9(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Effects;->access$11(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/GraphEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 1795
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1796
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->deactivate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1806
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    const/4 v3, 0x0

    #setter for: Lcom/pantech/app/vegacamera/Effects;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/Effects;->access$12(Lcom/pantech/app/vegacamera/Effects;Landroid/filterfw/core/GraphRunner;)V

    .line 1808
    .end local v1           #glEnv:Landroid/filterfw/core/GLEnvironment;
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 1809
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1811
    :cond_5
    const-string v2, "Effects"

    const-string v3, "Previous effect halted, starting new effect."

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$3(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$3(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->isRunning()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1814
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$3(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->run()V

    .line 1774
    :cond_6
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1784
    :cond_7
    :try_start_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$2;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$3(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getError()Ljava/lang/Exception;

    move-result-object v2

    goto/16 :goto_1

    .line 1798
    :catch_0
    move-exception v0

    .line 1799
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "java.lang.RuntimeException: GLEnvironment!= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1802
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1803
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
