.class Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$UtilContentObserver;
.super Landroid/database/ContentObserver;
.source "LocalVoiceRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UtilContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$UtilContentObserver;->this$0:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 142
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$UtilContentObserver;->this$0:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    #calls: Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_StartQuery()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->access$2(Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;)V

    .line 147
    return-void
.end method
