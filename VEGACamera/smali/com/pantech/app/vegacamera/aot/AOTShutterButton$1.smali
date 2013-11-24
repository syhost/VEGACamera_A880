.class Lcom/pantech/app/vegacamera/aot/AOTShutterButton$1;
.super Ljava/lang/Object;
.source "AOTShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

.field private final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    iput-boolean p2, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$1;->val$pressed:Z

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$1;->val$pressed:Z

    #calls: Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->longClickedShutterButtonFocus(Z)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->access$1(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;Z)V

    .line 52
    return-void
.end method
