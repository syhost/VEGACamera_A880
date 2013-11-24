.class public Lcom/pantech/app/vegacamera/bridge/data/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Path"

.field private static sRoot:Lcom/pantech/app/vegacamera/bridge/data/Path;


# instance fields
.field private mChildren:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/IdentityCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Lcom/pantech/app/vegacamera/bridge/data/Path;

.field private final mSegment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/Path;

    const/4 v1, 0x0

    const-string v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/Path;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/Path;->sRoot:Lcom/pantech/app/vegacamera/bridge/data/Path;

    return-void
.end method

.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Ljava/lang/String;)V
    .locals 0
    .parameter "parent"
    .parameter "segment"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mParent:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 37
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mSegment:Ljava/lang/String;

    .line 38
    return-void
.end method

.method static clearAll()V
    .locals 4

    .prologue
    .line 217
    const-class v1, Lcom/pantech/app/vegacamera/bridge/data/Path;

    monitor-enter v1

    .line 218
    :try_start_0
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/Path;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/Path;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/Path;->sRoot:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 217
    monitor-exit v1

    .line 220
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static dumpAll()V
    .locals 3

    .prologue
    .line 223
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/data/Path;->sRoot:Lcom/pantech/app/vegacamera/bridge/data/Path;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/Path;->dumpAll(Lcom/pantech/app/vegacamera/bridge/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method static dumpAll(Lcom/pantech/app/vegacamera/bridge/data/Path;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "p"
    .parameter "prefix1"
    .parameter "prefix2"

    .prologue
    .line 227
    const-class v7, Lcom/pantech/app/vegacamera/bridge/data/Path;

    monitor-enter v7

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getObject()Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v5

    .line 229
    .local v5, obj:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    const-string v8, "Path"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mSegment:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v5, :cond_1

    const-string v6, "null"

    :goto_0
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mChildren:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;

    if-eqz v6, :cond_0

    .line 231
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mChildren:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->keys()Ljava/util/ArrayList;

    move-result-object v1

    .line 232
    .local v1, childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 233
    .local v4, n:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 227
    .end local v1           #childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_0
    monitor-exit v7

    .line 248
    return-void

    .line 229
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 233
    .restart local v1       #childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v4       #n:I
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 234
    .local v3, key:Ljava/lang/String;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mChildren:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;

    invoke-virtual {v8, v3}, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 235
    .local v0, child:Lcom/pantech/app/vegacamera/bridge/data/Path;
    if-nez v0, :cond_3

    .line 236
    add-int/lit8 v2, v2, 0x1

    .line 237
    goto :goto_1

    .line 239
    :cond_3
    const-string v8, "Path"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v4, :cond_4

    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "+-- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "|   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcom/pantech/app/vegacamera/bridge/data/Path;->dumpAll(Lcom/pantech/app/vegacamera/bridge/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 227
    .end local v0           #child:Lcom/pantech/app/vegacamera/bridge/data/Path;
    .end local v1           #childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #n:I
    .end local v5           #obj:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 243
    .restart local v0       #child:Lcom/pantech/app/vegacamera/bridge/data/Path;
    .restart local v1       #childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #n:I
    .restart local v5       #obj:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    :cond_4
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "+-- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcom/pantech/app/vegacamera/bridge/data/Path;->dumpAll(Lcom/pantech/app/vegacamera/bridge/data/Path;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public static fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 5
    .parameter "s"

    .prologue
    .line 102
    const-class v4, Lcom/pantech/app/vegacamera/bridge/data/Path;

    monitor-enter v4

    .line 103
    :try_start_0
    invoke-static {p0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, segments:[Ljava/lang/String;
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/data/Path;->sRoot:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 105
    .local v0, current:Lcom/pantech/app/vegacamera/bridge/data/Path;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 108
    monitor-exit v4

    return-object v0

    .line 106
    :cond_0
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getChild(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v0           #current:Lcom/pantech/app/vegacamera/bridge/data/Path;
    .end local v1           #i:I
    .end local v2           #segments:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v8, 0x2f

    const/4 v7, 0x0

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 129
    .local v4, n:I
    if-nez v4, :cond_0

    .line 130
    new-array v5, v7, [Ljava/lang/String;

    .line 156
    :goto_0
    return-object v5

    .line 131
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_1

    .line 132
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "malformed path:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 134
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 136
    .local v2, i:I
    :goto_1
    if-lt v2, v4, :cond_2

    .line 154
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 155
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 137
    .end local v5           #result:[Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 139
    .local v0, brace:I
    move v3, v2

    .local v3, j:I
    :goto_2
    if-lt v3, v4, :cond_3

    .line 148
    :goto_3
    if-eqz v0, :cond_7

    .line 149
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unbalanced brace in path:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 140
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 141
    .local v1, c:C
    const/16 v7, 0x7b

    if-ne v1, v7, :cond_5

    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 139
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 143
    :cond_5
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_6

    .line 144
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 145
    :cond_6
    if-nez v0, :cond_4

    if-ne v1, v8, :cond_4

    goto :goto_3

    .line 151
    .end local v1           #c:C
    :cond_7
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v2, v3, 0x1

    goto :goto_1
.end method

.method public static splitSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v9, 0x7d

    const/16 v8, 0x7b

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 163
    .local v4, n:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_0

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_1

    .line 164
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bad sequence: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 166
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 168
    .local v2, i:I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    if-lt v2, v7, :cond_2

    .line 186
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 187
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 188
    return-object v5

    .line 169
    .end local v5           #result:[Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 171
    .local v0, brace:I
    move v3, v2

    .local v3, j:I
    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-lt v3, v7, :cond_3

    .line 180
    :goto_2
    if-eqz v0, :cond_7

    .line 181
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unbalanced brace in path:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 172
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 173
    .local v1, c:C
    if-ne v1, v8, :cond_5

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 171
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 175
    :cond_5
    if-ne v1, v9, :cond_6

    .line 176
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 177
    :cond_6
    if-nez v0, :cond_4

    const/16 v7, 0x2c

    if-ne v1, v7, :cond_4

    goto :goto_2

    .line 183
    .end local v1           #c:C
    :cond_7
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v2, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 2
    .parameter "p"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, path:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getChild(I)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 1
    .parameter "segment"

    .prologue
    .line 63
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getChild(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(J)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 1
    .parameter "segment"

    .prologue
    .line 67
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getChild(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 4
    .parameter "segment"

    .prologue
    .line 41
    const-class v3, Lcom/pantech/app/vegacamera/bridge/data/Path;

    monitor-enter v3

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mChildren:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;

    if-nez v2, :cond_1

    .line 43
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;

    invoke-direct {v2}, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mChildren:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;

    .line 50
    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-direct {v0, p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/Path;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Ljava/lang/String;)V

    .line 51
    .local v0, p:Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mChildren:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;

    invoke-virtual {v2, p1, v0}, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    monitor-exit v3

    move-object v1, v0

    .end local v0           #p:Lcom/pantech/app/vegacamera/bridge/data/Path;
    .local v1, p:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 45
    .end local v1           #p:Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mChildren:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;

    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 46
    .restart local v0       #p:Lcom/pantech/app/vegacamera/bridge/data/Path;
    if-eqz v0, :cond_0

    .line 47
    monitor-exit v3

    move-object v1, v0

    .restart local v1       #p:Ljava/lang/Object;
    goto :goto_0

    .line 41
    .end local v0           #p:Lcom/pantech/app/vegacamera/bridge/data/Path;
    .end local v1           #p:Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getObject()Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    .locals 2

    .prologue
    .line 78
    const-class v1, Lcom/pantech/app/vegacamera/bridge/data/Path;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParent()Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 2

    .prologue
    .line 57
    const-class v1, Lcom/pantech/app/vegacamera/bridge/data/Path;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mParent:Lcom/pantech/app/vegacamera/bridge/data/Path;

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/data/Path;->sRoot:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-ne p0, v0, :cond_0

    .line 193
    const-string v0, ""

    .line 194
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getPrefixPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mSegment:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrefixPath()Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 4

    .prologue
    .line 198
    const-class v2, Lcom/pantech/app/vegacamera/bridge/data/Path;

    monitor-enter v2

    .line 199
    move-object v0, p0

    .line 200
    .local v0, current:Lcom/pantech/app/vegacamera/bridge/data/Path;
    :try_start_0
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/data/Path;->sRoot:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-ne v0, v1, :cond_1

    .line 201
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 204
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mParent:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 203
    :cond_1
    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mParent:Lcom/pantech/app/vegacamera/bridge/data/Path;

    sget-object v3, Lcom/pantech/app/vegacamera/bridge/data/Path;->sRoot:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-ne v1, v3, :cond_0

    .line 206
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method public setObject(Lcom/pantech/app/vegacamera/bridge/data/MediaObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 71
    const-class v1, Lcom/pantech/app/vegacamera/bridge/data/Path;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    .line 71
    monitor-exit v1

    .line 75
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public split()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 113
    const-class v6, Lcom/pantech/app/vegacamera/bridge/data/Path;

    monitor-enter v6

    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, n:I
    move-object v3, p0

    .local v3, p:Lcom/pantech/app/vegacamera/bridge/data/Path;
    :goto_0
    :try_start_0
    sget-object v5, Lcom/pantech/app/vegacamera/bridge/data/Path;->sRoot:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-ne v3, v5, :cond_0

    .line 118
    new-array v4, v2, [Ljava/lang/String;

    .line 119
    .local v4, segments:[Ljava/lang/String;
    add-int/lit8 v0, v2, -0x1

    .line 120
    .local v0, i:I
    move-object v3, p0

    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_1
    sget-object v5, Lcom/pantech/app/vegacamera/bridge/data/Path;->sRoot:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-ne v3, v5, :cond_1

    .line 123
    monitor-exit v6

    return-object v4

    .line 116
    .end local v1           #i:I
    .end local v4           #segments:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 115
    iget-object v3, v3, Lcom/pantech/app/vegacamera/bridge/data/Path;->mParent:Lcom/pantech/app/vegacamera/bridge/data/Path;

    goto :goto_0

    .line 121
    .restart local v1       #i:I
    .restart local v4       #segments:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    iget-object v5, v3, Lcom/pantech/app/vegacamera/bridge/data/Path;->mSegment:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 120
    iget-object v3, v3, Lcom/pantech/app/vegacamera/bridge/data/Path;->mParent:Lcom/pantech/app/vegacamera/bridge/data/Path;

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 113
    .end local v1           #i:I
    .end local v4           #segments:[Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    const-class v4, Lcom/pantech/app/vegacamera/bridge/data/Path;

    monitor-enter v4

    .line 86
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->split()[Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, segments:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 89
    :cond_0
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #segments:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
