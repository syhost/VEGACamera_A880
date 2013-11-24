.class public Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;
.super Ljava/lang/Object;
.source "RotateNoteDialog.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/RotateDialog;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/ui/RotateNoteDialog$Listener;
    }
.end annotation


# static fields
.field public static final DIALOG_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RotatNoteDialog"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCon:Landroid/content/Context;

.field private mListener:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog$Listener;

.field private mMessageView1_l:Landroid/widget/TextView;

.field private mMessageView1_p:Landroid/widget/TextView;

.field private mMessageView2_l:Landroid/widget/TextView;

.field private mMessageView2_p:Landroid/widget/TextView;

.field private mMessageView3_l:Landroid/widget/TextView;

.field private mMessageView3_p:Landroid/widget/TextView;

.field private mMessageView4_l:Landroid/widget/TextView;

.field private mMessageView4_p:Landroid/widget/TextView;

.field private mMessageView5_l:Landroid/widget/TextView;

.field private mMessageView5_p:Landroid/widget/TextView;

.field private mNoteDialogRootLayout_l:Landroid/view/View;

.field private mNoteDialogRootLayout_p:Landroid/view/View;

.field private mOrientation:I

.field private mPsView_l:Landroid/widget/TextView;

.field private mPsView_p:Landroid/widget/TextView;

.field private mRotateNoteDialog_l:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private mRotateNoteDialog_ll:Landroid/widget/RelativeLayout;

.field private mRotateNoteDialog_p:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private mRotateNoteDialog_pp:Landroid/widget/RelativeLayout;

.field private mTitleLayout_l:Landroid/widget/LinearLayout;

.field private mTitleLayout_p:Landroid/widget/LinearLayout;

.field private mTitleView1_l:Landroid/widget/TextView;

.field private mTitleView1_p:Landroid/widget/TextView;

.field private mTitleView2_l:Landroid/widget/TextView;

.field private mTitleView2_p:Landroid/widget/TextView;

.field private mTitleView3_l:Landroid/widget/TextView;

.field private mTitleView3_p:Landroid/widget/TextView;

.field private mTitleView4_l:Landroid/widget/TextView;

.field private mTitleView4_p:Landroid/widget/TextView;

.field private mTitleView5_l:Landroid/widget/TextView;

.field private mTitleView5_p:Landroid/widget/TextView;

.field private mTopTitleView_l:Landroid/widget/TextView;

