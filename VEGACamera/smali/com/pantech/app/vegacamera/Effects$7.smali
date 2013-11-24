.class Lcom/pantech/app/vegacamera/Effects$7;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Effects;->sendMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Effects;

.field private final synthetic val$effect:I

.field private final synthetic val$msg:I


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Effects;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$7;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iput p2, p0, Lcom/pantech/app/vegacamera/Effects$7;->val$effect:I

    iput p3, p0, Lcom/pantech/app/vegacamera/Effects$7;->val$msg:I

    .line 3004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$7;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget v1, p0, Lcom/pantech/app/vegacamera/Effects$7;->val$effect:I

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects$7;->val$msg:I

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/Effects;->onEffectsUpdate(II)V

    .line 3007
    return-void
.end method
