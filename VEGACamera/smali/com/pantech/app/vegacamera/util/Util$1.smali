.class Lcom/pantech/app/vegacamera/util/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 1159
    const-string v0, "Util"

    const-string v1, "soundPool onLoadComplete"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    #calls: Lcom/pantech/app/vegacamera/util/Util;->_SoundPoolPlay()V
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->access$0()V

    .line 1161
    return-void
.end method
