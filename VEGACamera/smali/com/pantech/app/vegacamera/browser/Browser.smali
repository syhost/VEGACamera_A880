.class public Lcom/pantech/app/vegacamera/browser/Browser;
.super Landroid/app/ListActivity;
.source "Browser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;,
        Lcom/pantech/app/vegacamera/browser/Browser$DirectoryFilter;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXTERNAL_DIR:Ljava/lang/String;

.field private static final DEFAULT_INTERNAL_DIR:Ljava/lang/String;


# instance fields
.field private BrowserTheme:I

.field private TAG:Ljava/lang/String;

.field public final THEME_BLACK:I

.field public final THEME_WHITE:I

.field public final THEME_WHITEPT:I

.field private currentDirectory:Ljava/io/File;

.field private directoryEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackKeyUpOneLevel:Z

.field private mCancel:Landroid/widget/Button;

.field private mExternal:Landroid/view/MenuItem;

.field private mInternal:Landroid/view/MenuItem;

.field private mKey:Ljava/lang/String;

.field private mMenu:Landroid/view/Menu;

.field private mNeedBrowse:Z

.field private mOk:Landroid/widget/Button;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTitleText:Landroid/widget/TextView;

.field private mType:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private storedDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    sput-object v0, Lcom/pantech/app/vegacamera/browser/Browser;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_EXTERNAL_DIR:Ljava/lang/String;

    sput-object v0, Lcom/pantech/app/vegacamera/browser/Browser;->DEFAULT_EXTERNAL_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 39
    const-string v0, "Browser"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->directoryEntries:Ljava/util/List;

    .line 45
    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    .line 46
    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mMenu:Landroid/view/Menu;

    .line 58
    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mInternal:Landroid/view/MenuItem;

    .line 59
    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mExternal:Landroid/view/MenuItem;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mBackKeyUpOneLevel:Z

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->THEME_BLACK:I

    .line 64
    iput v2, p0, Lcom/pantech/app/vegacamera/browser/Browser;->THEME_WHITE:I

    .line 65
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->THEME_WHITEPT:I

    .line 66
    iput v2, p0, Lcom/pantech/app/vegacamera/browser/Browser;->BrowserTheme:I

    .line 533
    new-instance v0, Lcom/pantech/app/vegacamera/browser/Browser$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/browser/Browser$1;-><init>(Lcom/pantech/app/vegacamera/browser/Browser;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/browser/Browser;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/browser/Browser;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->directoryEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/browser/Browser;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->BrowserTheme:I

    return v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/browser/Browser;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/browser/Browser;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;

    return-object v0
.end method

.method private browseTo(Ljava/io/File;)V
    .locals 4
    .parameter "aDirectory"

    .prologue
    .line 379
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Browser] browseTo() :: aDirectory = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    iput-object p1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    .line 382
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Browser] browseTo() :: currentDirectory = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v1, Lcom/pantech/app/vegacamera/browser/Browser$DirectoryFilter;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/browser/Browser$DirectoryFilter;-><init>(Lcom/pantech/app/vegacamera/browser/Browser;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 384
    .local v0, files:[Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->fill([Ljava/io/File;)V

    .line 388
    .end local v0           #files:[Ljava/io/File;
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private cancelBtnClicked()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    const-string v1, "[Browser] onClick() :: R.id.cancel"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/browser/Browser;->setResult(ILandroid/content/Intent;)V

    .line 519
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->finish()V

    .line 520
    return-void
.end method

.method private change_LocationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "val"

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, changedVal:Ljava/lang/String;
    const-string v2, "temp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "change_LocationString = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->setting_storage_location_internal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 426
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 425
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    :goto_0
    return-object v0

    .line 427
    :cond_0
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->Get2ndExternalStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->setting_storage_location_external:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 429
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->Get2ndExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 428
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->setting_storage_location_internal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 431
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    goto/16 :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->Get2ndExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->setting_storage_location_external:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->Get2ndExternalStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 434
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    goto/16 :goto_0

    :cond_3
    const-string v2, "/storage0/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->setting_storage_location_internal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 438
    const-string v3, "/storage0/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 437
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    goto/16 :goto_0

    :cond_4
    const-string v2, "/storage1/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->setting_storage_location_external:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 441
    const-string v3, "/storage1/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 440
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 442
    goto/16 :goto_0

    .line 443
    :cond_5
    move-object v0, p1

    goto/16 :goto_0

    .line 445
    :catch_0
    move-exception v1

    .line 446
    .local v1, e:Ljava/lang/NoSuchMethodError;
    move-object v0, p1

    .line 447
    iget-object v2, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NoSuchMethodError "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private fill([Ljava/io/File;)V
    .locals 8
    .parameter "files"

    .prologue
    const/4 v3, 0x0

    .line 391
    iget-object v4, p0, Lcom/pantech/app/vegacamera/browser/Browser;->directoryEntries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 395
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->isPanrentAccessible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 402
    iget-object v4, p0, Lcom/pantech/app/vegacamera/browser/Browser;->directoryEntries:Ljava/util/List;

    const-string v5, ".."

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 408
    .local v0, currentPathStringLenght:I
    if-eqz p1, :cond_1

    .line 409
    array-length v5, p1

    move v4, v3

    :goto_1
    if-lt v4, v5, :cond_2

    .line 414
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mOk:Landroid/widget/Button;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 415
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mTitleText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/pantech/app/vegacamera/browser/Browser;->change_LocationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    new-instance v3, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;-><init>(Lcom/pantech/app/vegacamera/browser/Browser;Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;)V

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/browser/Browser;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 417
    return-void

    .line 396
    .end local v0           #currentPathStringLenght:I
    :catch_0
    move-exception v1

    .line 397
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 409
    .end local v1           #e1:Ljava/lang/InterruptedException;
    .restart local v0       #currentPathStringLenght:I
    :cond_2
    aget-object v2, p1, v4

    .line 410
    .local v2, file:Ljava/io/File;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/browser/Browser;->directoryEntries:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 414
    .end local v2           #file:Ljava/io/File;
    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private initIntent()V
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_5

    .line 96
    const-string v1, "pref_intent_value"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mValue:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mValue:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 98
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getStorageDirectory()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mValue:Ljava/lang/String;

    .line 100
    :cond_0
    const-string v1, "pref_intent_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mKey:Ljava/lang/String;

    .line 101
    const-string v1, "pref_intent_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mType:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Browser] storedDirectory = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    if-nez v1, :cond_1

    .line 107
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetStorageLocationDir()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/pantech/app/vegacamera/browser/Browser;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    .line 108
    :goto_0
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    iput-object v2, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    .line 109
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetStorageLocationDir()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/pantech/app/vegacamera/browser/Browser;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    .line 112
    :goto_1
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    iput-object v2, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Browser] currentDirectory = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/browser/Browser;->browseTo(Ljava/io/File;)V

    .line 127
    :cond_2
    :goto_2
    return-void

    .line 108
    :cond_3
    invoke-static {}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetStorageLocationDir()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 112
    :cond_4
    invoke-static {}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetStorageLocationDir()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->finish()V

    goto :goto_2
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 80
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->requestWindowFeature(I)Z

    .line 82
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$string;->browser_header:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 85
    iget v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->BrowserTheme:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$drawable;->pt_ab_transparent_light_holo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_0
    sget v0, Lcom/pantech/app/vegacamera/R$layout;->browser:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->setContentView(I)V

    .line 90
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->setLayout_for_Theme()V

    .line 91
    return-void
.end method

.method private initListView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 131
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 133
    return-void
.end method

.method private isPanrentAccessible()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 318
    :try_start_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->Get2ndExternalStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 319
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 329
    :cond_1
    :goto_0
    return v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Ljava/lang/NoSuchMethodError;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NoSuchMethodError "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 327
    goto :goto_0
.end method

.method private okBtnClicked()V
    .locals 3

    .prologue
    .line 500
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    const-string v2, "[Browser] onClick() :: R.id.ok"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 502
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 503
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 504
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->finish()V

    .line 512
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->finish()V

    .line 514
    return-void

    .line 506
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "pref_intent_key"

    iget-object v2, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v1, "pref_intent_value"

    iget-object v2, p0, Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string v1, "pref_intent_type"

    iget-object v2, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private setBtnListener()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 157
    sget v0, Lcom/pantech/app/vegacamera/R$id;->titleText:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mTitleText:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 160
    iget v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->BrowserTheme:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 161
    sget v0, Lcom/pantech/app/vegacamera/R$id;->ok_blue:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mOk:Landroid/widget/Button;

    .line 162
    sget v0, Lcom/pantech/app/vegacamera/R$id;->cancel_blue:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mCancel:Landroid/widget/Button;

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 173
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 175
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 177
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 178
    return-void

    .line 164
    :cond_0
    sget v0, Lcom/pantech/app/vegacamera/R$id;->ok:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mOk:Landroid/widget/Button;

    .line 165
    sget v0, Lcom/pantech/app/vegacamera/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mCancel:Landroid/widget/Button;

    goto :goto_0
.end method

.method private setEnable_MenuExternal(Z)V
    .locals 2
    .parameter "val"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mExternal:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 656
    :cond_0
    if-eqz p1, :cond_1

    .line 657
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mExternal:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 659
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mExternal:Landroid/view/MenuItem;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->actionbar_icon_memory_out_w:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mExternal:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 663
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mExternal:Landroid/view/MenuItem;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->actionbar_icon_memory_out_b:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setEnable_MenuInternal(Z)V
    .locals 2
    .parameter "val"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mInternal:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 651
    :goto_0
    return-void

    .line 642
    :cond_0
    if-eqz p1, :cond_1

    .line 643
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mInternal:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 645
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mInternal:Landroid/view/MenuItem;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->actionbar_icon_memory1_in_w:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mInternal:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 649
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mInternal:Landroid/view/MenuItem;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->actionbar_icon_memory1_in_b:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setLayout_for_Theme()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->setBtnListener()V

    .line 138
    iget v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->BrowserTheme:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 139
    sget v0, Lcom/pantech/app/vegacamera/R$id;->btn_bg_blue:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    sget v0, Lcom/pantech/app/vegacamera/R$id;->btn_bg_general:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    sget v0, Lcom/pantech/app/vegacamera/R$id;->ex_header:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "#cad8e8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 142
    sget v0, Lcom/pantech/app/vegacamera/R$id;->titleText:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "#20364f"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    :goto_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->setBtnListener()V

    .line 154
    return-void

    .line 143
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->BrowserTheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 144
    sget v0, Lcom/pantech/app/vegacamera/R$id;->btn_bg_blue:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    sget v0, Lcom/pantech/app/vegacamera/R$id;->btn_bg_general:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_1
    sget v0, Lcom/pantech/app/vegacamera/R$id;->btn_bg_blue:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    sget v0, Lcom/pantech/app/vegacamera/R$id;->btn_bg_general:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    sget v0, Lcom/pantech/app/vegacamera/R$id;->ex_header:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "#6A7A8A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 150
    sget v0, Lcom/pantech/app/vegacamera/R$id;->titleText:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "#E9ECEF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private upOneLevel()Z
    .locals 3

    .prologue
    .line 357
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    const-string v2, "[Browser] upOneLevel()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v0, 0x1

    .line 359
    .local v0, ret:Z
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->isPanrentAccessible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/browser/Browser;->browseTo(Ljava/io/File;)V

    .line 364
    :goto_0
    return v0

    .line 362
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkMediaScanningState(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter "action"
    .parameter "intent"

    .prologue
    .line 566
    return-void
.end method

.method protected checkStorage()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 569
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    const-string v4, "[Browser] checkStorage()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, storage1State:Ljava/lang/String;
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->Get2ndExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, storage2State:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 575
    invoke-direct {p0, v6}, Lcom/pantech/app/vegacamera/browser/Browser;->setEnable_MenuInternal(Z)V

    .line 577
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mNeedBrowse:Z

    if-eqz v3, :cond_0

    .line 578
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/pantech/app/vegacamera/browser/Browser;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    .line 579
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/browser/Browser;->browseTo(Ljava/io/File;)V

    .line 580
    iput-boolean v5, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mNeedBrowse:Z

    .line 583
    :cond_0
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 584
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;

    sget-object v4, Lcom/pantech/app/vegacamera/browser/Browser;->DEFAULT_EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 585
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/pantech/app/vegacamera/browser/Browser;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    .line 586
    sget-object v3, Lcom/pantech/app/vegacamera/browser/Browser;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;

    .line 587
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/browser/Browser;->browseTo(Ljava/io/File;)V

    .line 589
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->access_sd_fail:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1770

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 590
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 593
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mOk:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 611
    :goto_0
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 612
    invoke-direct {p0, v6}, Lcom/pantech/app/vegacamera/browser/Browser;->setEnable_MenuExternal(Z)V

    .line 631
    :goto_1
    return-void

    .line 594
    :cond_2
    const-string v3, "shared"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 595
    invoke-direct {p0, v5}, Lcom/pantech/app/vegacamera/browser/Browser;->setEnable_MenuInternal(Z)V

    .line 597
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->usb_connected:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 598
    .restart local v2       #toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 600
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/pantech/app/vegacamera/browser/Browser;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    .line 601
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/browser/Browser;->browseTo(Ljava/io/File;)V

    .line 602
    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mNeedBrowse:Z

    .line 603
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mOk:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 606
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_3
    invoke-direct {p0, v5}, Lcom/pantech/app/vegacamera/browser/Browser;->setEnable_MenuInternal(Z)V

    .line 607
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mOk:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 613
    :cond_4
    const-string v3, "shared"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 614
    invoke-direct {p0, v5}, Lcom/pantech/app/vegacamera/browser/Browser;->setEnable_MenuExternal(Z)V

    goto :goto_1

    .line 616
    :cond_5
    invoke-direct {p0, v5}, Lcom/pantech/app/vegacamera/browser/Browser;->setEnable_MenuExternal(Z)V

    goto :goto_1
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mBackKeyUpOneLevel:Z

    if-eqz v0, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->upOneLevel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBtnClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"
    .annotation runtime Lcom/pantech/app/vegacamera/OnClickAttr;
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBtnClicked v.getId() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->ok:I

    if-ne v0, v1, :cond_1

    .line 526
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->okBtnClicked()V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->cancel:I

    if-ne v0, v1, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->cancelBtnClicked()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/pantech/app/vegacamera/R$id;->ok:I

    if-eq v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/pantech/app/vegacamera/R$id;->ok_blue:I

    if-ne v4, v5, :cond_2

    .line 480
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->okBtnClicked()V

    .line 497
    :cond_1
    :goto_0
    return-void

    .line 481
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/pantech/app/vegacamera/R$id;->cancel:I

    if-eq v4, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/pantech/app/vegacamera/R$id;->cancel_blue:I

    if-ne v4, v5, :cond_4

    .line 482
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->cancelBtnClicked()V

    goto :goto_0

    .line 483
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/pantech/app/vegacamera/R$id;->checkbox:I

    if-ne v4, v5, :cond_1

    .line 484
    iget-object v4, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    const-string v5, "[Browser] onClick() :: R.id.checkbox"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p1

    .line 485
    check-cast v3, Landroid/widget/RadioButton;

    .line 486
    .local v3, radioBtn:Landroid/widget/RadioButton;
    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 487
    invoke-virtual {v3}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, pos:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 490
    .local v2, position:I
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/pantech/app/vegacamera/browser/Browser;->directoryEntries:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;

    .line 491
    iget-object v4, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mOk:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 493
    .end local v1           #pos:Ljava/lang/String;
    .end local v2           #position:I
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;

    .line 494
    .local v0, adapter:Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    const-string v1, "[Browser] onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 225
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    const-string v1, "[Browser] onCreate()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$integer;->browser_theme_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->BrowserTheme:I

    .line 74
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->initLayout()V

    .line 75
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->initIntent()V

    .line 76
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->initListView()V

    .line 77
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 182
    iput-object p1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mMenu:Landroid/view/Menu;

    .line 183
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mMenu:Landroid/view/Menu;

    const v2, -0x1e240

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 186
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 187
    .local v0, inflater:Landroid/view/MenuInflater;
    sget v1, Lcom/pantech/app/vegacamera/R$menu;->browser_actionbar_menu:I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 188
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mMenu:Landroid/view/Menu;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mInternal:Landroid/view/MenuItem;

    .line 189
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mExternal:Landroid/view/MenuItem;

    .line 191
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->checkStorage()V

    .line 193
    return v3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 200
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->directoryEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->directoryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 204
    :cond_0
    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->directoryEntries:Ljava/util/List;

    .line 205
    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    .line 206
    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;

    .line 208
    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mTitleText:Landroid/widget/TextView;

    .line 209
    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mOk:Landroid/widget/Button;

    .line 210
    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mCancel:Landroid/widget/Button;

    .line 212
    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mValue:Ljava/lang/String;

    .line 213
    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mKey:Ljava/lang/String;

    .line 214
    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mType:Ljava/lang/String;

    .line 215
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 455
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    const-string v4, "[Browser] onListItemClick()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    long-to-int v2, p4

    .line 457
    .local v2, selectionRowID:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->directoryEntries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 458
    .local v1, selectedFileString:Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Browser] . = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/browser/Browser;->browseTo(Ljava/io/File;)V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    const-string v3, ".."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 463
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    const-string v4, "[Browser] .. "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->upOneLevel()Z

    goto :goto_0

    .line 466
    :cond_2
    const/4 v0, 0x0

    .line 468
    .local v0, clickedFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0           #clickedFile:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->directoryEntries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    .restart local v0       #clickedFile:Ljava/io/File;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Browser] clickedFile = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    if-eqz v0, :cond_0

    .line 472
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->browseTo(Ljava/io/File;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 336
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->finish()V

    .line 353
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 338
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/pantech/app/vegacamera/R$id;->menu_id_internal:I

    if-ne v1, v2, :cond_2

    .line 339
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/pantech/app/vegacamera/browser/Browser;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    .line 340
    sget-object v1, Lcom/pantech/app/vegacamera/browser/Browser;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;

    .line 341
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/browser/Browser;->browseTo(Ljava/io/File;)V

    goto :goto_0

    .line 342
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/pantech/app/vegacamera/R$id;->menu_id_external:I

    if-ne v1, v2, :cond_0

    .line 343
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->Get2ndExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    sget-object v1, Lcom/pantech/app/vegacamera/browser/Browser;->DEFAULT_EXTERNAL_DIR:Ljava/lang/String;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;

    .line 345
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 349
    :cond_3
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/pantech/app/vegacamera/browser/Browser;->DEFAULT_EXTERNAL_DIR:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    .line 350
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/browser/Browser;->browseTo(Ljava/io/File;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 635
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 636
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 637
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 676
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 677
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 553
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;

    const-string v2, "[Browser] onResume()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 556
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/pantech/app/vegacamera/browser/Browser;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/browser/Browser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 562
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/browser/Browser;->checkStorage()V

    .line 563
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 670
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 671
    return-void
.end method
