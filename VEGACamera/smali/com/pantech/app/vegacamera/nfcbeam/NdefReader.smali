.class public Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;
.super Ljava/lang/Object;
.source "NdefReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteShot"


# instance fields
.field private mListener:Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetListener()Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;

    return-object v0
.end method

.method public OnNdefReaderRelease()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;

    .line 65
    return-void
.end method

.method public OnRead(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    .line 40
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[NdefReader] read() : intent = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 43
    .local v1, messages:[Landroid/os/Parcelable;
    if-eqz v1, :cond_2

    .line 44
    array-length v3, v1

    new-array v2, v3, [Landroid/nfc/NdefMessage;

    .line 45
    .local v2, ndefMessages:[Landroid/nfc/NdefMessage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 49
    array-length v3, v2

    if-lez v3, :cond_1

    .line 50
    iget-object v3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;

    invoke-interface {v3, v2}, Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;->OnReadNdefMessages([Landroid/nfc/NdefMessage;)V

    .line 52
    const/4 v3, 0x1

    .line 60
    .end local v0           #i:I
    .end local v2           #ndefMessages:[Landroid/nfc/NdefMessage;
    :goto_1
    return v3

    .line 46
    .restart local v0       #i:I
    .restart local v2       #ndefMessages:[Landroid/nfc/NdefMessage;
    :cond_0
    aget-object v3, v1, v0

    check-cast v3, Landroid/nfc/NdefMessage;

    aput-object v3, v2, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;->OnReadNdefEmptyMessage()V

    .line 60
    .end local v0           #i:I
    .end local v2           #ndefMessages:[Landroid/nfc/NdefMessage;
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 57
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;->OnReadNonNdefMessage()V

    goto :goto_2
.end method

.method public SetListener(Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;

    .line 37
    return-void
.end method
