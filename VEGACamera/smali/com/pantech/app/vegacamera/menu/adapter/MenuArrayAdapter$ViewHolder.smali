.class Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MenuArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public ivCurrImage:Landroid/widget/ImageView;

.field public ivCurrImageSelectd:Landroid/widget/ImageView;

.field public rlItemG:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field public rlUsedCamera:Landroid/widget/ImageView;

.field public rlUsedVideo:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

.field public tvCurrTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 170
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->this$0:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlItemG:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 172
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlUsedCamera:Landroid/widget/ImageView;

    .line 173
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlUsedVideo:Landroid/widget/ImageView;

    .line 174
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImage:Landroid/widget/ImageView;

    .line 175
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImageSelectd:Landroid/widget/ImageView;

    .line 176
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->tvCurrTitle:Landroid/widget/TextView;

    return-void
.end method
