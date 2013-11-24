.class Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;
.super Ljava/lang/Object;
.source "ComboPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/preference/ComboPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEditor"
.end annotation


# instance fields
.field private mEditorGlobal:Landroid/content/SharedPreferences$Editor;

.field private mEditorLocal:Landroid/content/SharedPreferences$Editor;

.field private mEditorVolatilePref:Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/preference/ComboPreferences;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->this$0:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    #getter for: Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->access$0(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    .line 205
    #getter for: Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->access$1(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    .line 206
    #getter for: Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mVolatileData:Lcom/pantech/app/vegacamera/preference/VolatileData;
    invoke-static {p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->access$2(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)Lcom/pantech/app/vegacamera/preference/VolatileData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/VolatileData;->Edit()Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorVolatilePref:Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    .line 207
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 219
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorVolatilePref:Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->Apply()Z

    .line 221
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 226
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 227
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorVolatilePref:Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->Clear()Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    .line 228
    return-object p0
.end method

.method public commit()Z
    .locals 5

    .prologue
    .line 210
    iget-object v3, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 211
    .local v0, result1:Z
    iget-object v3, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 212
    .local v1, result2:Z
    iget-object v3, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorVolatilePref:Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->Commit()Z

    move-result v2

    .line 213
    .local v2, result3:Z
    const-string v3, "MyEditor"

    const-string v4, "[commit()]"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->this$0:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    #calls: Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsGlobal(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->access$3(Lcom/pantech/app/vegacamera/preference/ComboPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    :goto_0
    return-object p0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->this$0:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    #calls: Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsVolatile(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->access$4(Lcom/pantech/app/vegacamera/preference/ComboPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorVolatilePref:Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->PutBoolean(Ljava/lang/String;Z)Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->this$0:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    #calls: Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsGlobal(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->access$3(Lcom/pantech/app/vegacamera/preference/ComboPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 279
    :goto_0
    return-object p0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->this$0:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    #calls: Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsVolatile(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->access$4(Lcom/pantech/app/vegacamera/preference/ComboPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorVolatilePref:Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->PutFloat(Ljava/lang/String;F)Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->this$0:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    #calls: Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsGlobal(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->access$3(Lcom/pantech/app/vegacamera/preference/ComboPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 257
    :goto_0
    return-object p0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->this$0:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    #calls: Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsVolatile(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->access$4(Lcom/pantech/app/vegacamera/preference/ComboPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorVolatilePref:Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->PutInt(Ljava/lang/String;I)Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->this$0:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    #calls: Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsGlobal(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->access$3(Lcom/pantech/app/vegacamera/preference/ComboPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 268
    :goto_0
    return-object p0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->this$0:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    #calls: Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsVolatile(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->access$4(Lcom/pantech/app/vegacamera/preference/ComboPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorVolatilePref:Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->PutLong(Ljava/lang/String;J)Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->this$0:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    #calls: Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsGlobal(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->access$3(Lcom/pantech/app/vegacamera/preference/ComboPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    :goto_0
    return-object p0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->this$0:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    #calls: Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsVolatile(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->access$4(Lcom/pantech/app/vegacamera/preference/ComboPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorVolatilePref:Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->PutString(Ljava/lang/String;Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 295
    .local p2, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;->mEditorVolatilePref:Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->Remove(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    .line 235
    return-object p0
.end method
