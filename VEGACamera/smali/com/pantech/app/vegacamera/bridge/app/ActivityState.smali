.class public abstract Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;
    }
.end annotation


# static fields
.field protected static final FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x10

.field protected static final FLAG_HIDE_ACTION_BAR:I = 0x1

.field protected static final FLAG_HIDE_STATUS_BAR:I = 0x2

.field protected static final FLAG_SCREEN_ON_ALWAYS:I = 0x8

.field protected static final FLAG_SCREEN_ON_WHEN_PLUGGED:I = 0x4

.field protected static final FLAG_SHOW_WHEN_LOCKED:I = 0x20

.field private static final KEY_TRANSITION_IN:Ljava/lang/String; = "transition-in"


# instance fields
.field protected mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

.field protected mBackgroundColor:[F

.field private mContentPane:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

.field protected mData:Landroid/os/Bundle;

.field private mDestroyed:Z

.field protected mFlags:I

.field protected mHapticsEnabled:Z

.field private mIntroAnimation:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

.field mIsFinishing:Z

.field private mNextTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

.field private mPlugged:Z

.field mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mReceivedResults:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

.field protected mResult:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mDestroyed:Z

    .line 65
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mPlugged:Z

    .line 66
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mIsFinishing:Z

    .line 70
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->None:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mNextTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    .line 134
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$1;-><init>(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mPlugged:Z

    return v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mPlugged:Z

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->setScreenFlags()V

    return-void
.end method

.method private setScreenFlags()V
    .locals 4

    .prologue
    .line 151
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 152
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 153
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mPlugged:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 154
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 158
    :goto_0
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 159
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 163
    :goto_1
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3

    .line 164
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x8

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 168
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 169
    return-void

    .line 156
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 161
    :cond_2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 166
    :cond_3
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2
.end method


# virtual methods
.method protected clearStateResult()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method protected getBackgroundColor()[F
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mBackgroundColor:[F

    return-object v0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 120
    sget v0, Lcom/pantech/app/vegacamera/R$color;->default_background:I

    return v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getSupportMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method initialize(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "data"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    .line 89
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mData:Landroid/os/Bundle;

    .line 91
    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mDestroyed:Z

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mIsFinishing:Z

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->finishState(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)V

    .line 99
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 109
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "storedState"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->getBackgroundColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mBackgroundColor:[F

    .line 129
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mDestroyed:Z

    .line 256
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 183
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mNextTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    sget-object v1, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->None:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    if-eq v0, v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getTransitionStore()Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;

    move-result-object v0

    const-string v1, "transition-in"

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mNextTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mContentPane:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PreparePageFadeoutTexture;->prepareFadeOutTexture(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V

    .line 189
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->None:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mNextTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    .line 191
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 236
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getTransitionStore()Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;

    move-result-object v1

    const-string v2, "fade_texture"

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    .line 237
    .local v0, fade:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getTransitionStore()Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;

    move-result-object v1

    const-string v2, "transition-in"

    sget-object v3, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->None:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mNextTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    .line 238
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mNextTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    sget-object v2, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->None:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    if-eq v1, v2, :cond_0

    .line 239
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mNextTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    invoke-direct {v1, v2, v0}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;-><init>(Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mIntroAnimation:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    .line 240
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->None:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mNextTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    .line 242
    :cond_0
    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 112
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 115
    return-void
.end method

.method resume()V
    .locals 7

    .prologue
    .line 195
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    .line 209
    .local v0, activity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    .line 211
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->setScreenFlags()V

    .line 213
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    .line 214
    .local v3, lightsOut:Z
    :goto_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->setLightsOutMode(Z)V

    .line 216
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mReceivedResults:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    .line 217
    .local v1, entry:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;
    if-eqz v1, :cond_0

    .line 218
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mReceivedResults:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    .line 219
    iget v4, v1, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;->requestCode:I

    iget v5, v1, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v6, v1, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p0, v4, v5, v6}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 222
    :cond_0
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 224
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onResume()V

    .line 231
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getTransitionStore()Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;->clear()V

    .line 232
    return-void

    .line 213
    .end local v1           #entry:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;
    .end local v3           #lightsOut:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected setContentPane(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mContentPane:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    .line 79
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mIntroAnimation:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mContentPane:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mIntroAnimation:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->setIntroAnimation(Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mIntroAnimation:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mContentPane:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->getBackgroundColor()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->setBackgroundColor([F)V

    .line 84
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->setContentPane(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V

    .line 85
    return-void
.end method

.method protected setStateResult(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mResult:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mResult:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    iput p1, v0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;->resultCode:I

    .line 105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mResult:Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;

    iput-object p2, v0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;)V
    .locals 1
    .parameter
    .parameter
    .parameter "hint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/pantech/app/vegacamera/bridge/app/ActivityState;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/pantech/app/vegacamera/bridge/app/ActivityState;",
            ">;",
            "Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, outgoing:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/pantech/app/vegacamera/bridge/app/ActivityState;>;"
    .local p2, incoming:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/pantech/app/vegacamera/bridge/app/ActivityState;>;"
    const-class v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    if-ne p1, v0, :cond_0

    .line 174
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mNextTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    const-class v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    if-ne p2, v0, :cond_1

    .line 176
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mNextTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 178
    :cond_1
    iput-object p3, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mNextTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    goto :goto_0
.end method
