.class public interface abstract Lcom/android/internal/hardware/ISkyLightPattern;
.super Ljava/lang/Object;
.source "ISkyLightPattern.java"


# static fields
.field public static final APPID_ALARM:I = 0x7

.field public static final APPID_CAMERA:I = 0x5

.field public static final APPID_INCOMING:I = 0xa

.field public static final APPID_LOWBATT:I = 0x9

.field public static final APPID_MISSED:I = 0x6

.field public static final APPID_MOTION:I = 0x2

.field public static final APPID_NOTIFICATION:I = 0x3

.field public static final APPID_RECORDING:I = 0x4

.field public static final APPID_SMS_RECV:I = 0x8

.field public static final APPID_VOICE:I = 0x1

.field public static final BLACK:B = 0x7t

.field public static final BLUE:B = 0x5t

.field public static final CYAN:B = 0x4t

.field public static final GREEN:B = 0x3t

.field public static final INFINITE_LOOP:I = -0x1

.field public static final MAGENTA:B = 0x6t

.field public static final RED:B = 0x1t

.field public static final WHITE:B = 0x0t

.field public static final YELLOW:B = 0x2t


# virtual methods
.method public abstract getAppId()I
.end method

.method public abstract getCount()I
.end method

.method public abstract getData(I[B)I
.end method
