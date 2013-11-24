.class public Lcom/pantech/app/vegacamera/menu/item/SingleButton;
.super Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
.source "SingleButton.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/menu/popup/TextList$Listener;
.implements Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleButton"


# instance fields
.field private mListener:Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;

.field private mOverrideValue:Ljava/lang/String;

.field private mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ListPreference;I)V
    .locals 1
    .parameter "context"
    .parameter "pref"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p3}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    .line 25
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mOverrideValue:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mListener:Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;

    .line 55
    iput-object p2, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    .line 56
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_SetTitleInitResource()V

    .line 57
    return-void
.end method

.method private _SetTitleImageResource()V
    .locals 8

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, iconIds:[I
    const/4 v2, 0x0

    .line 125
    .local v2, iconSetIds:[I
    const/4 v4, 0x0

    .line 127
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    if-nez v5, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v5, v5, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    if-eqz v5, :cond_4

    .line 132
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetItemIconIds()[I

    move-result-object v0

    .line 133
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetItemSetIconIds()[I

    move-result-object v2

    .line 142
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_id_status"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 143
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v4

    .line 148
    :goto_2
    if-eqz v0, :cond_a

    .line 150
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mOverrideValue:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 151
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 161
    .local v3, index:I
    :cond_3
    const/4 v1, -0x1

    .line 162
    .local v1, iconIdx:I
    if-eqz v2, :cond_9

    .line 163
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_IsCurrentedItem()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 164
    aget v1, v2, v3

    .line 171
    :goto_3
    invoke-virtual {p0, v1, v4}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_UpdateMenuItemInfo(ILjava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v1           #iconIdx:I
    .end local v3           #index:I
    :cond_4
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v5, v5, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;

    if-eqz v5, :cond_5

    .line 135
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->GetItemIconIds()[I

    move-result-object v0

    .line 136
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->GetItemSetIconIds()[I

    move-result-object v2

    .line 137
    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v5, v5, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    if-eqz v5, :cond_2

    .line 138
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->GetItemIconIds()[I

    move-result-object v0

    .line 139
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->GetItemSetIconIds()[I

    move-result-object v2

    goto :goto_1

    .line 145
    :cond_6
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 153
    :cond_7
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 154
    .restart local v3       #index:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 156
    const-string v5, "SingleButton"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[MenuController] Fail to find override value = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ListPreference;->Print()V

    goto/16 :goto_0

    .line 166
    .restart local v1       #iconIdx:I
    :cond_8
    aget v1, v0, v3

    .line 168
    goto :goto_3

    .line 169
    :cond_9
    aget v1, v0, v3

    goto :goto_3

    .line 173
    .end local v1           #iconIdx:I
    .end local v3           #index:I
    :cond_a
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v5, v5, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    if-eqz v5, :cond_0

    .line 174
    const/4 v1, -0x1

    .line 175
    .restart local v1       #iconIdx:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_IsCurrentedItem()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 176
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitleSetIconId()I

    move-result v1

    .line 180
    :goto_4
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_UpdateMenuItemInfo(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :cond_b
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitleIconId()I

    move-result v1

    goto :goto_4
.end method

.method private _SetTitleInitResource()V
    .locals 8

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, iconIds:[I
    const/4 v2, 0x0

    .line 62
    .local v2, iconSetIds:[I
    const/4 v4, 0x0

    .line 64
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    if-nez v5, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v5, v5, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    if-eqz v5, :cond_4

    .line 69
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetItemIconIds()[I

    move-result-object v0

    .line 70
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetItemSetIconIds()[I

    move-result-object v2

    .line 79
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_id_status"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 80
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v4

    .line 85
    :goto_2
    if-eqz v0, :cond_a

    .line 87
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mOverrideValue:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 88
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 98
    .local v3, index:I
    :cond_3
    const/4 v1, -0x1

    .line 99
    .local v1, iconIdx:I
    if-eqz v2, :cond_9

    .line 100
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_IsCurrentedItem()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 101
    aget v1, v2, v3

    .line 108
    :goto_3
    invoke-virtual {p0, v1, v4}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_UpdateMenuItemInfo(ILjava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v1           #iconIdx:I
    .end local v3           #index:I
    :cond_4
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v5, v5, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;

    if-eqz v5, :cond_5

    .line 72
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->GetItemIconIds()[I

    move-result-object v0

    .line 73
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->GetItemSetIconIds()[I

    move-result-object v2

    .line 74
    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v5, v5, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    if-eqz v5, :cond_2

    .line 75
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->GetItemIconIds()[I

    move-result-object v0

    .line 76
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->GetItemSetIconIds()[I

    move-result-object v2

    goto :goto_1

    .line 82
    :cond_6
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 90
    :cond_7
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 91
    .restart local v3       #index:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 93
    const-string v5, "SingleButton"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[MenuController] Fail to find override value = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ListPreference;->Print()V

    goto/16 :goto_0

    .line 103
    .restart local v1       #iconIdx:I
    :cond_8
    aget v1, v0, v3

    .line 105
    goto :goto_3

    .line 106
    :cond_9
    aget v1, v0, v3

    goto :goto_3

    .line 110
    .end local v1           #iconIdx:I
    .end local v3           #index:I
    :cond_a
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v5, v5, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    if-eqz v5, :cond_0

    .line 111
    const/4 v1, -0x1

    .line 112
    .restart local v1       #iconIdx:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_IsCurrentedItem()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 113
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitleSetIconId()I

    move-result v1

    .line 117
    :goto_4
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_UpdateMenuItemInfo(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_b
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitleIconId()I

    move-result v1

    goto :goto_4
.end method

.method private _SetToggleIndex(Lcom/pantech/app/vegacamera/preference/ListPreference;)V
    .locals 5
    .parameter "pref"

    .prologue
    .line 249
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 250
    .local v1, entries:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 251
    .local v2, index:I
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 252
    .local v0, currIndex:I
    array-length v3, v1

    .line 254
    .local v3, indexLength:I
    add-int/lit8 v2, v0, 0x1

    .line 256
    if-ne v2, v3, :cond_0

    .line 257
    const/4 v2, 0x0

    .line 260
    :cond_0
    invoke-virtual {p1, v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValueIndex(I)V

    .line 261
    return-void
.end method

.method private _ToggleOnClick()V
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "SingleButton"

    const-string v1, "[MenuController] _ToggleOnClick()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->IsOverridden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mListener:Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mListener:Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;->OnCloseEtcMenuItemDepth()V

    .line 270
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_SetToggleIndex(Lcom/pantech/app/vegacamera/preference/ListPreference;)V

    .line 271
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->ReloadPreference()V

    .line 273
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mListener:Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    return-void
.end method


# virtual methods
.method public CloseSubPopup()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public GetSubPopupWindow()Landroid/view/View;
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->GetSubPopupWindow()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public IsOverridden()Z
    .locals 2

    .prologue
    .line 193
    const-string v0, "SingleButton"

    const-string v1, "[MenuController] IsOverridden()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 239
    const-string v0, "SingleButton"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] OnChangedMenuItemValue() key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->ReloadPreference()V

    .line 242
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->CloseMenuItemDelayed()V

    .line 243
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mListener:Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mListener:Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;

    invoke-interface {v0, p1, p2}, Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    return-void
.end method

.method public OnClick()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v0, v0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_ToggleOnClick()V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-super {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->OnClick()V

    goto :goto_0
.end method

.method public varargs OverrideItems([Ljava/lang/String;)V
    .locals 5
    .parameter "keyvalues"

    .prologue
    .line 199
    const-string v3, "SingleButton"

    const-string v4, "[MenuController] OverrideItems()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mOverrideValue:Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 210
    :goto_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->ReloadPreference()V

    .line 211
    return-void

    .line 202
    :cond_0
    aget-object v1, p1, v0

    .line 203
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v2, p1, v3

    .line 204
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 205
    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mOverrideValue:Ljava/lang/String;

    .line 206
    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 201
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public ReloadPreference()V
    .locals 2

    .prologue
    .line 187
    const-string v0, "SingleButton"

    const-string v1, "[MenuController] ReloadPreference()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-super {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->ReloadPreference()V

    .line 189
    return-void
.end method

.method public SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 36
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mListener:Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;

    .line 38
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mListener:Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;

    if-nez v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    instance-of v0, v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    check-cast v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    instance-of v0, v0, Lcom/pantech/app/vegacamera/menu/popup/TextList;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    check-cast v0, Lcom/pantech/app/vegacamera/menu/popup/TextList;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/TextList$Listener;)V

    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    instance-of v0, v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    if-eqz v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    check-cast v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;)V

    goto :goto_0

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    instance-of v0, v0, Lcom/pantech/app/vegacamera/menu/popup/TextList;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    check-cast v0, Lcom/pantech/app/vegacamera/menu/popup/TextList;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/TextList$Listener;)V

    goto :goto_0
.end method

.method protected _ClosedMenuItem()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method protected _InitMainItemPopup()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 215
    const-string v4, "SingleButton"

    const-string v5, "[MenuController] _InitMainItemPopup()"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 217
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->getRootView()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_MENU_CONTROL_LAYOUT:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 219
    .local v3, root:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v4, v4, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    if-eqz v4, :cond_0

    .line 220
    sget v4, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_button_1st_list:I

    invoke-virtual {v2, v4, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    .line 221
    .local v1, buttonList:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;
    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;)V

    .line 222
    const-string v4, "first_depth"

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetDepthStyle(Ljava/lang/String;)V

    .line 223
    const-string v4, "type_all"

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetViewType(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_GetMenuItemLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_GetMenuItemTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_GetMenuItemRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_GetMenuItemBottom()I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetItemRect(IIII)V

    .line 225
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v4, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->Initialize(Lcom/pantech/app/vegacamera/preference/ButtonListPreference;)V

    .line 226
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 227
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 235
    .end local v1           #buttonList:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;
    :goto_0
    return-void

    .line 229
    :cond_0
    sget v4, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_text_list:I

    invoke-virtual {v2, v4, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/popup/TextList;

    .line 230
    .local v0, basic:Lcom/pantech/app/vegacamera/menu/popup/TextList;
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/TextList$Listener;)V

    .line 231
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v4, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->Initialize(Lcom/pantech/app/vegacamera/preference/TextListPreference;)V

    .line 232
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 233
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected _UpdateGroupTitle()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->_SetTitleImageResource()V

    .line 302
    return-void
.end method
