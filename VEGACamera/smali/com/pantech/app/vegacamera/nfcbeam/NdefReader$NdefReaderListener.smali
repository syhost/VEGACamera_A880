.class public interface abstract Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;
.super Ljava/lang/Object;
.source "NdefReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NdefReaderListener"
.end annotation


# virtual methods
.method public abstract OnReadNdefEmptyMessage()V
.end method

.method public abstract OnReadNdefMessages([Landroid/nfc/NdefMessage;)V
.end method

.method public abstract OnReadNonNdefMessage()V
.end method
