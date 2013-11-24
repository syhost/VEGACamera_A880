.class Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;
.super Ljava/lang/Object;
.source "MenuContainer.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/MenuContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMenuControlListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/MenuContainer;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/controller/MenuContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;->this$0:Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/controller/MenuContainer;Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;-><init>(Lcom/pantech/app/vegacamera/controller/MenuContainer;)V

    return-void
.end method


# virtual methods
.method public OnMenuControlModeMenuSubItemChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;->this$0:Lcom/pantech/app/vegacamera/controller/MenuContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/MenuContainer;->mListener:Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->access$0(Lcom/pantech/app/vegacamera/controller/MenuContainer;)Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;->this$0:Lcom/pantech/app/vegacamera/controller/MenuContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/MenuContainer;->mListener:Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->access$0(Lcom/pantech/app/vegacamera/controller/MenuContainer;)Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;->OnMenuContainerModeMenuSubItemChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    return-void
.end method

.method public OnMenuControlOneDepthMenuAct(ZI)V
    .locals 1
    .parameter "act"
    .parameter "id"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;->this$0:Lcom/pantech/app/vegacamera/controller/MenuContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/MenuContainer;->mListener:Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->access$0(Lcom/pantech/app/vegacamera/controller/MenuContainer;)Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;->this$0:Lcom/pantech/app/vegacamera/controller/MenuContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/MenuContainer;->mListener:Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->access$0(Lcom/pantech/app/vegacamera/controller/MenuContainer;)Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;->OnMenuContainerOneDepthMenuAct(Z)V

    .line 210
    :cond_0
    return-void
.end method

.method public OnMenuControlSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;->this$0:Lcom/pantech/app/vegacamera/controller/MenuContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/MenuContainer;->mListener:Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->access$0(Lcom/pantech/app/vegacamera/controller/MenuContainer;)Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;->this$0:Lcom/pantech/app/vegacamera/controller/MenuContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/MenuContainer;->mListener:Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->access$0(Lcom/pantech/app/vegacamera/controller/MenuContainer;)Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;->OnMenuContainerSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method public OnMenuControlTwoDepthMenuAct()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;->this$0:Lcom/pantech/app/vegacamera/controller/MenuContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/MenuContainer;->mListener:Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->access$0(Lcom/pantech/app/vegacamera/controller/MenuContainer;)Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/MenuContainer$MyMenuControlListener;->this$0:Lcom/pantech/app/vegacamera/controller/MenuContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/MenuContainer;->mListener:Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;->access$0(Lcom/pantech/app/vegacamera/controller/MenuContainer;)Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/MenuContainer$MenuContainerListener;->OnMenuContainerTwoDepthMenuAct()V

    .line 217
    :cond_0
    return-void
.end method
