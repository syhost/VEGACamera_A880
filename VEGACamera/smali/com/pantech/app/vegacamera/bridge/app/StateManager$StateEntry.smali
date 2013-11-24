.class Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEntry"
.end annotation


# instance fields
.field public activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

.field public data:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)V
    .locals 0
    .parameter "data"
    .parameter "state"

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    .line 319
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/app/StateManager$StateEntry;->activityState:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    .line 320
    return-void
.end method
