.class public Lcom/pantech/app/vegacamera/stability/StabilityTest;
.super Ljava/lang/Object;
.source "StabilityTest.java"


# static fields
.field public static final CAMCORDER_STABLITY_DELETE_FAIL:Ljava/lang/String; = "0x0124"

.field public static final CAMCORDER_STABLITY_DELETE_START:Ljava/lang/String; = "0x0121"

.field public static final CAMCORDER_STABLITY_DELETE_SUCCESS:Ljava/lang/String; = "0x0122"

.field public static final CAMCORDER_STABLITY_FRONT_OPEN_FAIL:Ljava/lang/String; = "0x1104"

.field public static final CAMCORDER_STABLITY_FRONT_OPEN_START:Ljava/lang/String; = "0x1101"

.field public static final CAMCORDER_STABLITY_FRONT_OPEN_SUCCESS:Ljava/lang/String; = "0x1102"

.field public static final CAMCORDER_STABLITY_FRONT_RECORD_FAIL:Ljava/lang/String; = "0x1114"

.field public static final CAMCORDER_STABLITY_FRONT_RECORD_SUCCESS:Ljava/lang/String; = "0x1112"

.field public static final CAMCORDER_STABLITY_REAR_OPEN_FAIL:Ljava/lang/String; = "0x0104"

.field public static final CAMCORDER_STABLITY_REAR_OPEN_START:Ljava/lang/String; = "0x0101"

.field public static final CAMCORDER_STABLITY_REAR_OPEN_SUCCESS:Ljava/lang/String; = "0x0102"

.field public static final CAMCORDER_STABLITY_REAR_RECORD_FAIL:Ljava/lang/String; = "0x0114"

.field public static final CAMCORDER_STABLITY_REAR_RECORD_SUCCESS:Ljava/lang/String; = "0x0112"

.field public static final CAMCORDER_STABLITY_RECORD_START:Ljava/lang/String; = "0x0111"

.field public static final CAMERA_STABILITY_STATE:Ljava/lang/String; = "com.pantech.ui.camerastat"

.field public static final CAMERA_STABLITY_DELETE_FAIL:Ljava/lang/String; = "0x0024"

.field public static final CAMERA_STABLITY_DELETE_START:Ljava/lang/String; = "0x0021"

.field public static final CAMERA_STABLITY_DELETE_SUCCESS:Ljava/lang/String; = "0x0022"

.field public static final CAMERA_STABLITY_FRONT_OPEN_FAIL:Ljava/lang/String; = "0x1004"

.field public static final CAMERA_STABLITY_FRONT_OPEN_START:Ljava/lang/String; = "0x1001"

.field public static final CAMERA_STABLITY_FRONT_OPEN_SUCCESS:Ljava/lang/String; = "0x1002"

.field public static final CAMERA_STABLITY_FRONT_TAKE_FAIL:Ljava/lang/String; = "0x1014"

.field public static final CAMERA_STABLITY_FRONT_TAKE_SUCCESS:Ljava/lang/String; = "0x1012"

.field public static final CAMERA_STABLITY_IDLE:Ljava/lang/String; = "0x0000"

.field public static final CAMERA_STABLITY_REAR_OPEN_FAIL:Ljava/lang/String; = "0x0004"

.field public static final CAMERA_STABLITY_REAR_OPEN_START:Ljava/lang/String; = "0x0001"

.field public static final CAMERA_STABLITY_REAR_OPEN_SUCCESS:Ljava/lang/String; = "0x0002"

.field public static final CAMERA_STABLITY_REAR_TAKE_FAIL:Ljava/lang/String; = "0x0014"

.field public static final CAMERA_STABLITY_REAR_TAKE_SUCCESS:Ljava/lang/String; = "0x0012"

.field public static final CAMERA_STABLITY_TAKE_START:Ljava/lang/String; = "0x0011"

.field private static final TAG:Ljava/lang/String; = "StabilityTest"

.field public static mStabilityStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "0x0000"

    sput-object v0, Lcom/pantech/app/vegacamera/stability/StabilityTest;->mStabilityStatus:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "StabilityTest"

    const-string v1, "[StabilityTest] StabilityTest()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public Set_StabilityState(Ljava/lang/String;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 83
    const-string v1, "StabilityTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[StabilityTest] Set_StabilityState() : state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "persist.service.stability"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, testEnable:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    :cond_0
    const-string v1, "StabilityTest"

    const-string v2, "[StabilityTest] Set_StabilityState() : return "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    sget-object v1, Lcom/pantech/app/vegacamera/stability/StabilityTest;->mStabilityStatus:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 90
    const-string v1, "StabilityTest"

    const-string v2, "[StabilityTest] Set_StabilityState() : mStabilityStatus == null "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "0x0000"

    sput-object v1, Lcom/pantech/app/vegacamera/stability/StabilityTest;->mStabilityStatus:Ljava/lang/String;

    .line 93
    :cond_3
    sget-object v1, Lcom/pantech/app/vegacamera/stability/StabilityTest;->mStabilityStatus:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    const-string v1, "StabilityTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[StabilityTest] Set_StabilityState() : set SystemProperties : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "com.pantech.ui.camerastat"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sput-object p1, Lcom/pantech/app/vegacamera/stability/StabilityTest;->mStabilityStatus:Ljava/lang/String;

    goto :goto_0
.end method
