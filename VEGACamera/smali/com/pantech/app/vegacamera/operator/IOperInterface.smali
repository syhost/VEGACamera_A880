.class public interface abstract Lcom/pantech/app/vegacamera/operator/IOperInterface;
.super Ljava/lang/Object;
.source "IOperInterface.java"


# static fields
.field public static final AUTO_FOCUS:I = 0x1f

.field public static final BESTSHOT_TAKE_PICTURE:I = 0x7

.field public static final BURST_CANCEL_TAKE_PICTURE:I = 0x3

.field public static final BURST_TAKE_PICTURE:I = 0x2

.field public static final CANCEL_AUTO_FOCUS:I = 0x20

.field public static final DIVISION_TAKE_PICTURE:I = 0x6

.field public static final EFFECTS_OPER:I = 0x19

.field public static final EFFECTS_RECORDING_OPER:I = 0x1a

.field public static final EFFECTS_RECORD_STOP_OPER:I = 0x1b

.field public static final FORCE_PREVIEW_START_BEFORE_SET:I = 0x18

.field public static final LONGPRESSD_CANCEL_TAKE_PICTURE:I = 0x4

.field public static final LONGPRESSD_TAKE_PICTURE:I = 0x5

.field public static final NORMAL_TAKE_PICTURE:I = 0x1

.field public static final PANORAMA_START_CAPTURE:I = 0x15

.field public static final PANORAMA_STOP_CAPTURE:I = 0x16

.field public static final SET_CHAGNE_COLOR_POINT:I = 0x28

.field public static final SET_CHAGNE_ZOOM:I = 0x25

.field public static final SET_CHAGNE_ZOOM_IN:I = 0x27

.field public static final SET_CHAGNE_ZOOM_OUT:I = 0x26

.field public static final SET_SMOOTH_ZOOM_START:I = 0x23

.field public static final SET_SMOOTH_ZOOM_STOP:I = 0x24

.field public static final START_FACE_DETECTION:I = 0x21

.field public static final START_PREVIEW:I = 0x9

.field public static final STOP_FACE_DETECTION:I = 0x22

.field public static final STOP_PREVIEW:I = 0xa

.field public static final VIDEO_OPER:I = 0xb

.field public static final VIDEO_RECORDING_OPER:I = 0xc

.field public static final VIDEO_RECORD_CANCEL_OPER:I = 0xe

.field public static final VIDEO_RECORD_CAPTURE:I = 0xf

.field public static final VIDEO_RECORD_STOP_OPER:I = 0xd


# virtual methods
.method public abstract SetFocusOperHandler(I)V
.end method

.method public abstract SetOperHandler(I)V
.end method

.method public abstract SetOperHandler(II)V
.end method

.method public abstract SetOperHandler(IZ)V
.end method

.method public abstract SetParameter(J)V
.end method

.method public abstract SetParameter(Ljava/lang/String;I)V
.end method

.method public abstract SetParameter(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract SetUpdateParameter(J)V
.end method
