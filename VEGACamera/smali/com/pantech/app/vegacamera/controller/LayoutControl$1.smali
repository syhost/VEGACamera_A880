.class Lcom/pantech/app/vegacamera/controller/LayoutControl$1;
.super Ljava/lang/Object;
.source "LayoutControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/LayoutControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/LayoutControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl$1;->this$0:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 2124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2126
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl$1;->this$0:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_effect_color_extraction"

    .line 2127
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl$1;->this$0:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_extraction_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2126
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2129
    .local v0, colorExtractionMode:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl$1;->this$0:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->SetColorExtractionUpdateMode(Ljava/lang/String;)V

    .line 2130
    return-void
.end method
