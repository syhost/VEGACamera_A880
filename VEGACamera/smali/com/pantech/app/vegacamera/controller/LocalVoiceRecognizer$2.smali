.class Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$2;
.super Ljava/lang/Object;
.source "LocalVoiceRecognizer.java"

# interfaces
.implements Landroid/view/View$OnVoiceListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_SetOnLocalVoiceList()V
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$2;->this$0:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceList(Landroid/view/View;Ljava/util/ArrayList;)Z
    .locals 5
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, voiceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    if-eqz p2, :cond_0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v4

    .line 199
    :cond_1
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVoiceList() view : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " List: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer$2;->this$0:Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->_ActVoiceAsWords(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;->access$3(Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;Ljava/lang/String;)V

    goto :goto_0
.end method
