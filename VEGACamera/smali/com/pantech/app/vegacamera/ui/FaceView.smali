.class public Lcom/pantech/app/vegacamera/ui/FaceView;
.super Lcom/pantech/app/vegacamera/ui/FocusIndicator;
.source "FaceView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field focus_close:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mDisplayOrientation:I

.field private final mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

.field private final mDrawableFocused:Landroid/graphics/drawable/Drawable;

.field private final mDrawableFocusing:Landroid/graphics/drawable/Drawable;

.field private mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPause:Z

.field private mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-string v0, "FaceView"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 57
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->focus_face_detection_ing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->focus_face_detection_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mDrawableFocused:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->focus_face_detection_fail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/ui/FaceView;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 132
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->invalidate()V

    .line 133
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFaceNumber()I
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, numofFace:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v1

    .line 86
    const-string v1, "FaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[FaceView] getFacesNumber() :: number of face = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 69
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mContext:Landroid/content/Context;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->focus_close:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 72
    sget v0, Lcom/pantech/app/vegacamera/R$anim;->focus_close:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->focus_close:Landroid/view/animation/Animation;

    .line 74
    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 145
    iget-object v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v7, v7

    if-lez v7, :cond_5

    .line 147
    const/4 v4, 0x0

    .local v4, rw:I
    const/4 v3, 0x0

    .line 148
    .local v3, rh:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mContext:Landroid/content/Context;

    instance-of v7, v7, Lcom/pantech/app/vegacamera/Camera;

    if-eqz v7, :cond_6

    .line 149
    const-string v7, "FaceView"

    const-string v8, "[CameraScreenNail] enter is CameraModule context"

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/Camera;->GetCameraScreenNail()Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    move-result-object v5

    .line 152
    .local v5, sn:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getPreviewAreaWidth()I

    move-result v4

    .line 153
    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getPreviewAreaHeight()I

    move-result v3

    .line 154
    if-le v3, v4, :cond_0

    iget v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mDisplayOrientation:I

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mDisplayOrientation:I

    const/16 v8, 0xb4

    if-eq v7, v8, :cond_1

    .line 155
    :cond_0
    if-le v4, v3, :cond_2

    iget v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mDisplayOrientation:I

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mDisplayOrientation:I

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_2

    .line 156
    :cond_1
    move v6, v4

    .line 157
    .local v6, temp:I
    move v4, v3

    .line 158
    move v3, v6

    .line 165
    .end local v5           #sn:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    .end local v6           #temp:I
    :cond_2
    :goto_0
    if-nez v4, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->getWidth()I

    move-result v4

    .line 169
    :cond_3
    if-nez v3, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->getHeight()I

    move-result v3

    .line 173
    :cond_4
    const-string v7, "FaceView"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[CameraScreenNail] rw("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), rh("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v8, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mMirror:Z

    iget v9, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mDisplayOrientation:I

    invoke-static {v7, v8, v9, v4, v3}, Lcom/pantech/app/vegacamera/util/Util;->PrepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 181
    iget-object v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mOrientation:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 182
    iget v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mOrientation:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 183
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v7, v7

    if-lt v0, v7, :cond_7

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 213
    .end local v0           #i:I
    .end local v3           #rh:I
    .end local v4           #rw:I
    :cond_5
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->onDraw(Landroid/graphics/Canvas;)V

    .line 214
    return-void

    .line 161
    .restart local v3       #rh:I
    .restart local v4       #rw:I
    :cond_6
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->getWidth()I

    move-result v4

    .line 162
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->getHeight()I

    move-result v3

    goto :goto_0

    .line 185
    .restart local v0       #i:I
    :cond_7
    iget-object v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v8, v8, v0

    iget-object v8, v8, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 187
    iget-object v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 189
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v1, v7, 0x2

    .line 190
    .local v1, mOffsetX:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v3

    div-int/lit8 v2, v7, 0x2

    .line 192
    .local v2, mOffsetY:I
    iget v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mOrientation:I

    sparse-switch v7, :sswitch_data_0

    .line 207
    :goto_2
    iget-object v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget-object v10, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 208
    iget-object v11, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 207
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 209
    iget-object v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :sswitch_0
    iget-object v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v8, v1

    int-to-float v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 197
    :sswitch_1
    iget-object v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    neg-int v8, v2

    int-to-float v8, v8

    int-to-float v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 200
    :sswitch_2
    iget-object v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    neg-int v8, v1

    int-to-float v8, v8

    neg-int v9, v2

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 203
    :sswitch_3
    iget-object v7, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v8, v2

    neg-int v9, v1

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 192
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mPause:Z

    .line 137
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_0

    .line 219
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_1

    .line 222
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v1, v2

    .line 226
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_6

    .line 230
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 231
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 233
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_4

    .line 234
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mContext:Landroid/content/Context;

    .line 236
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->focus_close:Landroid/view/animation/Animation;

    if-eqz v2, :cond_5

    .line 237
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->focus_close:Landroid/view/animation/Animation;

    .line 239
    :cond_5
    return-void

    .line 227
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aput-object v3, v2, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mPause:Z

    .line 141
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 91
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mDisplayOrientation:I

    .line 92
    return-void
.end method

.method public setFaces([Landroid/hardware/Camera$Face;)V
    .locals 1
    .parameter "faces"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 80
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->invalidate()V

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mMirror:Z

    .line 102
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 95
    rem-int/lit16 p1, p1, 0x168

    .line 96
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mOrientation:I

    .line 97
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->invalidate()V

    .line 98
    return-void
.end method

.method public showFail()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 123
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->invalidate()V

    .line 124
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->invalidate()V

    .line 112
    return-void
.end method

.method public showSuccess()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mDrawableFocused:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceView;->invalidate()V

    .line 118
    return-void
.end method
