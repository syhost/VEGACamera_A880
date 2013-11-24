.class public Lcom/pantech/app/vegacamera/pst/PstCameraTest;
.super Landroid/app/Activity;
.source "PstCameraTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;
    }
.end annotation


# static fields
.field private static final PST_FLASH_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PST_INTENT:Ljava/lang/String; = "android.intent.action.PSTCAMERA"

.field private static final PST_SHUTTERSOUND_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PST_SIZE_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PST_WB_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PstCameraTest"


# instance fields
.field private mFlash:Ljava/lang/String;

.field private mPrefLocal:Landroid/content/SharedPreferences;

.field mS1:Landroid/widget/Spinner;

.field mS2:Landroid/widget/Spinner;

.field mS3:Landroid/widget/Spinner;

.field mS4:Landroid/widget/Spinner;

.field private mShutterSound:Ljava/lang/String;

.field private mSize:Ljava/lang/String;

.field private mWB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SIZE_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    .line 88
    new-instance v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SHUTTERSOUND_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    .line 89
    new-instance v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_WB_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    .line 90
    new-instance v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_FLASH_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mSize:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mShutterSound:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mWB:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mFlash:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS1:Landroid/widget/Spinner;

    .line 51
    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS2:Landroid/widget/Spinner;

    .line 52
    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS3:Landroid/widget/Spinner;

    .line 53
    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS4:Landroid/widget/Spinner;

    .line 92
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SIZE_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "2560x1920"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SIZE_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "2000x1200"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SIZE_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "1600x1200"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SIZE_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "1280x960"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SIZE_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "800x480"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SIZE_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "640x480"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SIZE_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SHUTTERSOUND_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "on"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SHUTTERSOUND_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "off"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SHUTTERSOUND_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 104
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_WB_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "auto"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_WB_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "daylight"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_WB_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "cloudy-daylight"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_WB_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "fluorescent"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_WB_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "incandescent"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_WB_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_FLASH_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "auto"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_FLASH_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "on"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_FLASH_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    const-string v1, "off"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_FLASH_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method static synthetic access$0()Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SIZE_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    return-object v0
.end method

.method static synthetic access$1()Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SHUTTERSOUND_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    return-object v0
.end method

.method static synthetic access$2()Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_WB_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    return-object v0
.end method

.method static synthetic access$3()Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_FLASH_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x1090009

    const v6, 0x1090008

    .line 123
    sget v4, Lcom/pantech/app/vegacamera/R$layout;->pst_test:I

    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->setContentView(I)V

    .line 125
    sget v4, Lcom/pantech/app/vegacamera/R$id;->pst_size:I

    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS1:Landroid/widget/Spinner;

    .line 126
    sget v4, Lcom/pantech/app/vegacamera/R$array;->pref_pst_size:I

    invoke-static {p0, v4, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 128
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 129
    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS1:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 134
    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS1:Landroid/widget/Spinner;

    new-instance v5, Lcom/pantech/app/vegacamera/pst/PstCameraTest$1;

    invoke-direct {v5, p0}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$1;-><init>(Lcom/pantech/app/vegacamera/pst/PstCameraTest;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 148
    sget v4, Lcom/pantech/app/vegacamera/R$id;->pst_shuttersound:I

    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS2:Landroid/widget/Spinner;

    .line 149
    sget v4, Lcom/pantech/app/vegacamera/R$array;->pref_pst_shuttersound:I

    invoke-static {p0, v4, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 151
    .local v1, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 152
    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS2:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 154
    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS2:Landroid/widget/Spinner;

    new-instance v5, Lcom/pantech/app/vegacamera/pst/PstCameraTest$2;

    invoke-direct {v5, p0}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$2;-><init>(Lcom/pantech/app/vegacamera/pst/PstCameraTest;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 168
    sget v4, Lcom/pantech/app/vegacamera/R$id;->pst_wb:I

    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS3:Landroid/widget/Spinner;

    .line 169
    sget v4, Lcom/pantech/app/vegacamera/R$array;->pref_pst_wb:I

    invoke-static {p0, v4, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 171
    .local v2, adapter3:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 172
    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS3:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 173
    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS3:Landroid/widget/Spinner;

    new-instance v5, Lcom/pantech/app/vegacamera/pst/PstCameraTest$3;

    invoke-direct {v5, p0}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$3;-><init>(Lcom/pantech/app/vegacamera/pst/PstCameraTest;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 186
    sget v4, Lcom/pantech/app/vegacamera/R$id;->pst_flash:I

    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS4:Landroid/widget/Spinner;

    .line 187
    sget v4, Lcom/pantech/app/vegacamera/R$array;->pref_pst_flash:I

    invoke-static {p0, v4, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    .line 189
    .local v3, adapter4:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v3, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 190
    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS4:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 191
    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS4:Landroid/widget/Spinner;

    new-instance v5, Lcom/pantech/app/vegacamera/pst/PstCameraTest$4;

    invoke-direct {v5, p0}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$4;-><init>(Lcom/pantech/app/vegacamera/pst/PstCameraTest;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS1:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->destroyDrawingCache()V

    .line 233
    iget-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS2:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->destroyDrawingCache()V

    .line 234
    iget-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS3:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->destroyDrawingCache()V

    .line 235
    iget-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS4:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->destroyDrawingCache()V

    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 237
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 228
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 208
    const/4 v1, 0x0

    .local v1, quality:I
    const/4 v2, 0x0

    .local v2, shuttersound:I
    const/4 v3, 0x0

    .local v3, wb:I
    const/4 v0, 0x0

    .line 209
    .local v0, flash:I
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->read_PST(Landroid/content/Context;)Z

    .line 210
    sget-object v4, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SIZE_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mSize:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 211
    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS1:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 213
    sget-object v4, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_SHUTTERSOUND_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mShutterSound:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 214
    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS2:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 216
    sget-object v4, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_WB_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mWB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 217
    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS3:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 219
    sget-object v4, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->PST_FLASH_TABLE:Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mFlash:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/pst/PstCameraTest$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 220
    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mS4:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 223
    return-void
.end method

.method protected read_PST(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 240
    const/4 v0, 0x1

    .line 241
    .local v0, PSTValue:Z
    const-string v2, "PstCameraTest"

    const-string v3, "[PSTCamera] read_PST"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "com.pantech.app.vegacamera_preferences_0"

    .line 244
    .local v1, prefName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mPrefLocal:Landroid/content/SharedPreferences;

    .line 246
    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mPrefLocal:Landroid/content/SharedPreferences;

    const-string v3, "pref_setting_picture_size"

    const-string v4, "2560x1920"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mSize:Ljava/lang/String;

    .line 247
    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mPrefLocal:Landroid/content/SharedPreferences;

    const-string v3, "pref_setting_shutter_sound"

    const-string v4, "on"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mShutterSound:Ljava/lang/String;

    .line 248
    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mPrefLocal:Landroid/content/SharedPreferences;

    const-string v3, "pref_setting_wb"

    const-string v4, "auto"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mWB:Ljava/lang/String;

    .line 249
    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mPrefLocal:Landroid/content/SharedPreferences;

    const-string v3, "pref_flash_mode_camera"

    const-string v4, "auto"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mFlash:Ljava/lang/String;

    .line 250
    const-string v2, "PstCameraTest"

    const-string v3, "[PSTCamera] read_PST done"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v2, "PstCameraTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[PSTCamera] mSize : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mSize:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mShutterSound : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mShutterSound:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mWB:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFlash : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 252
    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCameraTest;->mFlash:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return v0
.end method

.method showToast(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 118
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    return-void
.end method
