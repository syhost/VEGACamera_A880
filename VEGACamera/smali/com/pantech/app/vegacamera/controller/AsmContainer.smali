.class public Lcom/pantech/app/vegacamera/controller/AsmContainer;
.super Ljava/lang/Object;
.source "AsmContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/AsmContainer$AsmListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsmContainer"


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmContainer;->_InitializeLayoutCtl()V

    .line 30
    return-void
.end method


# virtual methods
.method public Release()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public SetAsmListener(Lcom/pantech/app/vegacamera/controller/AsmContainer$AsmListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 23
    return-void
.end method

.method public SetVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 37
    const-string v0, "AsmContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TextContainer] SetVisibility() : visibility : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public _InitializeLayoutCtl()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 42
    const-string v0, "AsmContainer"

    const-string v1, "[TextContainer] onClick()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
