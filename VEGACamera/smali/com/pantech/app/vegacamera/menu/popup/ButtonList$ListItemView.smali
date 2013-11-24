.class Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;
.super Ljava/lang/Object;
.source "ButtonList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/menu/popup/ButtonList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemView"
.end annotation


# instance fields
.field private _1stIconIv:Landroid/view/View;

.field private _1stLayout:Landroid/view/View;

.field private _1stTitleTv:Landroid/view/View;

.field private _2ndIconIv:Landroid/view/View;

.field private _2ndLayout:Landroid/view/View;

.field private _2ndTitleTv:Landroid/view/View;

.field private _ViewStyle:Ljava/lang/String;

.field private _ViewWidth:I

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

.field private viewer:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/menu/popup/ButtonList;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "layoutID"

    .prologue
    const/4 v1, 0x0

    .line 432
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->inflater:Landroid/view/LayoutInflater;

    .line 419
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->viewer:Landroid/view/View;

    .line 420
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_ViewStyle:Ljava/lang/String;

    .line 422
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stLayout:Landroid/view/View;

    .line 423
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stIconIv:Landroid/view/View;

    .line 424
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stTitleTv:Landroid/view/View;

    .line 426
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndLayout:Landroid/view/View;

    .line 427
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndIconIv:Landroid/view/View;

    .line 428
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndTitleTv:Landroid/view/View;

    .line 430
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_ViewWidth:I

    .line 433
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->inflater:Landroid/view/LayoutInflater;

    .line 434
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->viewer:Landroid/view/View;

    .line 436
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->access$0()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stLayout:Landroid/view/View;

    .line 437
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->access$1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stIconIv:Landroid/view/View;

    .line 438
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->access$2()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stTitleTv:Landroid/view/View;

    .line 440
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->access$3()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndLayout:Landroid/view/View;

    .line 441
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->access$4()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndIconIv:Landroid/view/View;

    .line 442
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->access$5()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndTitleTv:Landroid/view/View;

    .line 443
    return-void
.end method

.method private _Add1stItem(ILjava/lang/String;)V
    .locals 2
    .parameter "icon"
    .parameter "title"

    .prologue
    .line 484
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stIconIv:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 487
    :cond_0
    if-eqz p2, :cond_1

    .line 488
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stTitleTv:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stTitleTv:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 491
    :cond_1
    return-void
.end method

.method private _Add2ndItem(ILjava/lang/String;)V
    .locals 1
    .parameter "icon"
    .parameter "title"

    .prologue
    .line 507
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndIconIv:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 513
    :cond_0
    return-void
.end method

.method private _Free()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 528
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->inflater:Landroid/view/LayoutInflater;

    .line 529
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->viewer:Landroid/view/View;

    .line 530
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_ViewStyle:Ljava/lang/String;

    .line 531
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stLayout:Landroid/view/View;

    .line 532
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stIconIv:Landroid/view/View;

    .line 533
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stTitleTv:Landroid/view/View;

    .line 534
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndLayout:Landroid/view/View;

    .line 535
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndIconIv:Landroid/view/View;

    .line 536
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndTitleTv:Landroid/view/View;

    .line 537
    return-void
.end method

.method private _GetViewStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_ViewStyle:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Item1stIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stIconIv:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public Item1stLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stLayout:Landroid/view/View;

    return-object v0
.end method

.method public Item1stTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stTitleTv:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public Item2ndIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndIconIv:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public Item2ndLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndLayout:Landroid/view/View;

    return-object v0
.end method

.method public Item2ndTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndTitleTv:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public ItemView()Landroid/view/View;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->viewer:Landroid/view/View;

    return-object v0
.end method

.method public SetView(ILjava/lang/String;I)V
    .locals 5
    .parameter "icon"
    .parameter "title"
    .parameter "viewId"

    .prologue
    const/16 v4, 0x11

    const/4 v3, -0x1

    .line 446
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_GetViewStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "first_depth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 447
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stLayout:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 448
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stLayout:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 449
    if-eq p3, v3, :cond_0

    .line 450
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_1stLayout:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setId(I)V

    .line 453
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_Add1stItem(ILjava/lang/String;)V

    .line 464
    :cond_1
    :goto_0
    return-void

    .line 454
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_GetViewStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "second_depth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_ViewWidth:I

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 456
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndLayout:Landroid/view/View;

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndLayout:Landroid/view/View;

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 458
    if-eq p3, v3, :cond_3

    .line 459
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_2ndLayout:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setId(I)V

    .line 462
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_Add2ndItem(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public SetViewStyle(Ljava/lang/String;)V
    .locals 0
    .parameter "style"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_ViewStyle:Ljava/lang/String;

    .line 521
    return-void
.end method

.method public SetViewWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 516
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_ViewWidth:I

    .line 517
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 542
    :try_start_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->_Free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 548
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 546
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 547
    throw v1
.end method
