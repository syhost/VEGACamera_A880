.class Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MenuDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public ivRadioButton:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;

.field public tvCurrTitle:Landroid/widget/TextView;

.field public tvSubItemCurrValue:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;->this$0:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;->tvCurrTitle:Landroid/widget/TextView;

    .line 80
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;->tvSubItemCurrValue:Landroid/widget/TextView;

    .line 81
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;->ivRadioButton:Landroid/widget/ImageView;

    return-void
.end method
