.class public Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteBinderWD;
.super Landroid/os/Binder;
.source "RemoteTransferServiceWFD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteBinderWD"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteBinderWD;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
    .locals 2

    .prologue
    .line 88
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] SmartBeamBinderWD() : ~~~~~~~~~~~~~~~~~~~~~ "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] SmartBeamBinderWD() : getService() "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] SmartBeamBinderWD() : ~~~~~~~~~~~~~~~~~~~~~ "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "RemoteShot"

    .line 92
    const-string v1, "[RemoteTransferServiceWFD] Step_2 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    .line 91
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteBinderWD;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    return-object v0
.end method
