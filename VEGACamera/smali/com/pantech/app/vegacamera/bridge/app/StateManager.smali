.class public Lcom/pantech/app/vegacamera/bridge/app/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;
    }
.end annotation


# static fields
.field private static final KEY_CLASS:Ljava/lang/String; = "class"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_MAIN:Ljava/lang/String; = "activity-state"

.field private static final KEY_STATE:Ljava/lang/String; = "bundle"

.field private static final TAG:Ljava/lang/String; = "StateManager"


# instance fields
.field private mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

.field private mIsResumed:Z

.field private mResult:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

.field private mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mIsResumed:Z

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    .line 47
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    .line 48
    return-void
.end method


# virtual methods
.method public clearActivityResult()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->getTopState()Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->clearStateResult()V

    .line 138
    :cond_0
    return-void
.end method

.method public clearTasks()V
    .locals 2

    .prologue
    .line 170
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 173
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onDestroy()V

    goto :goto_0
.end method

.method public createOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->getTopState()Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onCreateActionBar(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 250
    const-string v0, "StateManager"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 255
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onDestroy()V

    goto :goto_0
.end method

.method finishState(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->finishState(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;Z)V

    .line 166
    return-void
.end method

.method finishState(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;Z)V
    .locals 6
    .parameter "state"
    .parameter "fireOnPause"

    .prologue
    const/4 v5, 0x1

    .line 178
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 179
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 180
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mResult:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mResult:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    iget v2, v2, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mResult:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 183
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 184
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 185
    const-string v2, "StateManager"

    const-string v3, "finish is rejected, keep the last state"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 188
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_2
    const-string v2, "StateManager"

    const-string v3, "no more state, finish activity"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v0           #activity:Landroid/app/Activity;
    :cond_3
    const-string v2, "StateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "finishState "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    if-eq p1, v2, :cond_5

    .line 193
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 194
    const-string v2, "StateManager"

    const-string v3, "The state is already destroyed"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "The stateview to be finished is not at the top of the stack: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 203
    :cond_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 204
    iput-boolean v5, p1, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mIsFinishing:Z

    .line 205
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    iget-object v1, v2, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    .line 206
    .local v1, top:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :goto_1
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 207
    if-eqz v1, :cond_6

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;)V

    .line 210
    :cond_6
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onPause()V

    .line 213
    :cond_7
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onDestroy()V

    .line 215
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->resume()V

    goto/16 :goto_0

    .line 205
    .end local v1           #top:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :cond_8
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getStateCount()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getTopState()Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 310
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    return-object v0

    .line 309
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasStateClass(Ljava/lang/Class;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/pantech/app/vegacamera/bridge/app/ActivityState;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/pantech/app/vegacamera/bridge/app/ActivityState;>;"
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 300
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    .line 301
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;
    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public itemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 145
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->getTopState()Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_2

    .line 149
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->getTopState()Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 155
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->getTopState()Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 132
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->getTopState()Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onBackPressed()V

    .line 162
    :cond_0
    return-void
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    return-void

    .line 109
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    .line 110
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;
    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mIsResumed:Z

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mIsResumed:Z

    .line 126
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->getTopState()Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onPause()V

    goto :goto_0
.end method

.method public restoreFromState(Landroid/os/Bundle;)V
    .locals 13
    .parameter "inState"

    .prologue
    .line 259
    const-string v8, "StateManager"

    const-string v9, "restoreFromState"

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v8, "activity-state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 261
    .local v5, list:[Landroid/os/Parcelable;
    array-length v9, v5

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v9, :cond_0

    .line 279
    return-void

    .line 261
    :cond_0
    aget-object v6, v5, v8

    .local v6, parcelable:Landroid/os/Parcelable;
    move-object v1, v6

    .line 262
    check-cast v1, Landroid/os/Bundle;

    .line 263
    .local v1, bundle:Landroid/os/Bundle;
    const-string v10, "class"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 265
    .local v4, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/pantech/app/vegacamera/bridge/app/ActivityState;>;"
    const-string v10, "data"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 266
    .local v2, data:Landroid/os/Bundle;
    const-string v10, "bundle"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 270
    .local v7, state:Landroid/os/Bundle;
    :try_start_0
    const-string v10, "StateManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "restoreFromState "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .local v0, activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    iget-object v10, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0, v10, v2}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->initialize(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 276
    invoke-virtual {v0, v2, v7}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 277
    iget-object v10, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v11, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    invoke-direct {v11, v2, v0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)V

    invoke-virtual {v10, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 272
    .end local v0           #activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :catch_0
    move-exception v3

    .line 273
    .local v3, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mIsResumed:Z

    .line 118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->getTopState()Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->resume()V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 10
    .parameter "outState"

    .prologue
    .line 282
    const-string v6, "StateManager"

    const-string v7, "saveState"

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    new-array v4, v6, [Landroid/os/Parcelable;

    .line 285
    .local v4, list:[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .line 286
    .local v2, i:I
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 296
    const-string v6, "activity-state"

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 297
    return-void

    .line 286
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    .line 287
    .local v1, entry:Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "class"

    iget-object v8, v1, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 289
    const-string v7, "data"

    iget-object v8, v1, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 290
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v5, state:Landroid/os/Bundle;
    iget-object v7, v1, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    invoke-virtual {v7, v5}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onSaveState(Landroid/os/Bundle;)V

    .line 292
    const-string v7, "bundle"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 293
    const-string v7, "StateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "saveState "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aput-object v0, v4, v2

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/pantech/app/vegacamera/bridge/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/pantech/app/vegacamera/bridge/app/ActivityState;>;"
    const-string v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startState "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, state:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #state:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    check-cast v1, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .restart local v1       #state:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->getTopState()Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    move-result-object v2

    .line 60
    .local v2, top:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v2, v3, p1, v4}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;)V

    .line 61
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onPause()V

    .line 64
    .end local v2           #top:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v1, v3, p2}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->initialize(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 66
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v4, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    invoke-direct {v4, p2, v1}, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 68
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_1

    .line 69
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->resume()V

    .line 70
    :cond_1
    return-void

    .line 55
    .end local v1           #state:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter "requestCode"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/pantech/app/vegacamera/bridge/app/ActivityState;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/pantech/app/vegacamera/bridge/app/ActivityState;>;"
    const-string v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startStateForResult "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v2, 0x0

    .line 76
    .local v2, state:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #state:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    check-cast v2, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .restart local v2       #state:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v2, v3, p3}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->initialize(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 81
    new-instance v3, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    invoke-direct {v3}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;-><init>()V

    iput-object v3, v2, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mResult:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    .line 82
    iget-object v3, v2, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mResult:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    iput p2, v3, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;->requestCode:I

    .line 84
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->getTopState()Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    move-result-object v0

    .line 86
    .local v0, as:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v0, v3, p1, v4}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;)V

    .line 87
    iget-object v3, v2, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mResult:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    iput-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mReceivedResults:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    .line 88
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onPause()V

    .line 94
    .end local v0           #as:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v4, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    invoke-direct {v4, p3, v2}, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 96
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_1

    .line 97
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->resume()V

    .line 98
    :cond_1
    return-void

    .line 77
    .end local v2           #state:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 91
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #state:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :cond_2
    iget-object v3, v2, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mResult:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mResult:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    goto :goto_0
.end method

.method public switchState(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .parameter "oldState"
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/vegacamera/bridge/app/ActivityState;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/pantech/app/vegacamera/bridge/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    .local p2, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/pantech/app/vegacamera/bridge/app/ActivityState;>;"
    const-string v2, "StateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "switchState "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    if-eq p1, v2, :cond_0

    .line 222
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "The stateview to be finished is not at the top of the stack: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 223
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 227
    const-string v2, "app-bridge"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p1, v2, p2, v3}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;)V

    .line 231
    :cond_1
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_2

    .line 232
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onPause()V

    .line 233
    :cond_2
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onDestroy()V

    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, state:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #state:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    check-cast v1, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .restart local v1       #state:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2, p3}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->initialize(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 243
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v3, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;

    invoke-direct {v3, p3, v1}, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 245
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_3

    .line 246
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->resume()V

    .line 247
    :cond_3
    return-void

    .line 239
    .end local v1           #state:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
