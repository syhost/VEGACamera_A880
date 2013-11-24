.class Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;
.super Ljava/lang/Object;
.source "SeekBarList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private ivMinus:Landroid/widget/ImageView;

.field private ivPlus:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->this$0:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->ivPlus:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->ivMinus:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->ivPlus:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->ivMinus:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;Landroid/widget/SeekBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;

    return-void
.end method
