.class public Lcom/pantech/app/vegacamera/data/AppData$FocusData;
.super Ljava/lang/Object;
.source "AppData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/data/AppData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FocusData"
.end annotation


# static fields
.field public static final FOCUS_MODE_AF:I = 0x1

.field public static final FOCUS_MODE_CAF:I = 0x0

.field public static final FOCUS_MODE_CENTER:I = 0x5

.field public static final FOCUS_MODE_EXPOSURE:I = 0x2

.field public static final FOCUS_MODE_FACE:I = 0x4

.field public static final FOCUS_MODE_OJT:I = 0x3


# instance fields
.field private f:[Landroid/hardware/Camera$Face;

.field private focusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private isLongPressed:Z

.field private meteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/graphics/Rect;

.field private result:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/data/AppData;

.field private type:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/data/AppData;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 166
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->this$0:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->focusArea:Ljava/util/List;

    .line 185
    iput-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->meteringArea:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFocusArea()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->focusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusDataFace()[Landroid/hardware/Camera$Face;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->f:[Landroid/hardware/Camera$Face;

    return-object v0
.end method

.method public getFocusDataIsLongPressed()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->isLongPressed:Z

    return v0
.end method

.method public getFocusDataRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->r:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFocusDataType()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->type:I

    return v0
.end method

.method public getFocusDataX()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->x:I

    return v0
.end method

.method public getFocusDataY()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->y:I

    return v0
.end method

.method public getFocusResult()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->result:Z

    return v0
.end method

.method public getMeteringArea()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->meteringArea:Ljava/util/List;

    return-object v0
.end method

.method public setFocusArea(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, focusArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->focusArea:Ljava/util/List;

    .line 203
    return-void
.end method

.method public setFocusData(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 188
    iput p1, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->x:I

    .line 189
    iput p2, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->y:I

    .line 190
    return-void
.end method

.method public setFocusData(ILandroid/graphics/Rect;)V
    .locals 0
    .parameter "type"
    .parameter "r"

    .prologue
    .line 193
    iput p1, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->type:I

    .line 194
    iput-object p2, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->r:Landroid/graphics/Rect;

    .line 195
    return-void
.end method

.method public setFocusData([Landroid/hardware/Camera$Face;)V
    .locals 0
    .parameter "f"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->f:[Landroid/hardware/Camera$Face;

    .line 199
    return-void
.end method

.method public setFocusDataIsLongPressed(Z)V
    .locals 0
    .parameter "longpress"

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->isLongPressed:Z

    .line 215
    return-void
.end method

.method public setFocusResult(Z)V
    .locals 0
    .parameter "result"

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->result:Z

    .line 211
    return-void
.end method

.method public setMeteringArea(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, meteringArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iput-object p1, p0, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->meteringArea:Ljava/util/List;

    .line 207
    return-void
.end method
