.class public interface abstract Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# static fields
.field public static final SAVE_FLAG_ALL:I = -0x1

.field public static final SAVE_FLAG_ALPHA:I = 0x1

.field public static final SAVE_FLAG_MATRIX:I = 0x2


# virtual methods
.method public abstract beginRenderTarget(Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)V
.end method

.method public abstract clearBuffer()V
.end method

.method public abstract clearBuffer([F)V
.end method

.method public abstract deleteBuffer(I)V
.end method

.method public abstract deleteRecycledResources()V
.end method

.method public abstract drawLine(FFFFLcom/pantech/app/vegacamera/bridge/glui/GLPaint;)V
.end method

.method public abstract drawMesh(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IIIIII)V
.end method

.method public abstract drawMixed(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IFIIII)V
.end method

.method public abstract drawMixed(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method public abstract drawRect(FFFFLcom/pantech/app/vegacamera/bridge/glui/GLPaint;)V
.end method

.method public abstract drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IIII)V
.end method

.method public abstract drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method public abstract drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;[FIIII)V
.end method

.method public abstract dumpStatisticsAndClear()V
.end method

.method public abstract endRenderTarget()V
.end method

.method public abstract fillRect(FFFFI)V
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getGLInstance()Ljavax/microedition/khronos/opengles/GL11;
.end method

.method public abstract multiplyAlpha(F)V
.end method

.method public abstract multiplyMatrix([FI)V
.end method

.method public abstract restore()V
.end method

.method public abstract rotate(FFFF)V
.end method

.method public abstract save()V
.end method

.method public abstract save(I)V
.end method

.method public abstract scale(FFF)V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setSize(II)V
.end method

.method public abstract translate(FF)V
.end method

.method public abstract translate(FFF)V
.end method

.method public abstract unloadTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;)Z
.end method
