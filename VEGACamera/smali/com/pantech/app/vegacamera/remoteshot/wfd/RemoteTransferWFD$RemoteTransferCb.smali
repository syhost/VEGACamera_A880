.class public interface abstract Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
.super Ljava/lang/Object;
.source "RemoteTransferWFD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteTransferCb"
.end annotation


# virtual methods
.method public abstract onCommandReceiveServerCb(ILjava/lang/Object;)V
.end method

.method public abstract onCommandSendServerCb(ILjava/lang/Object;)V
.end method

.method public abstract onPreviewSendServerCb(I)V
.end method

.method public abstract onSendMessgeHandlerCb(I)V
.end method
