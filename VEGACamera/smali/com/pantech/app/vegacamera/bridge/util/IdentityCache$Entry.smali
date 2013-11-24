.class Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;
.super Ljava/lang/ref/WeakReference;
.source "IdentityCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TV;>;"
    }
.end annotation


# instance fields
.field mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;,"Lcom/pantech/app/vegacamera/bridge/util/IdentityCache<TK;TV;>.Entry<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    .local p3, queue:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<TV;>;"
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 37
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;->mKey:Ljava/lang/Object;

    .line 38
    return-void
.end method
