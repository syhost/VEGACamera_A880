.class Lcom/pantech/app/vegacamera/controller/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/controller/ShutterButton;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/ShutterButton;

.field private final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/controller/ShutterButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton$1;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    iput-boolean p2, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton$1;->val$pressed:Z

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton$1;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterButton;->_LongClick:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->access$0(Lcom/pantech/app/vegacamera/controller/ShutterButton;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton$1;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterButton;->_PerformClick:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->access$1(Lcom/pantech/app/vegacamera/controller/ShutterButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton$1;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton$1;->val$pressed:Z

    #calls: Lcom/pantech/app/vegacamera/controller/ShutterButton;->_CallShutterButtonFocus(Z)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->access$2(Lcom/pantech/app/vegacamera/controller/ShutterButton;Z)V

    .line 91
    :cond_0
    return-void
.end method
