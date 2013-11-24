.class public Lcom/pantech/app/vegacamera/menu/PopupManager;
.super Ljava/lang/Object;
.source "PopupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/PopupManager$OnOtherPopupShowedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupManager"

.field private static sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/pantech/app/vegacamera/menu/PopupManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/menu/PopupManager$OnOtherPopupShowedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/menu/PopupManager;->sMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/PopupManager;->mListeners:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method public static GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/menu/PopupManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    const-string v1, "PopupManager"

    const-string v2, "[MenuController] PopupManager GetInstance()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v1, Lcom/pantech/app/vegacamera/menu/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/PopupManager;

    .line 43
    .local v0, instance:Lcom/pantech/app/vegacamera/menu/PopupManager;
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/pantech/app/vegacamera/menu/PopupManager;

    .end local v0           #instance:Lcom/pantech/app/vegacamera/menu/PopupManager;
    invoke-direct {v0}, Lcom/pantech/app/vegacamera/menu/PopupManager;-><init>()V

    .line 45
    .restart local v0       #instance:Lcom/pantech/app/vegacamera/menu/PopupManager;
    sget-object v1, Lcom/pantech/app/vegacamera/menu/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    return-object v0
.end method

.method public static RemoveInstance(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    const-string v0, "PopupManager"

    const-string v1, "[MenuController] RemoveInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/pantech/app/vegacamera/menu/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public NotifyShowPopup(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 27
    const-string v1, "PopupManager"

    const-string v2, "[MenuController] NotifyShowPopup()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/PopupManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    return-void

    .line 28
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/PopupManager$OnOtherPopupShowedListener;

    .local v0, listener:Lcom/pantech/app/vegacamera/menu/PopupManager$OnOtherPopupShowedListener;
    move-object v1, v0

    .line 29
    check-cast v1, Landroid/view/View;

    if-eq v1, p1, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/menu/PopupManager$OnOtherPopupShowedListener;->onOtherPopupShowed()V

    goto :goto_0
.end method

.method public SetOnOtherPopupShowedListener(Lcom/pantech/app/vegacamera/menu/PopupManager$OnOtherPopupShowedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 36
    const-string v0, "PopupManager"

    const-string v1, "[MenuController] SetOnOtherPopupShowedListener()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/PopupManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method
