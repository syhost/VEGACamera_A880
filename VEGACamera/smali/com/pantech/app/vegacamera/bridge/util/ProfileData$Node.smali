.class Lcom/pantech/app/vegacamera/bridge/util/ProfileData$Node;
.super Ljava/lang/Object;
.source "ProfileData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/util/ProfileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/util/ProfileData$Node;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public parent:Lcom/pantech/app/vegacamera/bridge/util/ProfileData$Node;

.field public sampleCount:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/util/ProfileData$Node;I)V
    .locals 0
    .parameter "parent"
    .parameter "id"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/util/ProfileData$Node;->parent:Lcom/pantech/app/vegacamera/bridge/util/ProfileData$Node;

    .line 43
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/util/ProfileData$Node;->id:I

    .line 44
    return-void
.end method
