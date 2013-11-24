.class public Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;
.super Ljava/lang/Object;
.source "RotateAlertDialog.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/RotateDialog;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;
    }
.end annotation


# static fields
.field public static final DIALOG_CONFIRM_CHECK:I = 0x1

.field public static final DIALOG_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RotateAlertDialog"


# instance fields
.field private isCheck:Z

.field private mActivity:Landroid/app/Activity;

.field private mAlertDialogRootLayout:Landroid/view/View;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonPositive:Landroid/widget/Button;

.field private mCenterLineView:Landroid/view/View;

.field private mCheckBox:Landroid/view/View;

.field private mCheckBoxText:Landroid/widget/TextView;

.field private mCheckboxLayout:Landroid/widget/LinearLayout;

.field private mListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

.field private mMessageView:Landroid/widget/TextView;

.field private mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleView:Landroid/widget/TextView;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "a"
    .parameter "type"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isCheck:Z

    .line 41
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mActivity:Landroid/app/Activity;

    .line 42
    iput p2, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mType:I

    .line 43
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->inflateDialogLayout()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IZ)V
    .locals 1
    .parameter "a"
    .parameter "type"
    .parameter "checkBox"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isCheck:Z

    .line 47
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mActivity:Landroid/app/Activity;

    .line 48
    iput p2, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mType:I

    .line 49
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->inflateDialogLayout()V

    .line 50
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 53
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mAlertDialogRootLayout:Landroid/view/View;

    if-nez v4, :cond_0

    .line 54
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 55
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x408

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 56
    const/4 v4, -0x3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 57
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 58
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 59
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 60
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 61
    const/16 v4, 0x11

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 63
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mActivity:Landroid/app/Activity;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 65
    .local v3, wm:Landroid/view/WindowManager;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 66
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v4, Lcom/pantech/app/vegacamera/R$layout;->rotate_alertdialog:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, v:Landroid/view/View;
    invoke-interface {v3, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    sget v4, Lcom/pantech/app/vegacamera/R$id;->rotate_alertdialog_root_layout:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mAlertDialogRootLayout:Landroid/view/View;

    .line 71
    sget v4, Lcom/pantech/app/vegacamera/R$id;->rotate_alertdialog_layout:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 73
    sget v4, Lcom/pantech/app/vegacamera/R$id;->checkbox_layout:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCheckboxLayout:Landroid/widget/LinearLayout;

    .line 75
    sget v4, Lcom/pantech/app/vegacamera/R$id;->topPanel:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 77
    sget v4, Lcom/pantech/app/vegacamera/R$id;->alertTitle:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mTitleView:Landroid/widget/TextView;

    .line 80
    sget v4, Lcom/pantech/app/vegacamera/R$id;->message:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mMessageView:Landroid/widget/TextView;

    .line 82
    sget v4, Lcom/pantech/app/vegacamera/R$id;->negativeButton:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonNegative:Landroid/widget/Button;

    .line 83
    sget v4, Lcom/pantech/app/vegacamera/R$id;->positiveButton:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonPositive:Landroid/widget/Button;

    .line 85
    sget v4, Lcom/pantech/app/vegacamera/R$id;->alert_checkbox:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCheckBox:Landroid/view/View;

    .line 86
    sget v4, Lcom/pantech/app/vegacamera/R$id;->alert_checkbox_text:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCheckBoxText:Landroid/widget/TextView;

    .line 88
    sget v4, Lcom/pantech/app/vegacamera/R$id;->centerSpacer:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCenterLineView:Landroid/view/View;

    .line 90
    iget v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 104
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #wm:Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    .restart local v1       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #v:Landroid/view/View;
    .restart local v3       #wm:Landroid/view/WindowManager;
    :pswitch_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCheckboxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCheckboxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCheckBox:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCheckBox:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public SetListener(Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    .line 155
    return-void
.end method

.method public dismissDialog()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 214
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mAlertDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mAlertDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mAlertDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mAlertDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isCheck:Z

    return v0
.end method

.method public isShowDialog()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mAlertDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mAlertDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 117
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    if-eqz v2, :cond_2

    .line 120
    const-string v2, "RotateAlertDialog"

    const-string v3, "PositiveButton Click"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;->onPositiveButtonSelect()V

    .line 122
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    :cond_1
    :goto_1
    :pswitch_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    if-eqz v2, :cond_3

    .line 131
    const-string v0, "RotateAlertDialog"

    const-string v2, "PositiveButton Click"

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;->onPositiveButtonSelect()V

    .line 133
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    if-eqz v2, :cond_1

    .line 124
    const-string v2, "RotateAlertDialog"

    const-string v3, "NegativeButton Click"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;->onNegativeButtonSelect()V

    .line 126
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 134
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    if-eqz v2, :cond_4

    .line 135
    const-string v0, "RotateAlertDialog"

    const-string v2, "NegativeButton Click"

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;->onNegativeButtonSelect()V

    .line 137
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 138
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCheckBox:Landroid/view/View;

    if-ne p1, v2, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_2
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setChecked(Z)V

    .line 140
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 139
    goto :goto_2

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mAlertDialogRootLayout:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;->onCancelListener()V

    .line 150
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 3
    .parameter "positive"

    .prologue
    const/16 v2, 0x8

    .line 179
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonPositive:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 187
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setButtonText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "positive"
    .parameter "negative"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCenterLineView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCenterLineView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :goto_1
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCenterLineView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCenterLineView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setCheckBoxText(Ljava/lang/String;)V
    .locals 2
    .parameter "checkboxText"

    .prologue
    const/16 v1, 0x8

    .line 190
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCheckBoxText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCheckBoxText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCheckboxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mCheckBoxText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "check"

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isCheck:Z

    .line 242
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 232
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 211
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showDialog()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mAlertDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->mAlertDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 228
    return-void
.end method
