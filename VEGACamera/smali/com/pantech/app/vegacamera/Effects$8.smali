.class Lcom/pantech/app/vegacamera/Effects$8;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Effects;->raiseError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Effects;

.field private final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Effects;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$8;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iput-object p2, p0, Lcom/pantech/app/vegacamera/Effects$8;->val$exception:Ljava/lang/Exception;

    .line 3013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$8;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$8;->val$exception:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Effects;->onEffectsError(Ljava/lang/Exception;)V

    .line 3021
    return-void
.end method
