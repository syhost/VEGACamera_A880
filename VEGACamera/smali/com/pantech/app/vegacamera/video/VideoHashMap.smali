.class public abstract Lcom/pantech/app/vegacamera/video/VideoHashMap;
.super Ljava/lang/Object;
.source "VideoHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;
    }
.end annotation


# static fields
.field protected static final AUDIO_ENCODER_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final OUTPUT_FORMAT_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final VIDEOQUALITY_BITRATE_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final VIDEO_ENCODER_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->OUTPUT_FORMAT_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    .line 40
    new-instance v0, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEO_ENCODER_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    .line 41
    new-instance v0, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->AUDIO_ENCODER_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    .line 42
    new-instance v0, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEOQUALITY_BITRATE_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    .line 43
    new-instance v0, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x1e8480

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->OUTPUT_FORMAT_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "3gp"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->OUTPUT_FORMAT_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "mp4"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->OUTPUT_FORMAT_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEO_ENCODER_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "h263"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEO_ENCODER_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "h264"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEO_ENCODER_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "m4v"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEO_ENCODER_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->AUDIO_ENCODER_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "amrnb"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->AUDIO_ENCODER_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "qcelp"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->AUDIO_ENCODER_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "evrc"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->AUDIO_ENCODER_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "amrwb"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->AUDIO_ENCODER_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "aac"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->AUDIO_ENCODER_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEOQUALITY_BITRATE_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "1920x1088"

    const v2, 0x112a880

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEOQUALITY_BITRATE_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "1280x720"

    const v2, 0xc65d40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEOQUALITY_BITRATE_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "720x480"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEOQUALITY_BITRATE_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "800x480"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEOQUALITY_BITRATE_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "640x480"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEOQUALITY_BITRATE_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "352x288"

    const v2, 0xafc80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEOQUALITY_BITRATE_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "320x240"

    const v2, 0x1f400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEOQUALITY_BITRATE_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "176x144"

    const v2, 0x1f400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEOQUALITY_BITRATE_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const v1, 0x4e200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "1920x1088"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "1280x720"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "720x480"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "800x480"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "640x480"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "352x288"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "320x240"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    const-string v1, "176x144"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/pantech/app/vegacamera/video/VideoHashMap;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 9
    return-void
.end method
