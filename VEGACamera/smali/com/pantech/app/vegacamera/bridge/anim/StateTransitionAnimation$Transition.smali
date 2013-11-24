.class public final enum Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;
.super Ljava/lang/Enum;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

.field public static final enum Incoming:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

.field public static final enum None:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

.field public static final enum Outgoing:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

.field public static final enum PhotoIncoming:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->None:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    const-string v1, "Outgoing"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    const-string v1, "Incoming"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    const-string v1, "PhotoIncoming"

    invoke-direct {v0, v1, v5}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    sget-object v1, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->None:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->ENUM$VALUES:[Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;->ENUM$VALUES:[Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    array-length v1, v0

    new-array v2, v1, [Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation$Transition;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
