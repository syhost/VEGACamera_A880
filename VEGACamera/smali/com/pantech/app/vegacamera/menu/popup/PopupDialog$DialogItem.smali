.class public Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;
.super Ljava/lang/Object;
.source "PopupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogItem"
.end annotation


# instance fields
.field private ItemTitle:Ljava/lang/String;

.field private ItemValue:Ljava/lang/String;

.field private isChecked:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "title"
    .parameter "itemValue"
    .parameter "checked"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;->this$0:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;->ItemTitle:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;->ItemValue:Ljava/lang/String;

    .line 147
    iput-boolean p4, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;->isChecked:Z

    .line 148
    return-void
.end method


# virtual methods
.method public getItemTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;->ItemTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getItemValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;->ItemValue:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;->isChecked:Z

    return v0
.end method
