.class Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$1;
.super Ljava/lang/Object;
.source "LocalVoiceRecognizer.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/RotateNoteDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$1;->this$0:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelListener()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "LocalVoiceRecognizer"

    const-string v1, "mNoteDialogListener onCancelListener"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$1;->this$0:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    #calls: Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_RemoveNoteDialog()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->access$0(Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;)V

    .line 81
    return-void
.end method
