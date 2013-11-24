.class Lcom/pantech/app/vegacamera/picbest/ImageDataParcel$1;
.super Ljava/lang/Object;
.source "ImageDataParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;
    .locals 1
    .parameter "source"

    .prologue
    .line 45
    new-instance v0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;

    invoke-direct {v0, p1}, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;
    .locals 1
    .parameter "size"

    .prologue
    .line 51
    new-array v0, p1, [Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel$1;->newArray(I)[Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;

    move-result-object v0

    return-object v0
.end method
