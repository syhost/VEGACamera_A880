.class public Lcom/android/internal/hardware/OemLed;
.super Ljava/lang/Object;
.source "OemLed.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OemLed"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "oem_led"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static native native_set_oem_led(B)V
.end method


# virtual methods
.method public set_oem_led(B)V
    .locals 0
    .parameter "led"

    .prologue
    .line 31
    invoke-static {p1}, Lcom/android/internal/hardware/OemLed;->native_set_oem_led(B)V

    .line 32
    return-void
.end method
