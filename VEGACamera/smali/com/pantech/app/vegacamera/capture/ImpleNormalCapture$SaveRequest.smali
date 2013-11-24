.class Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$SaveRequest;
.super Ljava/lang/Object;
.source "ImpleNormalCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveRequest"
.end annotation


# instance fields
.field data:[B

.field height:I

.field loc:Landroid/location/Location;

.field orientation:I

.field thumbnailWidth:I

.field title:Ljava/lang/String;

.field uri:Landroid/net/Uri;

.field width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$SaveRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$SaveRequest;-><init>()V

    return-void
.end method
