.class Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;
.super Ljava/lang/Object;
.source "RemoteLayoutControl.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TutorialManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;-><init>(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)V

    return-void
.end method


# virtual methods
.method public OnChangePage(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    .line 289
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne p1, v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$0(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 291
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v0, v1, :cond_0

    .line 292
    sput p1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    .line 293
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$1(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$2(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)I

    move-result v2

    #calls: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShowTutorial(III)V
    invoke-static {v0, v1, p1, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$3(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;III)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v0

    const-string v1, "Pref_init_nfc_tutorial"

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/CameraSettings;->SetPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 324
    :cond_1
    :goto_0
    return-void

    .line 296
    :cond_2
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne p1, v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$0(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 298
    sput p1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    .line 299
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$1(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$2(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)I

    move-result v2

    #calls: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShowTutorial(III)V
    invoke-static {v0, v1, p1, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$3(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;III)V

    goto :goto_0

    .line 301
    :cond_3
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne p1, v0, :cond_4

    .line 302
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$0(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 303
    sput p1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    .line 304
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$1(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$2(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)I

    move-result v2

    #calls: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShowTutorial(III)V
    invoke-static {v0, v1, p1, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$3(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;III)V

    goto :goto_0

    .line 306
    :cond_4
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    if-ne p1, v0, :cond_1

    .line 307
    sput p1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    .line 308
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    const/4 v1, 0x0

    #setter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$4(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;I)V

    .line 309
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$5(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$6(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$7(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$8(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$9(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #getter for: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$10(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;->this$0:Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    #calls: Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_TutorialControlSettingPref()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->access$11(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)V

    goto/16 :goto_0
.end method
