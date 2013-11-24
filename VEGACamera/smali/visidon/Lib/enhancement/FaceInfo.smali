.class public Lvisidon/Lib/enhancement/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# instance fields
.field public age:I

.field public blink:I

.field public center:Landroid/graphics/Point;

.field public faceDetReliability:I

.field public faceFeaturesValid:I

.field public faceOrientation:I

.field public faceRect:Landroid/graphics/Rect;

.field public gender:I

.field public imageOrientation:I

.field public leftEye:Landroid/graphics/Point;

.field public measurementTime:I

.field public mouth:Landroid/graphics/Point;

.field public name:Ljava/lang/String;

.field public nose:Landroid/graphics/Point;

.field public recognitionConfidence:I

.field public rightEye:Landroid/graphics/Point;

.field public smile:I

.field public trackingId:I

.field public trackingTime:I

.field public xmax:I

.field public xmin:I

.field public ymax:I

.field public ymin:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lvisidon/Lib/enhancement/FaceInfo;->faceRect:Landroid/graphics/Rect;

    .line 162
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lvisidon/Lib/enhancement/FaceInfo;->leftEye:Landroid/graphics/Point;

    .line 163
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lvisidon/Lib/enhancement/FaceInfo;->rightEye:Landroid/graphics/Point;

    .line 164
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lvisidon/Lib/enhancement/FaceInfo;->nose:Landroid/graphics/Point;

    .line 165
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lvisidon/Lib/enhancement/FaceInfo;->mouth:Landroid/graphics/Point;

    .line 166
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lvisidon/Lib/enhancement/FaceInfo;->center:Landroid/graphics/Point;

    .line 167
    return-void
.end method

.method public constructor <init>([ILjava/lang/String;)V
    .locals 17
    .parameter "result"
    .parameter "personName"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p1, :cond_0

    .line 74
    const/4 v12, 0x0

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->xmin:I

    .line 75
    const/4 v12, 0x1

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->ymin:I

    .line 76
    const/4 v12, 0x2

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->xmax:I

    .line 77
    const/4 v12, 0x3

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->ymax:I

    .line 79
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lvisidon/Lib/enhancement/FaceInfo;->xmin:I

    move-object/from16 v0, p0

    iget v14, v0, Lvisidon/Lib/enhancement/FaceInfo;->ymin:I

    move-object/from16 v0, p0

    iget v15, v0, Lvisidon/Lib/enhancement/FaceInfo;->xmax:I

    move-object/from16 v0, p0

    iget v0, v0, Lvisidon/Lib/enhancement/FaceInfo;->ymax:I

    move/from16 v16, v0

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->faceRect:Landroid/graphics/Rect;

    .line 81
    const/4 v12, 0x4

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->recognitionConfidence:I

    .line 82
    const/4 v12, 0x5

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->faceDetReliability:I

    .line 83
    const/4 v12, 0x6

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->gender:I

    .line 84
    const/4 v12, 0x7

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->age:I

    .line 85
    const/16 v12, 0x8

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->blink:I

    .line 86
    const/16 v12, 0x9

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->smile:I

    .line 87
    const/16 v12, 0xa

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->trackingId:I

    .line 89
    const/16 v12, 0xb

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->trackingTime:I

    .line 90
    const/16 v12, 0xc

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->measurementTime:I

    .line 92
    const/16 v12, 0xd

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->faceOrientation:I

    .line 93
    const/16 v12, 0xe

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->imageOrientation:I

    .line 95
    const/16 v12, 0xf

    aget v4, p1, v12

    .line 96
    .local v4, lx:I
    const/16 v12, 0x10

    aget v5, p1, v12

    .line 98
    .local v5, ly:I
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->leftEye:Landroid/graphics/Point;

    .line 100
    const/16 v12, 0x11

    aget v10, p1, v12

    .line 101
    .local v10, rx:I
    const/16 v12, 0x12

    aget v11, p1, v12

    .line 103
    .local v11, ry:I
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->rightEye:Landroid/graphics/Point;

    .line 105
    const/16 v12, 0x13

    aget v8, p1, v12

    .line 106
    .local v8, nx:I
    const/16 v12, 0x14

    aget v9, p1, v12

    .line 108
    .local v9, ny:I
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->nose:Landroid/graphics/Point;

    .line 110
    const/16 v12, 0x15

    aget v6, p1, v12

    .line 111
    .local v6, mx:I
    const/16 v12, 0x16

    aget v7, p1, v12

    .line 113
    .local v7, my:I
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->mouth:Landroid/graphics/Point;

    .line 115
    const/16 v12, 0x17

    aget v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->faceFeaturesValid:I

    .line 117
    const/16 v12, 0x18

    aget v2, p1, v12

    .line 118
    .local v2, cx:I
    const/16 v12, 0x19

    aget v3, p1, v12

    .line 120
    .local v3, cy:I
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->center:Landroid/graphics/Point;

    .line 122
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lvisidon/Lib/enhancement/FaceInfo;->name:Ljava/lang/String;

    .line 157
    .end local v2           #cx:I
    .end local v3           #cy:I
    .end local v4           #lx:I
    .end local v5           #ly:I
    .end local v6           #mx:I
    .end local v7           #my:I
    .end local v8           #nx:I
    .end local v9           #ny:I
    .end local v10           #rx:I
    .end local v11           #ry:I
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->xmin:I

    .line 130
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->ymin:I

    .line 131
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->xmax:I

    .line 132
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->ymax:I

    .line 134
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lvisidon/Lib/enhancement/FaceInfo;->xmin:I

    move-object/from16 v0, p0

    iget v14, v0, Lvisidon/Lib/enhancement/FaceInfo;->ymin:I

    move-object/from16 v0, p0

    iget v15, v0, Lvisidon/Lib/enhancement/FaceInfo;->xmax:I

    move-object/from16 v0, p0

    iget v0, v0, Lvisidon/Lib/enhancement/FaceInfo;->ymax:I

    move/from16 v16, v0

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->faceRect:Landroid/graphics/Rect;

    .line 136
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->recognitionConfidence:I

    .line 137
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->faceDetReliability:I

    .line 138
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->gender:I

    .line 139
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->age:I

    .line 140
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->blink:I

    .line 141
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->smile:I

    .line 142
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->trackingId:I

    .line 143
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->trackingTime:I

    .line 144
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->measurementTime:I

    .line 146
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->faceOrientation:I

    .line 147
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->imageOrientation:I

    .line 149
    new-instance v12, Landroid/graphics/Point;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->leftEye:Landroid/graphics/Point;

    .line 150
    new-instance v12, Landroid/graphics/Point;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->rightEye:Landroid/graphics/Point;

    .line 151
    new-instance v12, Landroid/graphics/Point;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->nose:Landroid/graphics/Point;

    .line 152
    new-instance v12, Landroid/graphics/Point;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->mouth:Landroid/graphics/Point;

    .line 153
    new-instance v12, Landroid/graphics/Point;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lvisidon/Lib/enhancement/FaceInfo;->center:Landroid/graphics/Point;

    .line 154
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lvisidon/Lib/enhancement/FaceInfo;->name:Ljava/lang/String;

    goto/16 :goto_0
.end method
