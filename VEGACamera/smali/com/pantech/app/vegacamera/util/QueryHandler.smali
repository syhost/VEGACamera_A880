.class public Lcom/pantech/app/vegacamera/util/QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/util/QueryHandler$AsyncQueryListener;
    }
.end annotation


# static fields
.field public static final VOICE_ONOFF:I = 0x1

.field public static final VOICE_TRIGGER:I


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/vegacamera/util/QueryHandler$AsyncQueryListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/pantech/app/vegacamera/util/QueryHandler$AsyncQueryListener;)V
    .locals 0
    .parameter "resolver"
    .parameter "listener"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/pantech/app/vegacamera/util/QueryHandler;->setQueryListener(Lcom/pantech/app/vegacamera/util/QueryHandler$AsyncQueryListener;)V

    .line 23
    return-void
.end method


# virtual methods
.method public clearQueryListener()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/util/QueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 31
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 35
    iget-object v1, p0, Lcom/pantech/app/vegacamera/util/QueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 36
    .local v0, listener:Lcom/pantech/app/vegacamera/util/QueryHandler$AsyncQueryListener;
    :goto_0
    if-eqz v0, :cond_2

    .line 37
    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/util/QueryHandler$AsyncQueryListener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 38
    const-string v1, ""

    const-string v2, "[QueryHandler] onQueryComplete"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    :goto_1
    return-void

    .line 35
    .end local v0           #listener:Lcom/pantech/app/vegacamera/util/QueryHandler$AsyncQueryListener;
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/util/QueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/util/QueryHandler$AsyncQueryListener;

    move-object v0, v1

    goto :goto_0

    .line 39
    .restart local v0       #listener:Lcom/pantech/app/vegacamera/util/QueryHandler$AsyncQueryListener;
    :cond_2
    if-eqz p3, :cond_0

    .line 40
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 41
    const-string v1, ""

    const-string v2, "[QueryHandler] cursor.close()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setQueryListener(Lcom/pantech/app/vegacamera/util/QueryHandler$AsyncQueryListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 26
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/util/QueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 27
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
