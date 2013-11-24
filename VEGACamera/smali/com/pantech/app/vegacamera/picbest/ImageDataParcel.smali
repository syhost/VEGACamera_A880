.class public Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;
.super Ljava/lang/Object;
.source "ImageDataParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHeight:I

.field private mLocation:Landroid/location/Location;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel$1;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel$1;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;II)V
    .locals 0
    .parameter "location"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->setLocation(Landroid/location/Location;)V

    .line 16
    invoke-direct {p0, p2}, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->setWidth(I)V

    .line 17
    invoke-direct {p0, p3}, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->setHeight(I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Landroid/location/Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->mLocation:Landroid/location/Location;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->mWidth:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->mHeight:I

    .line 24
    return-void
.end method

.method private setHeight(I)V
    .locals 0
    .parameter "mHeight"

    .prologue
    .line 60
    iput p1, p0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->mHeight:I

    .line 61
    return-void
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->mLocation:Landroid/location/Location;

    .line 77
    return-void
.end method

.method private setWidth(I)V
    .locals 0
    .parameter "mWidth"

    .prologue
    .line 68
    iput p1, p0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->mWidth:I

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->mHeight:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->mWidth:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "arg1"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->mLocation:Landroid/location/Location;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 35
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    return-void
.end method