.field private mTopTitleView_p:Landroid/widget/TextView;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;I)V
    .locals 1
    .parameter "a"
    .parameter "context"
    .parameter "type"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mOrientation:I

    .line 80
    iput-object p2, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mCon:Landroid/content/Context;

    .line 81
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mActivity:Landroid/app/Activity;

    .line 82
    iput p3, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mType:I

    .line 83
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->inflateDialogLayout()V

    .line 84
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 88
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 89
    .local v1, layoutRoot:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_p:Landroid/view/View;

    if-nez v4, :cond_0

    .line 93
    sget v4, Lcom/pantech/app/vegacamera/R$layout;->rotate_notedialog_portrait:I

    invoke-virtual {v0, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 94
    .local v3, v_p:Landroid/view/View;
    sget v4, Lcom/pantech/app/vegacamera/R$id;->rotate_notedialog_root_layout_portrait:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_p:Landroid/view/View;

    .line 95
    sget v4, Lcom/pantech/app/vegacamera/R$id;->rotate_notedialog_layout_p:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_p:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 96
    sget v4, Lcom/pantech/app/vegacamera/R$id;->rotate_notedialog_layout_pp:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_pp:Landroid/widget/RelativeLayout;

    .line 97
    sget v4, Lcom/pantech/app/vegacamera/R$id;->topPanel_p:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleLayout_p:Landroid/widget/LinearLayout;

    .line 98
    sget v4, Lcom/pantech/app/vegacamera/R$id;->noteTitle_p:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTopTitleView_p:Landroid/widget/TextView;

    .line 99
    sget v4, Lcom/pantech/app/vegacamera/R$id;->title1_p:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView1_p:Landroid/widget/TextView;

    .line 100
    sget v4, Lcom/pantech/app/vegacamera/R$id;->title2_p:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView2_p:Landroid/widget/TextView;

    .line 101
    sget v4, Lcom/pantech/app/vegacamera/R$id;->title3_p:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView3_p:Landroid/widget/TextView;

    .line 102
    sget v4, Lcom/pantech/app/vegacamera/R$id;->title4_p:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView4_p:Landroid/widget/TextView;

    .line 103
    sget v4, Lcom/pantech/app/vegacamera/R$id;->title5_p:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView5_p:Landroid/widget/TextView;

    .line 104
    sget v4, Lcom/pantech/app/vegacamera/R$id;->message1_p:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView1_p:Landroid/widget/TextView;

    .line 105
    sget v4, Lcom/pantech/app/vegacamera/R$id;->message2_p:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView2_p:Landroid/widget/TextView;

    .line 106
    sget v4, Lcom/pantech/app/vegacamera/R$id;->message3_p:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView3_p:Landroid/widget/TextView;

    .line 107
    sget v4, Lcom/pantech/app/vegacamera/R$id;->message4_p:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView4_p:Landroid/widget/TextView;

    .line 108
    sget v4, Lcom/pantech/app/vegacamera/R$id;->message5_p:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView5_p:Landroid/widget/TextView;

    .line 109
    sget v4, Lcom/pantech/app/vegacamera/R$id;->ps_p:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mPsView_p:Landroid/widget/TextView;

    .line 111
    iget v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 122
    .end local v3           #v_p:Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_l:Landroid/view/View;

    if-nez v4, :cond_1

    .line 124
    sget v4, Lcom/pantech/app/vegacamera/R$layout;->rotate_notedialog_land:I

    invoke-virtual {v0, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, v_l:Landroid/view/View;
    sget v4, Lcom/pantech/app/vegacamera/R$id;->rotate_notedialog_root_layout_land:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_l:Landroid/view/View;

    .line 126
    sget v4, Lcom/pantech/app/vegacamera/R$id;->rotate_notedialog_layout_l:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_l:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 127
    sget v4, Lcom/pantech/app/vegacamera/R$id;->rotate_notedialog_layout_ll:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_ll:Landroid/widget/RelativeLayout;

    .line 128
    sget v4, Lcom/pantech/app/vegacamera/R$id;->topPanel_l:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleLayout_l:Landroid/widget/LinearLayout;

    .line 129
    sget v4, Lcom/pantech/app/vegacamera/R$id;->noteTitle_l:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTopTitleView_l:Landroid/widget/TextView;

    .line 130
    sget v4, Lcom/pantech/app/vegacamera/R$id;->title1_l:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView1_l:Landroid/widget/TextView;

    .line 131
    sget v4, Lcom/pantech/app/vegacamera/R$id;->title2_l:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView2_l:Landroid/widget/TextView;

    .line 132
    sget v4, Lcom/pantech/app/vegacamera/R$id;->title3_l:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView3_l:Landroid/widget/TextView;

    .line 133
    sget v4, Lcom/pantech/app/vegacamera/R$id;->title4_l:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView4_l:Landroid/widget/TextView;

    .line 134
    sget v4, Lcom/pantech/app/vegacamera/R$id;->title5_l:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView5_l:Landroid/widget/TextView;

    .line 135
    sget v4, Lcom/pantech/app/vegacamera/R$id;->message1_l:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView1_l:Landroid/widget/TextView;

    .line 136
    sget v4, Lcom/pantech/app/vegacamera/R$id;->message2_l:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView2_l:Landroid/widget/TextView;

    .line 137
    sget v4, Lcom/pantech/app/vegacamera/R$id;->message3_l:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView3_l:Landroid/widget/TextView;

    .line 138
    sget v4, Lcom/pantech/app/vegacamera/R$id;->message4_l:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView4_l:Landroid/widget/TextView;

    .line 139
    sget v4, Lcom/pantech/app/vegacamera/R$id;->message5_l:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView5_l:Landroid/widget/TextView;

    .line 140
    sget v4, Lcom/pantech/app/vegacamera/R$id;->ps_l:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mPsView_l:Landroid/widget/TextView;

    .line 142
    iget v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mType:I

    packed-switch v4, :pswitch_data_1

    .line 152
    .end local v2           #v_l:Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    .line 113
    .restart local v3       #v_p:Landroid/view/View;
    :pswitch_0
    const-string v4, "RotatNoteDialog"

    const-string v5, "[RotateNoteDialog] inflateDialogLayout():mTitleLayout_p"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_pp:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_p:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleLayout_p:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 144
    .end local v3           #v_p:Landroid/view/View;
    .restart local v2       #v_l:Landroid/view/View;
    :pswitch_1
    const-string v4, "RotatNoteDialog"

    const-string v5, "[RotateNoteDialog] inflateDialogLayout():mTitleLayout_l"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_ll:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_l:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleLayout_l:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 142
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dismissDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 199
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_p:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_pp:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_l:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_ll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :cond_1
    return-void
.end method

.method public isShowDialog()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_p:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_l:Landroid/view/View;

    if-nez v0, :cond_0

    .line 478
    const/4 v0, 0x0

    .line 480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 160
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_p:Landroid/view/View;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_pp:Landroid/widget/RelativeLayout;

    if-eq p1, v0, :cond_1

    .line 163
    const-string v0, "RotatNoteDialog"

    const-string v1, "[RotateNoteDialog] onClick p"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mListener:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog$Listener;->onCancelListener()V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_l:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_ll:Landroid/widget/RelativeLayout;

    if-eq p1, v0, :cond_0

    .line 166
    const-string v0, "RotatNoteDialog"

    const-string v1, "[RotateNoteDialog] onClick l"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mListener:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog$Listener;->onCancelListener()V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public putNoteDialog()V
    .locals 14

    .prologue
    .line 212
    iget-object v12, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mCon:Landroid/content/Context;

    sget v13, Lcom/pantech/app/vegacamera/R$string;->local_voice_note_top_title:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 213
    .local v11, toptitle:Ljava/lang/String;
    iget-object v12, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mCon:Landroid/content/Context;

    sget v13, Lcom/pantech/app/vegacamera/R$string;->local_voice_note_title_capture:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, title1:Ljava/lang/String;
    iget-object v12, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mCon:Landroid/content/Context;

    sget v13, Lcom/pantech/app/vegacamera/R$string;->local_voice_note_title_record:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, title2:Ljava/lang/String;
    iget-object v12, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mCon:Landroid/content/Context;

    sget v13, Lcom/pantech/app/vegacamera/R$string;->local_voice_note_title_change:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, title3:Ljava/lang/String;
    iget-object v12, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mCon:Landroid/content/Context;

    sget v13, Lcom/pantech/app/vegacamera/R$string;->local_voice_note_title_zoom:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, title4:Ljava/lang/String;
    iget-object v12, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mCon:Landroid/content/Context;

    sget v13, Lcom/pantech/app/vegacamera/R$string;->local_voice_note_title_gallery:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, title5:Ljava/lang/String;
    iget-object v12, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mCon:Landroid/content/Context;

    sget v13, Lcom/pantech/app/vegacamera/R$string;->local_voice_note_msg_capture:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, msg1:Ljava/lang/String;
    iget-object v12, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mCon:Landroid/content/Context;

    sget v13, Lcom/pantech/app/vegacamera/R$string;->local_voice_note_msg_record:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, msg2:Ljava/lang/String;
    iget-object v12, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mCon:Landroid/content/Context;

    sget v13, Lcom/pantech/app/vegacamera/R$string;->local_voice_note_msg_change:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, msg3:Ljava/lang/String;
    iget-object v12, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mCon:Landroid/content/Context;

    sget v13, Lcom/pantech/app/vegacamera/R$string;->local_voice_note_msg_zoom:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, msg4:Ljava/lang/String;
    iget-object v12, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mCon:Landroid/content/Context;

    sget v13, Lcom/pantech/app/vegacamera/R$string;->local_voice_note_msg_gallery:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, msg5:Ljava/lang/String;
    iget-object v12, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mCon:Landroid/content/Context;

    sget v13, Lcom/pantech/app/vegacamera/R$string;->local_voice_note_ps:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, ps:Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setTopTitle_p(Ljava/lang/String;)V

    .line 226
    const/4 v12, 0x1

    invoke-virtual {p0, v12, v6}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setTitle_p(ILjava/lang/String;)V

    .line 227
    const/4 v12, 0x2

    invoke-virtual {p0, v12, v7}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setTitle_p(ILjava/lang/String;)V

    .line 228
    const/4 v12, 0x3

    invoke-virtual {p0, v12, v8}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setTitle_p(ILjava/lang/String;)V

    .line 229
    const/4 v12, 0x4

    invoke-virtual {p0, v12, v9}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setTitle_p(ILjava/lang/String;)V

    .line 230
    const/4 v12, 0x5

    invoke-virtual {p0, v12, v10}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setTitle_p(ILjava/lang/String;)V

    .line 231
    const/4 v12, 0x1

    invoke-virtual {p0, v12, v0}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setMessage_p(ILjava/lang/String;)V

    .line 232
    const/4 v12, 0x2

    invoke-virtual {p0, v12, v1}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setMessage_p(ILjava/lang/String;)V

    .line 233
    const/4 v12, 0x3

    invoke-virtual {p0, v12, v2}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setMessage_p(ILjava/lang/String;)V

    .line 234
    const/4 v12, 0x4

    invoke-virtual {p0, v12, v3}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setMessage_p(ILjava/lang/String;)V

    .line 235
    const/4 v12, 0x5

    invoke-virtual {p0, v12, v4}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setMessage_p(ILjava/lang/String;)V

    .line 237
    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setPs_p(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0, v11}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setTopTitle_l(Ljava/lang/String;)V

    .line 240
    const/4 v12, 0x1

    invoke-virtual {p0, v12, v6}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setTitle_l(ILjava/lang/String;)V

    .line 241
    const/4 v12, 0x2

    invoke-virtual {p0, v12, v7}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setTitle_l(ILjava/lang/String;)V

    .line 242
    const/4 v12, 0x3

    invoke-virtual {p0, v12, v8}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setTitle_l(ILjava/lang/String;)V

    .line 243
    const/4 v12, 0x4

    invoke-virtual {p0, v12, v9}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setTitle_l(ILjava/lang/String;)V

    .line 244
    const/4 v12, 0x5

    invoke-virtual {p0, v12, v10}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setTitle_l(ILjava/lang/String;)V

    .line 245
    const/4 v12, 0x1

    invoke-virtual {p0, v12, v0}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setMessage_l(ILjava/lang/String;)V

    .line 246
    const/4 v12, 0x2

    invoke-virtual {p0, v12, v1}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setMessage_l(ILjava/lang/String;)V

    .line 247
    const/4 v12, 0x3

    invoke-virtual {p0, v12, v2}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setMessage_l(ILjava/lang/String;)V

    .line 248
    const/4 v12, 0x4

    invoke-virtual {p0, v12, v3}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setMessage_l(ILjava/lang/String;)V

    .line 249
    const/4 v12, 0x5

    invoke-virtual {p0, v12, v4}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setMessage_l(ILjava/lang/String;)V

    .line 251
    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->setPs_l(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public setListener(Lcom/pantech/app/vegacamera/ui/RotateNoteDialog$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mListener:Lcom/pantech/app/vegacamera/ui/RotateNoteDialog$Listener;

    .line 486
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 451
    return-void
.end method

.method public setMessage_l(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "message"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 303
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 304
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView1_l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView1_l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView1_l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 310
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 311
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView2_l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView2_l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView2_l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 317
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 318
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 319
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView3_l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView3_l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView3_l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 324
    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 325
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 326
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView4_l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView4_l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 329
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView4_l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 331
    :cond_8
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 332
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 333
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView5_l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView5_l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 336
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView5_l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMessage_p(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "message"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 400
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 401
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView1_p:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView1_p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView1_p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 407
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 408
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 409
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView2_p:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView2_p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView2_p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 414
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 415
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 416
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView3_p:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView3_p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 419
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView3_p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 421
    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 422
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 423
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView4_p:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView4_p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 426
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView4_p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 428
    :cond_8
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 429
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 430
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView5_p:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView5_p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 433
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mMessageView5_p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/16 v3, 0x10e

    const/16 v2, 0xb4

    const/16 v1, 0x5a

    .line 181
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mOrientation:I

    if-ne p1, v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 184
    :cond_0
    rem-int/lit16 v0, p1, 0x168

    if-ne v0, v1, :cond_2

    .line 185
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mOrientation:I

    .line 194
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->dismissDialog()V

    .line 195
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->showDialog()V

    goto :goto_0

    .line 186
    :cond_2
    rem-int/lit16 v0, p1, 0x168

    if-ne v0, v2, :cond_3

    .line 187
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mOrientation:I

    goto :goto_1

    .line 188
    :cond_3
    rem-int/lit16 v0, p1, 0x168

    if-ne v0, v3, :cond_4

    .line 189
    iput v3, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mOrientation:I

    goto :goto_1

    .line 190
    :cond_4
    rem-int/lit16 v0, p1, 0x168

    if-nez v0, :cond_1

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mOrientation:I

    goto :goto_1
.end method

.method public setPs_l(Ljava/lang/String;)V
    .locals 2
    .parameter "ps"

    .prologue
    .line 342
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mPsView_l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mPsView_l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mPsView_l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPs_p(Ljava/lang/String;)V
    .locals 2
    .parameter "ps"

    .prologue
    .line 439
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mPsView_p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mPsView_p:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mPsView_p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle_l(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "title"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 264
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 265
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView1_l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView1_l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView1_l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 271
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 272
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView2_l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView2_l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView2_l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 278
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 279
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 280
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView3_l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView3_l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 283
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView3_l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 285
    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 286
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 287
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView4_l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView4_l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 290
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView4_l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 292
    :cond_8
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 293
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 294
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView5_l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView5_l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView5_l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle_p(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "title"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 361
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 362
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView1_p:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView1_p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView1_p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 368
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 369
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView2_p:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView2_p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView2_p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 375
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 376
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 377
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView3_p:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView3_p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 380
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView3_p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 382
    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 383
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 384
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView4_p:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView4_p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 387
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView4_p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 389
    :cond_8
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 390
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 391
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView5_p:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView5_p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 394
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTitleView5_p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTopTitle_l(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 255
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTopTitleView_l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTopTitleView_l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTopTitleView_l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTopTitle_p(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 351
    const-string v0, "RotatNoteDialog"

    const-string v1, "[RotateNoteDialog] setTopTitle_p()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTopTitleView_p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTopTitleView_p:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mTopTitleView_p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 455
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_l:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_ll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_pp:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_p:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 472
    :cond_1
    :goto_0
    return-void

    .line 463
    :cond_2
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mOrientation:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 464
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_p:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_pp:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mNoteDialogRootLayout_l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_ll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mRotateNoteDialog_l:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/RotateNoteDialog;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    goto :goto_0
.end method
