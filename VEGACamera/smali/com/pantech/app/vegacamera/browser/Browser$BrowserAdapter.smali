.class Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;
.super Landroid/widget/BaseAdapter;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/browser/Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowserAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/browser/Browser;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/browser/Browser;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/browser/Browser;Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;-><init>(Lcom/pantech/app/vegacamera/browser/Browser;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    #getter for: Lcom/pantech/app/vegacamera/browser/Browser;->directoryEntries:Ljava/util/List;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/browser/Browser;->access$1(Lcom/pantech/app/vegacamera/browser/Browser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    #getter for: Lcom/pantech/app/vegacamera/browser/Browser;->directoryEntries:Ljava/util/List;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/browser/Browser;->access$1(Lcom/pantech/app/vegacamera/browser/Browser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 251
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 256
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    #getter for: Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/browser/Browser;->access$0(Lcom/pantech/app/vegacamera/browser/Browser;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[Browser] BrowserAdapter :: getView()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    if-nez p2, :cond_0

    .line 258
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/browser/Browser;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$layout;->browser_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 260
    :cond_0
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/browser/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 261
    sget v5, Lcom/pantech/app/vegacamera/R$dimen;->listItem_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v3, v8, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 260
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    sget v3, Lcom/pantech/app/vegacamera/R$id;->text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 264
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, clickedFile:Ljava/io/File;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    #getter for: Lcom/pantech/app/vegacamera/browser/Browser;->BrowserTheme:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/browser/Browser;->access$2(Lcom/pantech/app/vegacamera/browser/Browser;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 276
    :goto_0
    new-instance v0, Ljava/io/File;

    .end local v0           #clickedFile:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    #getter for: Lcom/pantech/app/vegacamera/browser/Browser;->currentDirectory:Ljava/io/File;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/browser/Browser;->access$3(Lcom/pantech/app/vegacamera/browser/Browser;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    #getter for: Lcom/pantech/app/vegacamera/browser/Browser;->directoryEntries:Ljava/util/List;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/browser/Browser;->access$1(Lcom/pantech/app/vegacamera/browser/Browser;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v0       #clickedFile:Ljava/io/File;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    #getter for: Lcom/pantech/app/vegacamera/browser/Browser;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/browser/Browser;->access$0(Lcom/pantech/app/vegacamera/browser/Browser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Browser] clickedFile = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    #getter for: Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/browser/Browser;->access$4(Lcom/pantech/app/vegacamera/browser/Browser;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    #getter for: Lcom/pantech/app/vegacamera/browser/Browser;->storedDirectory:Ljava/lang/String;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/browser/Browser;->access$4(Lcom/pantech/app/vegacamera/browser/Browser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, p3

    .line 282
    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, p1, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 290
    :goto_1
    sget v3, Lcom/pantech/app/vegacamera/R$id;->checkbox:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 291
    .local v1, radioBtn:Landroid/widget/RadioButton;
    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 292
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 293
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 299
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 312
    .end local p3
    :cond_1
    :goto_2
    return-object p2

    .line 269
    .end local v1           #radioBtn:Landroid/widget/RadioButton;
    .restart local p3
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/browser/Browser$BrowserAdapter;->this$0:Lcom/pantech/app/vegacamera/browser/Browser;

    #getter for: Lcom/pantech/app/vegacamera/browser/Browser;->BrowserTheme:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/browser/Browser;->access$2(Lcom/pantech/app/vegacamera/browser/Browser;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 270
    sget v3, Lcom/pantech/app/vegacamera/R$id;->checkbox:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    sget v4, Lcom/pantech/app/vegacamera/R$drawable;->radiobtn_browser_white:I

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    goto/16 :goto_0

    .line 272
    :cond_3
    sget v3, Lcom/pantech/app/vegacamera/R$id;->text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    sget v3, Lcom/pantech/app/vegacamera/R$id;->checkbox:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    sget v4, Lcom/pantech/app/vegacamera/R$drawable;->radiobtn_browser:I

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    goto/16 :goto_0

    :cond_4
    move-object v3, p3

    .line 284
    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, p1, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1

    :cond_5
    move-object v3, p3

    .line 287
    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, p1, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1

    .line 304
    .restart local v1       #radioBtn:Landroid/widget/RadioButton;
    :cond_6
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 305
    check-cast p3, Landroid/widget/ListView;

    .end local p3
    invoke-virtual {p3, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 306
    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 308
    :cond_7
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2
.end method
