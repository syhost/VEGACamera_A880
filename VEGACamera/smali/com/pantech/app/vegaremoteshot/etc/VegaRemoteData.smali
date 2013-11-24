.class public Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;
.super Ljava/lang/Object;
.source "VegaRemoteData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCameraHashData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->mCameraHashData:Ljava/util/HashMap;

    .line 7
    return-void
.end method


# virtual methods
.method public getCameraHashMapData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->mCameraHashData:Ljava/util/HashMap;

    return-object v0
.end method

.method public setCameraHashMapData(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, cameraHashData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->mCameraHashData:Ljava/util/HashMap;

    .line 21
    return-void
.end method
