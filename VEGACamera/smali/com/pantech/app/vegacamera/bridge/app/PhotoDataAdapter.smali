.class public Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;,
        Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageJob;,
        Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageListener;,
        Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;,
        Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;,
        Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;,
        Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;,
        Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;,
        Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailListener;,
        Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$SourceListener;,
        Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;,
        Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;
    }
.end annotation


# static fields
.field private static final BIT_FULL_IMAGE:I = 0x2

.field private static final BIT_SCREEN_NAIL:I = 0x1

.field private static final DATA_CACHE_SIZE:I = 0x100

.field private static final IMAGE_CACHE_SIZE:I = 0x7

.field private static final MIN_LOAD_COUNT:I = 0x10

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final MSG_UPDATE_IMAGE_REQUESTS:I = 0x4

.field private static final SCREEN_NAIL_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhotoDataAdapter"

.field private static sImageFetchSeq:[Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mCameraIndex:I

.field private final mChanges:[J

.field private mContentEnd:I

.field private mContentStart:I

.field private mCurrentIndex:I

.field private final mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

.field private mDataListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;

.field private mFocusHintDirection:I

.field private mFocusHintPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

.field private mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            "Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mIsPanorama:Z

.field private mIsStaticCamera:Z

.field private mItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

.field private mLogVerbose:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mNeedFullImage:Z

.field private final mPaths:[Lcom/pantech/app/vegacamera/bridge/data/Path;

.field private final mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

.field private mReloadTask:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;

.field private mSize:I

.field private final mSource:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

.field private final mSourceListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$SourceListener;

.field private mSourceVersion:J

.field private final mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

.field private final mTileProvider:Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;

.field private final mUploader:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, k:I
    const/16 v3, 0x10

    new-array v3, v3, [Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    sput-object v3, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    .line 94
    sget-object v3, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .local v2, k:I
    new-instance v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v8, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 96
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v3, 0x7

    if-lt v0, v3, :cond_0

    .line 101
    sget-object v3, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v8, v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 102
    sget-object v3, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v6, v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 103
    sget-object v3, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 104
    return-void

    .line 97
    .end local v1           #k:I
    .restart local v2       #k:I
    :cond_0
    sget-object v3, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v0, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 98
    sget-object v3, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    neg-int v5, v0

    invoke-direct {v4, v5, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Lcom/pantech/app/vegacamera/bridge/data/Path;IIZZ)V
    .locals 6
    .parameter "activity"
    .parameter "view"
    .parameter "mediaSet"
    .parameter "itemPath"
    .parameter "indexHint"
    .parameter "cameraIndex"
    .parameter "isPanorama"
    .parameter "isStaticCamera"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x7

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mLogVerbose:Z

    .line 106
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mTileProvider:Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;

    .line 119
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 120
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentStart:I

    .line 121
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentEnd:I

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    .line 129
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveStart:I

    .line 130
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveEnd:I

    .line 139
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mChanges:[J

    .line 142
    new-array v0, v2, [Lcom/pantech/app/vegacamera/bridge/data/Path;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mPaths:[Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 151
    iput-wide v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSourceVersion:J

    .line 152
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I

    .line 159
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mFocusHintDirection:I

    .line 160
    iput-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mFocusHintPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 168
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$SourceListener;

    invoke-direct {v0, p0, v3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$SourceListener;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSourceListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$SourceListener;

    .line 178
    invoke-static {p3}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSource:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 179
    invoke-static {p2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    .line 180
    invoke-static {p4}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/Path;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 181
    iput p5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 182
    iput p6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCameraIndex:I

    .line 183
    iput-boolean p7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mIsPanorama:Z

    .line 184
    iput-boolean p8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mIsStaticCamera:Z

    .line 185
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getThreadPool()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 188
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mChanges:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 190
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mUploader:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;

    .line 192
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$1;

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$1;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 225
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 226
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 810
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->isTemporaryItem(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 837
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)J
    .locals 2
    .parameter

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 152
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSourceVersion:J

    return-void
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I

    return-void
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentEnd:I

    return-void
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveEnd:I

    return-void
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    return-void
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$20(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/Path;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    return-void
.end method

.method static synthetic access$21(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateImageCache()V

    return-void
.end method

.method static synthetic access$22(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateTileProvider()V

    return-void
.end method

.method static synthetic access$23(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method static synthetic access$24(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mDataListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;

    return-object v0
.end method

.method static synthetic access$25(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method static synthetic access$26(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 991
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSource:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$28(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mFocusHintPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    return-object v0
.end method

.method static synthetic access$29(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/Path;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mFocusHintPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/util/Future;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateFullImage(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/util/Future;)V

    return-void
.end method

.method static synthetic access$30(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 159
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mFocusHintDirection:I

    return v0
.end method

.method static synthetic access$31(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 154
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCameraIndex:I

    return v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/util/Future;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateScreenNail(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/util/Future;)V

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mReloadTask:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 120
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 121
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 134
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    const/4 v4, 0x3

    .line 992
    const-string v2, "PhotoDataAdapter"

    const-string v3, "executeAndWait"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 995
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->isPanorama(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 999
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1005
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1007
    :goto_1
    return-object v2

    .line 1001
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_1

    .line 1008
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1009
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private fireDataChange()V
    .locals 15

    .prologue
    const v10, 0x7fffffff

    const/4 v14, 0x0

    const/4 v13, 0x7

    .line 256
    const-string v9, "PhotoDataAdapter"

    const-string v11, "fireDataChange"

    invoke-static {v9, v11}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, changed:Z
    const/4 v3, -0x3

    .local v3, i:I
    :goto_0
    const/4 v9, 0x3

    if-le v3, v9, :cond_0

    .line 267
    if-nez v1, :cond_2

    .line 304
    :goto_1
    return-void

    .line 260
    :cond_0
    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v9, v3

    invoke-direct {p0, v9}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v5

    .line 261
    .local v5, newVersion:J
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v11, v3, 0x3

    aget-wide v11, v9, v11

    cmp-long v9, v11, v5

    if-eqz v9, :cond_1

    .line 262
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v11, v3, 0x3

    aput-wide v5, v9, v11

    .line 263
    const/4 v1, 0x1

    .line 259
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    .end local v5           #newVersion:J
    :cond_2
    const/4 v0, 0x7

    .line 274
    .local v0, N:I
    new-array v2, v13, [I

    .line 277
    .local v2, fromIndex:[I
    new-array v7, v13, [Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 278
    .local v7, oldPaths:[Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mPaths:[Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-static {v9, v14, v7, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    const/4 v3, 0x0

    :goto_2
    if-lt v3, v13, :cond_3

    .line 286
    const/4 v3, 0x0

    :goto_3
    if-lt v3, v13, :cond_4

    .line 303
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    iget v10, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    neg-int v10, v10

    iget v11, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int/2addr v11, v12

    invoke-virtual {v9, v2, v10, v11}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->notifyDataChange([III)V

    goto :goto_1

    .line 282
    :cond_3
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mPaths:[Lcom/pantech/app/vegacamera/bridge/data/Path;

    iget v11, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x3

    invoke-direct {p0, v11}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getPath(I)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v11

    aput-object v11, v9, v3

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 287
    :cond_4
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mPaths:[Lcom/pantech/app/vegacamera/bridge/data/Path;

    aget-object v8, v9, v3

    .line 288
    .local v8, p:Lcom/pantech/app/vegacamera/bridge/data/Path;
    if-nez v8, :cond_5

    .line 289
    aput v10, v2, v3

    .line 286
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 295
    :cond_5
    const/4 v4, 0x0

    .local v4, j:I
    :goto_5
    if-lt v4, v13, :cond_7

    .line 300
    :cond_6
    if-ge v4, v13, :cond_8

    add-int/lit8 v9, v4, -0x3

    :goto_6
    aput v9, v2, v3

    goto :goto_4

    .line 296
    :cond_7
    aget-object v9, v7, v4

    if-eq v9, v8, :cond_6

    .line 295
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    move v9, v10

    .line 300
    goto :goto_6
.end method

.method private getItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 410
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 411
    const-string v0, "PhotoDataAdapter"

    const-string v2, "MediaItem getItem"

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I

    if-ge p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 419
    :goto_0
    return-object v0

    .line 414
    :cond_2
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge p1, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 416
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v0, :cond_4

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v0, :cond_4

    .line 417
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    rem-int/lit16 v1, p1, 0x100

    aget-object v0, v0, v1

    goto :goto_0

    .line 414
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 419
    goto :goto_0
.end method

.method private getItemInternal(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 229
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    .line 230
    const-string v1, "PhotoDataAdapter"

    const-string v2, "getItemInternal"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    if-ltz p1, :cond_1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v1, :cond_2

    .line 236
    :cond_1
    :goto_0
    return-object v0

    .line 233
    :cond_2
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    rem-int/lit16 v1, p1, 0x100

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getPath(I)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 2
    .parameter "index"

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getItemInternal(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    .line 250
    .local v0, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v0, :cond_0

    .line 251
    const/4 v1, 0x0

    .line 252
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method private getVersion(I)J
    .locals 3
    .parameter "index"

    .prologue
    .line 240
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "PhotoDataAdapter"

    const-string v2, "getVersion"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getItemInternal(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    .line 243
    .local v0, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v0, :cond_1

    .line 244
    const-wide/16 v1, -0x1

    .line 245
    :goto_0
    return-wide v1

    :cond_1
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getDataVersion()J

    move-result-wide v1

    goto :goto_0
.end method

.method private isTemporaryItem(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)Z
    .locals 6
    .parameter "mediaItem"

    .prologue
    const/4 v1, 0x0

    .line 811
    const-string v2, "PhotoDataAdapter"

    const-string v3, "isTemporaryItem"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCameraIndex:I

    if-gez v2, :cond_1

    .line 831
    :cond_0
    :goto_0
    return v1

    .line 816
    :cond_1
    instance-of v2, p1, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 818
    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;

    .line 819
    .local v0, item:Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->getBucketId()I

    move-result v2

    sget v3, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne v2, v3, :cond_0

    .line 822
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 824
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 826
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 831
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private newPlaceholderScreenNail(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    .locals 4
    .parameter "item"

    .prologue
    .line 838
    const-string v2, "PhotoDataAdapter"

    const-string v3, "newPlaceholderScreenNail"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getWidth()I

    move-result v1

    .line 840
    .local v1, width:I
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getHeight()I

    move-result v0

    .line 841
    .local v0, height:I
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;

    invoke-direct {v2, v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;-><init>(II)V

    return-object v2
.end method

.method private startTaskIfNeeded(II)Lcom/pantech/app/vegacamera/bridge/util/Future;
    .locals 10
    .parameter "index"
    .parameter "which"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 846
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mLogVerbose:Z

    if-eqz v4, :cond_0

    .line 847
    const-string v4, "PhotoDataAdapter"

    const-string v7, "startTaskIfNeeded"

    invoke-static {v4, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :cond_0
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v4, :cond_1

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v4, :cond_2

    :cond_1
    move-object v4, v6

    .line 877
    :goto_0
    return-object v4

    .line 851
    :cond_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getPath(I)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;

    .line 852
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_3

    move-object v4, v6

    .line 853
    goto :goto_0

    .line 854
    :cond_3
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    rem-int/lit16 v7, p1, 0x100

    aget-object v1, v4, v7

    .line 855
    .local v1, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-eqz v1, :cond_4

    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 856
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getDataVersion()J

    move-result-wide v2

    .line 858
    .local v2, version:J
    if-ne p2, v5, :cond_5

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eqz v4, :cond_5

    iget-wide v7, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_5

    .line 859
    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    goto :goto_0

    .line 855
    .end local v2           #version:J
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 860
    .restart local v2       #version:J
    :cond_5
    if-ne p2, v9, :cond_6

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eqz v4, :cond_6

    iget-wide v7, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_6

    .line 861
    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    goto :goto_0

    .line 864
    :cond_6
    if-ne p2, v5, :cond_7

    iget-wide v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_7

    .line 865
    iput-wide v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 866
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    new-instance v5, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v5, p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    new-instance v6, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v6, p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    invoke-virtual {v4, v5, v6}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->submit(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;Lcom/pantech/app/vegacamera/bridge/util/FutureListener;)Lcom/pantech/app/vegacamera/bridge/util/Future;

    move-result-object v4

    iput-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 868
    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    goto :goto_0

    .line 870
    :cond_7
    if-ne p2, v9, :cond_8

    iget-wide v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_8

    .line 871
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getSupportedOperations()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_8

    .line 872
    iput-wide v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 873
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    new-instance v5, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageJob;

    invoke-direct {v5, p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageJob;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    new-instance v6, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageListener;

    invoke-direct {v6, p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageListener;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    invoke-virtual {v4, v5, v6}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->submit(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;Lcom/pantech/app/vegacamera/bridge/util/FutureListener;)Lcom/pantech/app/vegacamera/bridge/util/Future;

    move-result-object v4

    iput-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 875
    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    goto/16 :goto_0

    :cond_8
    move-object v4, v6

    .line 877
    goto/16 :goto_0
.end method

.method private updateCurrentIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 423
    const-string v1, "PhotoDataAdapter"

    const-string v2, "updateCurrentIndex"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne v1, p1, :cond_0

    .line 441
    :goto_0
    return-void

    .line 426
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 427
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 429
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    rem-int/lit16 v2, p1, 0x100

    aget-object v0, v1, v2

    .line 430
    .local v0, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 432
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateImageCache()V

    .line 433
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateImageRequests()V

    .line 434
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateTileProvider()V

    .line 436
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mDataListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mDataListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-interface {v1, p1, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/pantech/app/vegacamera/bridge/data/Path;)V

    .line 440
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->fireDataChange()V

    goto :goto_0

    .line 430
    :cond_2
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v1

    goto :goto_1
.end method

.method private updateFullImage(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/util/Future;)V
    .locals 4
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p2, future:Lcom/pantech/app/vegacamera/bridge/util/Future;,"Lcom/pantech/app/vegacamera/bridge/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    const-string v2, "PhotoDataAdapter"

    const-string v3, "updateFullImage"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;

    .line 352
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eq v2, p2, :cond_2

    .line 353
    :cond_0
    invoke-interface {p2}, Lcom/pantech/app/vegacamera/bridge/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 354
    .local v1, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v1, :cond_1

    .line 355
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 368
    .end local v1           #fullImage:Landroid/graphics/BitmapRegionDecoder;
    :cond_1
    :goto_0
    return-void

    .line 359
    :cond_2
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 360
    invoke-interface {p2}, Lcom/pantech/app/vegacamera/bridge/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapRegionDecoder;

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 361
    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v2, :cond_3

    .line 362
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getPath(I)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 363
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateTileProvider(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;)V

    .line 364
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->notifyImageChange(I)V

    .line 367
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0
.end method

.method private updateImageCache()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 881
    const-string v6, "PhotoDataAdapter"

    const-string v7, "updateImageCache"

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 883
    .local v5, toBeRemoved:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/pantech/app/vegacamera/bridge/data/Path;>;"
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveStart:I

    .local v1, i:I
    :goto_0
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v1, v6, :cond_1

    .line 914
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .line 924
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateScreenNailUploadQueue()V

    .line 925
    return-void

    .line 884
    :cond_1
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    rem-int/lit16 v7, v1, 0x100

    aget-object v2, v6, v7

    .line 885
    .local v2, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v2, :cond_3

    .line 883
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 887
    :cond_3
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v3

    .line 888
    .local v3, path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;

    .line 889
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 890
    if-eqz v0, :cond_6

    .line 891
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_5

    .line 892
    iget-object v6, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eqz v6, :cond_4

    .line 893
    iget-object v6, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v6}, Lcom/pantech/app/vegacamera/bridge/util/Future;->cancel()V

    .line 894
    iput-object v10, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 896
    :cond_4
    iput-object v10, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 897
    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 899
    :cond_5
    iget-wide v6, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getDataVersion()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 902
    iget-object v6, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    instance-of v6, v6, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;

    if-eqz v6, :cond_2

    .line 903
    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;

    .line 904
    .local v4, s:Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getHeight()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;->updatePlaceholderSize(II)V

    goto :goto_2

    .line 908
    .end local v4           #s:Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;
    :cond_6
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;

    .end local v0           #entry:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    invoke-direct {v0, v10}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;)V

    .line 909
    .restart local v0       #entry:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 914
    .end local v0           #entry:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    .end local v2           #item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .end local v3           #path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 915
    .restart local v3       #path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;

    .line 916
    .restart local v0       #entry:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    iget-object v7, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eqz v7, :cond_8

    .line 917
    iget-object v7, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v7}, Lcom/pantech/app/vegacamera/bridge/util/Future;->cancel()V

    .line 918
    :cond_8
    iget-object v7, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eqz v7, :cond_9

    .line 919
    iget-object v7, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v7}, Lcom/pantech/app/vegacamera/bridge/util/Future;->cancel()V

    .line 920
    :cond_9
    iget-object v7, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    if-eqz v7, :cond_0

    .line 921
    iget-object v7, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    invoke-interface {v7}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->recycle()V

    goto/16 :goto_1
.end method

.method private updateImageRequests()V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    .line 716
    const-string v7, "PhotoDataAdapter"

    const-string v8, "updateImageRequests"

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-boolean v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v7, :cond_1

    .line 752
    :cond_0
    return-void

    .line 720
    :cond_1
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 721
    .local v1, currentIndex:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    rem-int/lit16 v8, v1, 0x100

    aget-object v4, v7, v8

    .line 722
    .local v4, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v7

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-ne v7, v8, :cond_0

    .line 728
    const/4 v6, 0x0

    .line 729
    .local v6, task:Lcom/pantech/app/vegacamera/bridge/util/Future;,"Lcom/pantech/app/vegacamera/bridge/util/Future<*>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v7, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    array-length v7, v7

    if-lt v3, v7, :cond_4

    .line 740
    :goto_1
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;

    .line 741
    .local v2, entry:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    iget-object v8, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eq v8, v6, :cond_3

    .line 742
    iget-object v8, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v8}, Lcom/pantech/app/vegacamera/bridge/util/Future;->cancel()V

    .line 743
    iput-object v9, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 744
    iput-wide v10, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 746
    :cond_3
    iget-object v8, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eqz v8, :cond_2

    iget-object v8, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eq v8, v6, :cond_2

    .line 747
    iget-object v8, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v8}, Lcom/pantech/app/vegacamera/bridge/util/Future;->cancel()V

    .line 748
    iput-object v9, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 749
    iput-wide v10, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    goto :goto_2

    .line 730
    .end local v2           #entry:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    :cond_4
    sget-object v7, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    aget-object v7, v7, v3

    iget v5, v7, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 731
    .local v5, offset:I
    sget-object v7, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;

    aget-object v7, v7, v3

    iget v0, v7, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    .line 732
    .local v0, bit:I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_6

    iget-boolean v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mNeedFullImage:Z

    if-nez v7, :cond_6

    .line 729
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 734
    :cond_6
    add-int v7, v1, v5

    invoke-direct {p0, v7, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->startTaskIfNeeded(II)Lcom/pantech/app/vegacamera/bridge/util/Future;

    move-result-object v6

    .line 735
    if-eqz v6, :cond_5

    goto :goto_1
.end method

.method private updateScreenNail(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/util/Future;)V
    .locals 6
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p2, future:Lcom/pantech/app/vegacamera/bridge/util/Future;,"Lcom/pantech/app/vegacamera/bridge/util/Future<Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;>;"
    const-string v4, "PhotoDataAdapter"

    const-string v5, "updateScreenNail"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;

    .line 314
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    invoke-interface {p2}, Lcom/pantech/app/vegacamera/bridge/util/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 316
    .local v3, screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eq v4, p2, :cond_2

    .line 317
    :cond_0
    if-eqz v3, :cond_1

    .line 318
    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->recycle()V

    .line 347
    :cond_1
    :goto_0
    return-void

    .line 322
    :cond_2
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 325
    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    instance-of v4, v4, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;

    if-eqz v4, :cond_3

    .line 326
    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;

    .line 327
    .local v2, original:Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;
    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;->combine(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v3

    .line 330
    .end local v2           #original:Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;
    :cond_3
    if-nez v3, :cond_4

    .line 331
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 337
    :goto_1
    const/4 v1, -0x3

    .local v1, i:I
    :goto_2
    const/4 v4, 0x3

    if-le v1, v4, :cond_5

    .line 345
    :goto_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateImageRequests()V

    .line 346
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateScreenNailUploadQueue()V

    goto :goto_0

    .line 333
    .end local v1           #i:I
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 334
    iput-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    goto :goto_1

    .line 338
    .restart local v1       #i:I
    :cond_5
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getPath(I)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v4

    if-ne p1, v4, :cond_7

    .line 339
    if-nez v1, :cond_6

    .line 340
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateTileProvider(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;)V

    .line 341
    :cond_6
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v4, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->notifyImageChange(I)V

    goto :goto_3

    .line 337
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private updateScreenNailUploadQueue()V
    .locals 2

    .prologue
    .line 465
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mUploader:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->clear()V

    .line 466
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->uploadScreenNail(I)V

    .line 467
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 471
    return-void

    .line 468
    :cond_0
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->uploadScreenNail(I)V

    .line 469
    neg-int v1, v0

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->uploadScreenNail(I)V

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateSlidingWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 688
    const-string v3, "PhotoDataAdapter"

    const-string v4, "updateSlidingWindow"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x3

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x7

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(III)I

    move-result v2

    .line 691
    .local v2, start:I
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 693
    .local v0, end:I
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveStart:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveEnd:I

    if-ne v3, v0, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveStart:I

    .line 697
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveEnd:I

    .line 700
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x80

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I

    add-int/lit16 v4, v4, -0x100

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(III)I

    move-result v2

    .line 701
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I

    add-int/lit16 v4, v2, 0x100

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 702
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentStart:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveStart:I

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentEnd:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentStart:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_0

    .line 703
    :cond_2
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentStart:I

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentEnd:I

    if-lt v1, v3, :cond_3

    .line 708
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentStart:I

    .line 709
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentEnd:I

    .line 710
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mReloadTask:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;

    if-eqz v3, :cond_0

    .line 711
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mReloadTask:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0

    .line 704
    :cond_3
    if-lt v1, v2, :cond_4

    if-lt v1, v0, :cond_5

    .line 705
    :cond_4
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    rem-int/lit16 v4, v1, 0x100

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 703
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateTileProvider()V
    .locals 3

    .prologue
    .line 660
    const-string v1, "PhotoDataAdapter"

    const-string v2, "updateTileProvider"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getPath(I)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;

    .line 662
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_0

    .line 663
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mTileProvider:Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->clear()V

    .line 667
    :goto_0
    return-void

    .line 665
    :cond_0
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateTileProvider(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;)V

    goto :goto_0
.end method

.method private updateTileProvider(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;)V
    .locals 7
    .parameter "entry"

    .prologue
    .line 670
    const-string v4, "PhotoDataAdapter"

    const-string v5, "updateTileProvider(ImageEntry entry)"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v2, p1, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 672
    .local v2, screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    iget-object v0, p1, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 673
    .local v0, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v2, :cond_1

    .line 674
    if-eqz v0, :cond_0

    .line 675
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mTileProvider:Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;II)V

    .line 676
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mTileProvider:Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;

    invoke-virtual {v4, v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 685
    :goto_0
    return-void

    .line 678
    :cond_0
    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->getWidth()I

    move-result v3

    .line 679
    .local v3, width:I
    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->getHeight()I

    move-result v1

    .line 680
    .local v1, height:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mTileProvider:Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;

    invoke-virtual {v4, v2, v3, v1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;II)V

    goto :goto_0

    .line 683
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mTileProvider:Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->clear()V

    goto :goto_0
.end method

.method private uploadScreenNail(I)V
    .locals 7
    .parameter "offset"

    .prologue
    .line 444
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v1, v5, p1

    .line 445
    .local v1, index:I
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v5, :cond_0

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v1, v5, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v2

    .line 449
    .local v2, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-eqz v2, :cond_0

    .line 452
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;

    .line 453
    .local v0, e:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    .line 456
    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 457
    .local v3, s:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    instance-of v5, v3, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;

    if-eqz v5, :cond_0

    .line 458
    check-cast v3, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;

    .end local v3           #s:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;->getTexture()Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;

    move-result-object v4

    .line 459
    .local v4, t:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->isReady()Z

    move-result v5

    if-nez v5, :cond_0

    .line 460
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mUploader:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;

    invoke-virtual {v5, v4}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->addTexture(Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mTileProvider:Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 3
    .parameter "offset"

    .prologue
    .line 522
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    .line 523
    const-string v1, "PhotoDataAdapter"

    const-string v2, "getImageRotation"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_0
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    .line 525
    .local v0, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getFullImageRotation()I

    move-result v1

    goto :goto_0
.end method

.method public getImageSize(ILcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;)V
    .locals 4
    .parameter "offset"
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 509
    const-string v1, "PhotoDataAdapter"

    const-string v2, "getImageSize"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    .line 511
    .local v0, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v0, :cond_0

    .line 512
    iput v3, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->width:I

    .line 513
    iput v3, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->height:I

    .line 518
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getWidth()I

    move-result v1

    iput v1, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->width:I

    .line 516
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getHeight()I

    move-result v1

    iput v1, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mTileProvider:Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mTileProvider:Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->getLevelCount()I

    move-result v0

    return v0
.end method

.method public getLoadingState(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 570
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mLogVerbose:Z

    if-eqz v2, :cond_0

    .line 571
    const-string v2, "PhotoDataAdapter"

    const-string v3, "getLoadingState"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getPath(I)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;

    .line 573
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_2

    .line 579
    :cond_1
    :goto_0
    return v1

    .line 575
    :cond_2
    iget-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    if-eqz v2, :cond_3

    .line 576
    const/4 v1, 0x2

    goto :goto_0

    .line 577
    :cond_3
    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    if-eqz v2, :cond_1

    .line 578
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .locals 3
    .parameter "offset"

    .prologue
    .line 621
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    .line 622
    const-string v1, "PhotoDataAdapter"

    const-string v2, "MediaItem getMediaItem"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_0
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v0, v1, p1

    .line 624
    .local v0, index:I
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentStart:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v0, v1, :cond_1

    .line 625
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    rem-int/lit16 v2, v0, 0x100

    aget-object v1, v1, v2

    .line 627
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScreenNail()Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getScreenNail(I)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNail(I)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v4, 0x0

    .line 481
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mLogVerbose:Z

    if-eqz v3, :cond_0

    .line 482
    const-string v3, "PhotoDataAdapter"

    const-string v5, "getScreenNail"

    invoke-static {v3, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v1, v3, p1

    .line 484
    .local v1, index:I
    if-ltz v1, :cond_1

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I

    if-ge v1, v3, :cond_1

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v3, :cond_2

    :cond_1
    move-object v3, v4

    .line 504
    :goto_0
    return-object v3

    .line 486
    :cond_2
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v3, :cond_3

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 488
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v2

    .line 489
    .local v2, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v2, :cond_4

    move-object v3, v4

    .line 490
    goto :goto_0

    .line 486
    .end local v2           #item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 492
    .restart local v2       #item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    :cond_4
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;

    .line 493
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_5

    move-object v3, v4

    .line 494
    goto :goto_0

    .line 498
    :cond_5
    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    if-nez v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 499
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v3

    iput-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 500
    if-nez p1, :cond_6

    .line 501
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateTileProvider(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;)V

    .line 504
    :cond_6
    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    goto :goto_0
.end method

.method public getTile(IIIIILcom/pantech/app/vegacamera/bridge/data/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"
    .parameter "borderSize"
    .parameter "pool"

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 605
    const-string v0, "PhotoDataAdapter"

    const-string v1, "getTile"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mTileProvider:Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->getTile(IIIIILcom/pantech/app/vegacamera/bridge/data/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isCamera(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 538
    const-string v0, "PhotoDataAdapter"

    const-string v1, "isCamera"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCameraIndex:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeletable(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 564
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    .line 565
    .local v0, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanorama(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 545
    const-string v0, "PhotoDataAdapter"

    const-string v1, "isPanorama"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mIsPanorama:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStaticCamera(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mIsStaticCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo(I)Z
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 556
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mLogVerbose:Z

    if-eqz v2, :cond_0

    .line 557
    const-string v2, "PhotoDataAdapter"

    const-string v3, "isVideo"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_0
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    .line 559
    .local v0, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 475
    const-string v0, "PhotoDataAdapter"

    const-string v1, "moveTo"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    .line 477
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 386
    const-string v1, "PhotoDataAdapter"

    const-string v2, "pause"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mIsActive:Z

    .line 389
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mReloadTask:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->terminate()V

    .line 390
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mReloadTask:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;

    .line 392
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSource:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSourceListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->removeContentListener(Lcom/pantech/app/vegacamera/bridge/data/ContentListener;)V

    .line 394
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 402
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 403
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mTileProvider:Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->clear()V

    .line 405
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mUploader:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->clear()V

    .line 406
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->freeResources()V

    .line 407
    return-void

    .line 394
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;

    .line 395
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eqz v2, :cond_2

    .line 396
    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/util/Future;->cancel()V

    .line 397
    :cond_2
    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eqz v2, :cond_3

    .line 398
    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/util/Future;->cancel()V

    .line 399
    :cond_3
    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->recycle()V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 371
    const-string v0, "PhotoDataAdapter"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mIsActive:Z

    .line 373
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->prepareResources()V

    .line 375
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSource:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSourceListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->addContentListener(Lcom/pantech/app/vegacamera/bridge/data/ContentListener;)V

    .line 376
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateImageCache()V

    .line 377
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateImageRequests()V

    .line 379
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mReloadTask:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;

    .line 380
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mReloadTask:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->start()V

    .line 382
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->fireDataChange()V

    .line 383
    return-void
.end method

.method public setCurrentPhoto(Lcom/pantech/app/vegacamera/bridge/data/Path;I)V
    .locals 3
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 632
    const-string v1, "PhotoDataAdapter"

    const-string v2, "setCurrentPhoto"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-ne v1, p1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 636
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 637
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 638
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateImageCache()V

    .line 639
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->fireDataChange()V

    .line 642
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    .line 643
    .local v0, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mReloadTask:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mReloadTask:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method public setDataListener(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 307
    const-string v0, "PhotoDataAdapter"

    const-string v1, "DataListener setDataListener"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mDataListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;

    .line 309
    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 651
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mFocusHintDirection:I

    .line 652
    return-void
.end method

.method public setFocusHintPath(Lcom/pantech/app/vegacamera/bridge/data/Path;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mFocusHintPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 657
    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 530
    const-string v0, "PhotoDataAdapter"

    const-string v1, "setNeedFullImage"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 532
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 533
    return-void
.end method
