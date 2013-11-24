.class Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MainHandler;
.super Landroid/os/Handler;
.source "AbstractMenuItemButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MainHandler;->this$0:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MainHandler;-><init>(Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 157
    :pswitch_0
    const-string v0, "AbstractMenuItemButton"

    const-string v1, "[MenuController] MainHandler :: MSG_CLOSE_MENU_ITEM"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MainHandler;->this$0:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->CloseMenuItem()Z

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
