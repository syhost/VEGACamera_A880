.class Lcom/pantech/app/vegacamera/self/SelfShotHelper$1;
.super Ljava/lang/Object;
.source "SelfShotHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/self/SelfShotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/self/SelfShotHelper;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper$1;->this$0:Lcom/pantech/app/vegacamera/self/SelfShotHelper;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper$1;->this$0:Lcom/pantech/app/vegacamera/self/SelfShotHelper;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper$1;->this$0:Lcom/pantech/app/vegacamera/self/SelfShotHelper;

    #calls: Lcom/pantech/app/vegacamera/self/SelfShotHelper;->getFaceNum()I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->access$0(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)I

    move-result v1

    #setter for: Lcom/pantech/app/vegacamera/self/SelfShotHelper;->Face_newNum:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->access$1(Lcom/pantech/app/vegacamera/self/SelfShotHelper;I)V

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper$1;->this$0:Lcom/pantech/app/vegacamera/self/SelfShotHelper;

    #getter for: Lcom/pantech/app/vegacamera/self/SelfShotHelper;->Face_newNum:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->access$2(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper$1;->this$0:Lcom/pantech/app/vegacamera/self/SelfShotHelper;

    #getter for: Lcom/pantech/app/vegacamera/self/SelfShotHelper;->Face_oldNum:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->access$3(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 47
    const-string v0, "selfmode"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[SelfShotHelper] mSHandlerRunnable() newNum is  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper$1;->this$0:Lcom/pantech/app/vegacamera/self/SelfShotHelper;

    #getter for: Lcom/pantech/app/vegacamera/self/SelfShotHelper;->Face_newNum:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->access$2(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "selfmode"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[SelfShotHelper] mSHandlerRunnable() oldNum is  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper$1;->this$0:Lcom/pantech/app/vegacamera/self/SelfShotHelper;

    #getter for: Lcom/pantech/app/vegacamera/self/SelfShotHelper;->Face_oldNum:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->access$3(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper$1;->this$0:Lcom/pantech/app/vegacamera/self/SelfShotHelper;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper$1;->this$0:Lcom/pantech/app/vegacamera/self/SelfShotHelper;

    #getter for: Lcom/pantech/app/vegacamera/self/SelfShotHelper;->Face_newNum:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->access$2(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)I

    move-result v1

    #setter for: Lcom/pantech/app/vegacamera/self/SelfShotHelper;->Face_oldNum:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->access$4(Lcom/pantech/app/vegacamera/self/SelfShotHelper;I)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper$1;->this$0:Lcom/pantech/app/vegacamera/self/SelfShotHelper;

    #getter for: Lcom/pantech/app/vegacamera/self/SelfShotHelper;->mSelfHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->access$5(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper$1;->this$0:Lcom/pantech/app/vegacamera/self/SelfShotHelper;

    #getter for: Lcom/pantech/app/vegacamera/self/SelfShotHelper;->mSelfHandlerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->access$6(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void

    .line 53
    :cond_0
    const-string v0, "selfmode"

    const-string v1, "[SelfShotHelper] mSHandlerRunnable() old & new number is same."

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
