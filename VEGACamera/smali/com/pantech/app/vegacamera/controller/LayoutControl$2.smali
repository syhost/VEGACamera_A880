.class Lcom/pantech/app/vegacamera/controller/LayoutControl$2;
.super Ljava/lang/Object;
.source "LayoutControl.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/controller/LayoutControl;->_GpsRotateDialogShowWaiting()V
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl$2;->this$0:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 2907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelListener()V
    .locals 1

    .prologue
    .line 2928
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl$2;->this$0:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->access$0(Lcom/pantech/app/vegacamera/controller/LayoutControl;)Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 2929
    return-void
.end method

.method public onNegativeButtonSelect()V
    .locals 1

    .prologue
    .line 2923
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl$2;->this$0:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->access$0(Lcom/pantech/app/vegacamera/controller/LayoutControl;)Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 2924
    return-void
.end method

.method public onPositiveButtonSelect()V
    .locals 3

    .prologue
    .line 2910
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl$2;->this$0:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/LayoutControl;->mGpsRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->access$0(Lcom/pantech/app/vegacamera/controller/LayoutControl;)Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 2911
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl$2;->this$0:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2912
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl$2;->this$0:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2913
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setting_gps_info"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2914
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2915
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl$2;->this$0:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2916
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LayoutControl$2;->this$0:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->mLocMgr:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->Start()V

    .line 2919
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
