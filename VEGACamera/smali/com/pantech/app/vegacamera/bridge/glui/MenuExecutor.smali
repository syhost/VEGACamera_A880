.class public Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;
.super Ljava/lang/Object;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;,
        Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$MediaOperation;,
        Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;
    }
.end annotation


# static fields
.field public static final EXECUTION_RESULT_CANCEL:I = 0x3

.field public static final EXECUTION_RESULT_FAIL:I = 0x2

.field public static final EXECUTION_RESULT_SUCCESS:I = 0x1

.field private static final MSG_DO_SHARE:I = 0x4

.field private static final MSG_TASK_COMPLETE:I = 0x1

.field private static final MSG_TASK_START:I = 0x3

.field private static final MSG_TASK_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MenuExecutor"


# instance fields
.field private final mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

.field private mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mWaitOnStop:Z


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;)V
    .locals 2
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    .line 90
    invoke-static {p2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    .line 91
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$1;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$1;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mHandler:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->onMenuClicked(ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;)Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->onProgressComplete(ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->onProgressStart(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;Lcom/pantech/app/vegacamera/bridge/data/DataManager;Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;ILcom/pantech/app/vegacamera/bridge/data/Path;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->execute(Lcom/pantech/app/vegacamera/bridge/data/DataManager;Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;ILcom/pantech/app/vegacamera/bridge/data/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->onProgressUpdate(ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;)Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 3
    .parameter "context"
    .parameter "titleId"
    .parameter "progressMax"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 67
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 70
    if-le p2, v2, :cond_0

    .line 71
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 73
    :cond_0
    return-object v0
.end method

.method private execute(Lcom/pantech/app/vegacamera/bridge/data/DataManager;Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;ILcom/pantech/app/vegacamera/bridge/data/Path;)Z
    .locals 7
    .parameter "manager"
    .parameter "jc"
    .parameter "cmd"
    .parameter "path"

    .prologue
    .line 242
    const/4 v0, 0x1

    .line 243
    .local v0, result:Z
    const-string v3, "MenuExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Execute cmd: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 247
    .local v1, startTime:J
    sget v3, Lcom/pantech/app/vegacamera/R$id;->action_delete:I

    if-ne p3, v3, :cond_0

    .line 248
    const-string v3, "MenuExecutor"

    const-string v4, "Execute action_delete"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1, p4}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->delete(Lcom/pantech/app/vegacamera/bridge/data/Path;)V

    .line 251
    :cond_0
    const-string v3, "MenuExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "It takes "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms to execute cmd for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return v0
.end method

.method private onMenuClicked(ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V
    .locals 2
    .parameter "action"
    .parameter "listener"

    .prologue
    .line 157
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->onMenuClicked(ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;ZZ)V

    .line 158
    return-void
.end method

.method private onProgressComplete(ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "result"
    .parameter "listener"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    return-void
.end method

.method private onProgressStart(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    return-void
.end method

.method private onProgressUpdate(ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "index"
    .parameter "listener"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    return-void
.end method

.method private stopTaskAndDismissDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eqz v0, :cond_1

    .line 131
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mWaitOnStop:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/util/Future;->cancel()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/util/Future;->waitDone()V

    .line 134
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 135
    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 136
    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 138
    :cond_1
    return-void
.end method


# virtual methods
.method public onMenuClicked(ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;ZZ)V
    .locals 6
    .parameter "action"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    .line 164
    sget v0, Lcom/pantech/app/vegacamera/R$id;->action_delete:I

    if-ne p1, v0, :cond_1

    .line 165
    const-string v0, "MenuExecutor"

    const-string v1, "action_delete"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget v2, Lcom/pantech/app/vegacamera/R$string;->delete:I

    .local v2, title:I
    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 178
    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->startAction(IILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;ZZ)V

    .line 179
    .end local v2           #title:I
    :cond_0
    return-void

    .line 167
    :cond_1
    sget v0, Lcom/pantech/app/vegacamera/R$id;->action_rotate_cw:I

    if-ne p1, v0, :cond_2

    .line 168
    sget v2, Lcom/pantech/app/vegacamera/R$string;->rotate_right:I

    .line 169
    .restart local v2       #title:I
    goto :goto_0

    .end local v2           #title:I
    :cond_2
    sget v0, Lcom/pantech/app/vegacamera/R$id;->action_rotate_ccw:I

    if-ne p1, v0, :cond_3

    .line 170
    sget v2, Lcom/pantech/app/vegacamera/R$string;->rotate_left:I

    .line 171
    .restart local v2       #title:I
    goto :goto_0

    .end local v2           #title:I
    :cond_3
    sget v0, Lcom/pantech/app/vegacamera/R$id;->action_show_on_map:I

    if-ne p1, v0, :cond_4

    .line 172
    sget v2, Lcom/pantech/app/vegacamera/R$string;->show_on_map:I

    .line 173
    .restart local v2       #title:I
    goto :goto_0

    .end local v2           #title:I
    :cond_4
    sget v0, Lcom/pantech/app/vegacamera/R$id;->action_import:I

    if-ne p1, v0, :cond_0

    .line 174
    sget v2, Lcom/pantech/app/vegacamera/R$string;->Import:I

    .line 175
    .restart local v2       #title:I
    goto :goto_0
.end method

.method public onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "menuItem"
    .parameter "confirmMsg"
    .parameter "listener"

    .prologue
    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 216
    .local v0, action:I
    if-eqz p2, :cond_1

    .line 217
    if-eqz p3, :cond_0

    .line 218
    invoke-interface {p3}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 219
    :cond_0
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v1, p0, v0, p3}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V

    .line 220
    .local v1, cdl:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 221
    sget v3, Lcom/pantech/app/vegacamera/R$string;->review_ok:I

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->review_cancel:I

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 225
    .end local v1           #cdl:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ConfirmDialogListener;
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->onMenuClicked(ILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 142
    return-void
.end method

.method public startAction(IILcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;ZZ)V
    .locals 5
    .parameter "action"
    .parameter "title"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    .line 228
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 229
    .local v1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/Path;>;"
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 231
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    .line 232
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, p2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 233
    if-eqz p5, :cond_0

    .line 234
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 236
    :cond_0
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$MediaOperation;

    invoke-direct {v2, p0, p1, v1, p3}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$MediaOperation;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;ILjava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;)V

    .line 237
    .local v2, operation:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$MediaOperation;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getThreadPool()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->submit(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;Lcom/pantech/app/vegacamera/bridge/util/FutureListener;)Lcom/pantech/app/vegacamera/bridge/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 238
    iput-boolean p4, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mWaitOnStop:Z

    .line 239
    return-void
.end method
