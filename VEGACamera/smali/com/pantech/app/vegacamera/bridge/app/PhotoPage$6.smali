.class Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$6;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->setupNfcBeamPush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$6;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 1
    .parameter "event"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$6;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$34(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
