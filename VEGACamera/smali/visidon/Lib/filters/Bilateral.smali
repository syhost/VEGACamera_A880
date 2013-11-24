.class public Lvisidon/Lib/filters/Bilateral;
.super Lvisidon/Lib/utils/Filter;
.source "Bilateral.java"


# static fields
.field private static fragmentShader:Ljava/lang/String;

.field private static shaderStrings:[[Ljava/lang/String;

.field private static vertexShader:Ljava/lang/String;


# instance fields
.field private defaultHeight:F

.field private defaultWidth:F

.field private filterStrength:I

.field private height:F

.field params:[[F

.field private pixelSize:[F

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const-string v0, "precision lowp float;uniform sampler2D sOriginal;uniform sampler2D sLookUp;varying vec2 vTextureCoord[9];varying vec2 vAbsTextureCoord;vec3 filter(vec3 color, vec2 texturePos) {vec3 sample;float feat2;vec2 lookUpCoord;float lookUpValue;float feat1 = dot(color, vec3(0.2269, 0.4562, 0.3078));float val2 = dot(color, vec3(0.5346, -0.2618, -0.0060));float val3 = dot(color, vec3(0.1307, 0.2787, -0.5095));float value = 0.0;float value2 = 0.0;vec2 texCoord;for(int x = 0; x < 9; x++){texCoord = vTextureCoord[x];sample = texture2D(sOriginal, texCoord).rgb;feat2 = dot(sample, vec3(0.2269, 0.4562, 0.3078));lookUpCoord.y = feat1;lookUpCoord.x = feat2;vec4 lookUpSample = texture2D(sLookUp, lookUpCoord);float lookUpValue = lookUpSample.g;value += feat2 * lookUpValue;value2 += lookUpValue;}if(value2 == 0.0)return color;value = value/value2;color.r = value;color.g = val2;color.b = val3;float color1new = dot(color, vec3(0.6403, 1.5088, 0.3689));float color2new = dot(color, vec3(1.2875, -0.7388, 0.7867));float color3new = dot(color, vec3(0.8687, -0.0171,  -1.4379));color.r = color1new;color.g = color2new;color.b = color3new;return color;}void main() {vec3 color = texture2D(sOriginal, vTextureCoord[4]).rgb;color = filter(color, vTextureCoord[4]);gl_FragColor = vec4(color, 1.0);}"

    .line 53
    sput-object v0, Lvisidon/Lib/filters/Bilateral;->fragmentShader:Ljava/lang/String;

    .line 128
    const-string v0, "attribute vec2 aPosition;varying vec2 vTextureCoord[9];varying vec2 vAbsTextureCoord;uniform vec2 uPixelSize;uniform float uAspectRatio;void main() {gl_Position = vec4(aPosition, 0.0, 1.0);vTextureCoord[4] = (aPosition + 1.0) * 0.5;vAbsTextureCoord.x = vTextureCoord[4].x;vAbsTextureCoord.y = vTextureCoord[4].y * uAspectRatio;vTextureCoord[0] = vTextureCoord[4] - uPixelSize;vTextureCoord[1].x = vTextureCoord[4].x;vTextureCoord[1].y = vTextureCoord[0].y;vTextureCoord[2].x = vTextureCoord[4].x + uPixelSize.x;vTextureCoord[2].y = vTextureCoord[0].y;vTextureCoord[3].x = vTextureCoord[0].x;vTextureCoord[3].y = vTextureCoord[4].y;vTextureCoord[5].x = vTextureCoord[2].x;vTextureCoord[5].y = vTextureCoord[4].y;vTextureCoord[6].x = vTextureCoord[3].x;vTextureCoord[6].y = vTextureCoord[4].y + uPixelSize.y;vTextureCoord[7].x = vTextureCoord[4].x;vTextureCoord[7].y = vTextureCoord[6].y;vTextureCoord[8].x = vTextureCoord[5].x;vTextureCoord[8].y = vTextureCoord[6].y;}"

    .line 127
    sput-object v0, Lvisidon/Lib/filters/Bilateral;->vertexShader:Ljava/lang/String;

    .line 168
    new-array v0, v4, [[Ljava/lang/String;

    .line 169
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lvisidon/Lib/filters/Bilateral;->fragmentShader:Ljava/lang/String;

    aput-object v2, v1, v3

    sget-object v2, Lvisidon/Lib/filters/Bilateral;->vertexShader:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    .line 168
    sput-object v0, Lvisidon/Lib/filters/Bilateral;->shaderStrings:[[Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v3, 0x100

    const/16 v9, 0x2a

    const/16 v8, 0x29

    const/4 v4, 0x2

    .line 173
    sget-object v0, Lvisidon/Lib/filters/Bilateral;->shaderStrings:[[Ljava/lang/String;

    invoke-direct {p0, p1, v9, v0}, Lvisidon/Lib/utils/Filter;-><init>(Landroid/content/Context;I[[Ljava/lang/String;)V

    .line 24
    const/high16 v0, 0x4448

    iput v0, p0, Lvisidon/Lib/filters/Bilateral;->defaultWidth:F

    .line 25
    const/high16 v0, 0x43f0

    iput v0, p0, Lvisidon/Lib/filters/Bilateral;->defaultHeight:F

    .line 185
    const/16 v0, 0x65

    new-array v0, v0, [[F

    const/4 v1, 0x0

    .line 186
    new-array v2, v4, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 187
    new-array v2, v4, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    .line 188
    new-array v1, v4, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    .line 189
    new-array v2, v4, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 190
    new-array v2, v4, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 191
    new-array v2, v4, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 192
    new-array v2, v4, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 193
    new-array v2, v4, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 194
    new-array v2, v4, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 195
    new-array v2, v4, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 196
    new-array v2, v4, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 197
    new-array v2, v4, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 198
    new-array v2, v4, [F

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 199
    new-array v2, v4, [F

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 200
    new-array v2, v4, [F

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 201
    new-array v2, v4, [F

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 202
    new-array v2, v4, [F

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 203
    new-array v2, v4, [F

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 204
    new-array v2, v4, [F

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 205
    new-array v2, v4, [F

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 206
    new-array v2, v4, [F

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 207
    new-array v2, v4, [F

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 208
    new-array v2, v4, [F

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 209
    new-array v2, v4, [F

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 210
    new-array v2, v4, [F

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 211
    new-array v2, v4, [F

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 212
    new-array v2, v4, [F

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 213
    new-array v2, v4, [F

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 214
    new-array v2, v4, [F

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 215
    new-array v2, v4, [F

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 216
    new-array v2, v4, [F

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 217
    new-array v2, v4, [F

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 218
    new-array v2, v4, [F

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 219
    new-array v2, v4, [F

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 220
    new-array v2, v4, [F

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 221
    new-array v2, v4, [F

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 222
    new-array v2, v4, [F

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 223
    new-array v2, v4, [F

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 224
    new-array v2, v4, [F

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 225
    new-array v2, v4, [F

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 226
    new-array v2, v4, [F

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    .line 227
    new-array v1, v4, [F

    fill-array-data v1, :array_29

    aput-object v1, v0, v8

    .line 228
    new-array v1, v4, [F

    fill-array-data v1, :array_2a

    aput-object v1, v0, v9

    const/16 v1, 0x2b

    .line 229
    new-array v2, v4, [F

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 230
    new-array v2, v4, [F

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 231
    new-array v2, v4, [F

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 232
    new-array v2, v4, [F

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 233
    new-array v2, v4, [F

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 234
    new-array v2, v4, [F

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 235
    new-array v2, v4, [F

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 236
    new-array v2, v4, [F

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 237
    new-array v2, v4, [F

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 238
    new-array v2, v4, [F

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 239
    new-array v2, v4, [F

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 240
    new-array v2, v4, [F

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 241
    new-array v2, v4, [F

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 242
    new-array v2, v4, [F

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 243
    new-array v2, v4, [F

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 244
    new-array v2, v4, [F

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 245
    new-array v2, v4, [F

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 246
    new-array v2, v4, [F

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 247
    new-array v2, v4, [F

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 248
    new-array v2, v4, [F

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 249
    new-array v2, v4, [F

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 250
    new-array v2, v4, [F

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 251
    new-array v2, v4, [F

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 252
    new-array v2, v4, [F

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 253
    new-array v2, v4, [F

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 254
    new-array v2, v4, [F

    fill-array-data v2, :array_44

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 255
    new-array v2, v4, [F

    fill-array-data v2, :array_45

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 256
    new-array v2, v4, [F

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 257
    new-array v2, v4, [F

    fill-array-data v2, :array_47

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 258
    new-array v2, v4, [F

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 259
    new-array v2, v4, [F

    fill-array-data v2, :array_49

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 260
    new-array v2, v4, [F

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 261
    new-array v2, v4, [F

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 262
    new-array v2, v4, [F

    fill-array-data v2, :array_4c

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 263
    new-array v2, v4, [F

    fill-array-data v2, :array_4d

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 264
    new-array v2, v4, [F

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 265
    new-array v2, v4, [F

    fill-array-data v2, :array_4f

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 266
    new-array v2, v4, [F

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 267
    new-array v2, v4, [F

    fill-array-data v2, :array_51

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 268
    new-array v2, v4, [F

    fill-array-data v2, :array_52

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 269
    new-array v2, v4, [F

    fill-array-data v2, :array_53

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 270
    new-array v2, v4, [F

    fill-array-data v2, :array_54

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 271
    new-array v2, v4, [F

    fill-array-data v2, :array_55

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 272
    new-array v2, v4, [F

    fill-array-data v2, :array_56

    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 273
    new-array v2, v4, [F

    fill-array-data v2, :array_57

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 274
    new-array v2, v4, [F

    fill-array-data v2, :array_58

    aput-object v2, v0, v1

    const/16 v1, 0x59

    .line 275
    new-array v2, v4, [F

    fill-array-data v2, :array_59

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 276
    new-array v2, v4, [F

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 277
    new-array v2, v4, [F

    fill-array-data v2, :array_5b

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 278
    new-array v2, v4, [F

    fill-array-data v2, :array_5c

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 279
    new-array v2, v4, [F

    fill-array-data v2, :array_5d

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 280
    new-array v2, v4, [F

    fill-array-data v2, :array_5e

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 281
    new-array v2, v4, [F

    fill-array-data v2, :array_5f

    aput-object v2, v0, v1

    const/16 v1, 0x60

    .line 282
    new-array v2, v4, [F

    fill-array-data v2, :array_60

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 283
    new-array v2, v4, [F

    fill-array-data v2, :array_61

    aput-object v2, v0, v1

    const/16 v1, 0x62

    .line 284
    new-array v2, v4, [F

    fill-array-data v2, :array_62

    aput-object v2, v0, v1

    const/16 v1, 0x63

    .line 285
    new-array v2, v4, [F

    fill-array-data v2, :array_63

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 286
    new-array v2, v4, [F

    fill-array-data v2, :array_64

    aput-object v2, v0, v1

    iput-object v0, p0, Lvisidon/Lib/filters/Bilateral;->params:[[F

    .line 175
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-lt v6, v8, :cond_0

    .line 183
    return-void

    .line 177
    :cond_0
    invoke-direct {p0, v6}, Lvisidon/Lib/filters/Bilateral;->computeLookUpTable(I)Ljava/nio/CharBuffer;

    move-result-object v5

    .line 179
    .local v5, lookUpTableBuffer:Ljava/nio/CharBuffer;
    const/16 v1, 0x190a

    const/16 v2, 0x1401

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lvisidon/Lib/filters/Bilateral;->loadTexture(IIIILjava/nio/Buffer;)I

    move-result v7

    .line 180
    .local v7, lookUpTextureId:I
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v7, v0}, Lvisidon/Lib/filters/Bilateral;->setInputTextureId(II)V

    .line 175
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 186
    :array_0
    .array-data 0x4
        0x47t 0x3t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 187
    :array_1
    .array-data 0x4
        0xaet 0x47t 0x81t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 188
    :array_2
    .array-data 0x4
        0x5ct 0x8ft 0x82t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 189
    :array_3
    .array-data 0x4
        0xat 0xd7t 0x83t 0x3ft
        0xcdt 0xcct 0x8ct 0x3ft
    .end array-data

    .line 190
    :array_4
    .array-data 0x4
        0xb8t 0x1et 0x85t 0x3ft
        0x9at 0x99t 0x99t 0x3ft
    .end array-data

    .line 191
    :array_5
    .array-data 0x4
        0x66t 0x66t 0x86t 0x3ft
        0x0t 0x0t 0xa0t 0x3ft
    .end array-data

    .line 192
    :array_6
    .array-data 0x4
        0x14t 0xaet 0x87t 0x3ft
        0x66t 0x66t 0xa6t 0x3ft
    .end array-data

    .line 193
    :array_7
    .array-data 0x4
        0xc3t 0xf5t 0x88t 0x3ft
        0xcdt 0xcct 0xact 0x3ft
    .end array-data

    .line 194
    :array_8
    .array-data 0x4
        0x71t 0x3dt 0x8at 0x3ft
        0x33t 0x33t 0xb3t 0x3ft
    .end array-data

    .line 195
    :array_9
    .array-data 0x4
        0x1ft 0x85t 0x8bt 0x3ft
        0x9at 0x99t 0xb9t 0x3ft
    .end array-data

    .line 196
    :array_a
    .array-data 0x4
        0xcdt 0xcct 0x8ct 0x3ft
        0x0t 0x0t 0xc0t 0x3ft
    .end array-data

    .line 197
    :array_b
    .array-data 0x4
        0x7bt 0x14t 0x8et 0x3ft
        0x66t 0x66t 0xc6t 0x3ft
    .end array-data

    .line 198
    :array_c
    .array-data 0x4
        0x29t 0x5ct 0x8ft 0x3ft
        0xcdt 0xcct 0xcct 0x3ft
    .end array-data

    .line 199
    :array_d
    .array-data 0x4
        0xd7t 0xa3t 0x90t 0x3ft
        0x33t 0x33t 0xd3t 0x3ft
    .end array-data

    .line 200
    :array_e
    .array-data 0x4
        0x85t 0xebt 0x91t 0x3ft
        0x9at 0x99t 0xd9t 0x3ft
    .end array-data

    .line 201
    :array_f
    .array-data 0x4
        0x33t 0x33t 0x93t 0x3ft
        0x0t 0x0t 0xe0t 0x3ft
    .end array-data

    .line 202
    :array_10
    .array-data 0x4
        0xe1t 0x7at 0x94t 0x3ft
        0x66t 0x66t 0xe6t 0x3ft
    .end array-data

    .line 203
    :array_11
    .array-data 0x4
        0x8ft 0xc2t 0x95t 0x3ft
        0xcdt 0xcct 0xect 0x3ft
    .end array-data

    .line 204
    :array_12
    .array-data 0x4
        0x3dt 0xat 0x97t 0x3ft
        0x33t 0x33t 0xf3t 0x3ft
    .end array-data

    .line 205
    :array_13
    .array-data 0x4
        0xect 0x51t 0x98t 0x3ft
        0x9at 0x99t 0xf9t 0x3ft
    .end array-data

    .line 206
    :array_14
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    .line 207
    :array_15
    .array-data 0x4
        0x48t 0xe1t 0x9at 0x3ft
        0x33t 0x33t 0x3t 0x40t
    .end array-data

    .line 208
    :array_16
    .array-data 0x4
        0xf6t 0x28t 0x9ct 0x3ft
        0x66t 0x66t 0x6t 0x40t
    .end array-data

    .line 209
    :array_17
    .array-data 0x4
        0xa4t 0x70t 0x9dt 0x3ft
        0x9at 0x99t 0x9t 0x40t
    .end array-data

    .line 210
    :array_18
    .array-data 0x4
        0x52t 0xb8t 0x9et 0x3ft
        0xcdt 0xcct 0xct 0x40t
    .end array-data

    .line 211
    :array_19
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x3ft
        0x0t 0x0t 0x10t 0x40t
    .end array-data

    .line 212
    :array_1a
    .array-data 0x4
        0xaet 0x47t 0xa1t 0x3ft
        0x33t 0x33t 0x13t 0x40t
    .end array-data

    .line 213
    :array_1b
    .array-data 0x4
        0x5ct 0x8ft 0xa2t 0x3ft
        0x66t 0x66t 0x16t 0x40t
    .end array-data

    .line 214
    :array_1c
    .array-data 0x4
        0xat 0xd7t 0xa3t 0x3ft
        0x9at 0x99t 0x19t 0x40t
    .end array-data

    .line 215
    :array_1d
    .array-data 0x4
        0xb8t 0x1et 0xa5t 0x3ft
        0xcdt 0xcct 0x1ct 0x40t
    .end array-data

    .line 216
    :array_1e
    .array-data 0x4
        0x66t 0x66t 0xa6t 0x3ft
        0x0t 0x0t 0x20t 0x40t
    .end array-data

    .line 217
    :array_1f
    .array-data 0x4
        0x14t 0xaet 0xa7t 0x3ft
        0x33t 0x33t 0x23t 0x40t
    .end array-data

    .line 218
    :array_20
    .array-data 0x4
        0xc3t 0xf5t 0xa8t 0x3ft
        0x66t 0x66t 0x26t 0x40t
    .end array-data

    .line 219
    :array_21
    .array-data 0x4
        0x71t 0x3dt 0xaat 0x3ft
        0x9at 0x99t 0x29t 0x40t
    .end array-data

    .line 220
    :array_22
    .array-data 0x4
        0x1ft 0x85t 0xabt 0x3ft
        0xcdt 0xcct 0x2ct 0x40t
    .end array-data

    .line 221
    :array_23
    .array-data 0x4
        0xcdt 0xcct 0xact 0x3ft
        0x0t 0x0t 0x30t 0x40t
    .end array-data

    .line 222
    :array_24
    .array-data 0x4
        0x7bt 0x14t 0xaet 0x3ft
        0x33t 0x33t 0x33t 0x40t
    .end array-data

    .line 223
    :array_25
    .array-data 0x4
        0x29t 0x5ct 0xaft 0x3ft
        0x66t 0x66t 0x36t 0x40t
    .end array-data

    .line 224
    :array_26
    .array-data 0x4
        0xd7t 0xa3t 0xb0t 0x3ft
        0x9at 0x99t 0x39t 0x40t
    .end array-data

    .line 225
    :array_27
    .array-data 0x4
        0x85t 0xebt 0xb1t 0x3ft
        0xcdt 0xcct 0x3ct 0x40t
    .end array-data

    .line 226
    :array_28
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0x40t 0x40t
    .end array-data

    .line 227
    :array_29
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0x46t 0x40t
    .end array-data

    .line 228
    :array_2a
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0xcdt 0xcct 0x4ct 0x40t
    .end array-data

    .line 229
    :array_2b
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x33t 0x33t 0x53t 0x40t
    .end array-data

    .line 230
    :array_2c
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x9at 0x99t 0x59t 0x40t
    .end array-data

    .line 231
    :array_2d
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0x60t 0x40t
    .end array-data

    .line 232
    :array_2e
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0x66t 0x40t
    .end array-data

    .line 233
    :array_2f
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0xcdt 0xcct 0x6ct 0x40t
    .end array-data

    .line 234
    :array_30
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x33t 0x33t 0x73t 0x40t
    .end array-data

    .line 235
    :array_31
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x9at 0x99t 0x79t 0x40t
    .end array-data

    .line 236
    :array_32
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0x80t 0x40t
    .end array-data

    .line 237
    :array_33
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x33t 0x33t 0x83t 0x40t
    .end array-data

    .line 238
    :array_34
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0x86t 0x40t
    .end array-data

    .line 239
    :array_35
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x9at 0x99t 0x89t 0x40t
    .end array-data

    .line 240
    :array_36
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0xcdt 0xcct 0x8ct 0x40t
    .end array-data

    .line 241
    :array_37
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0x90t 0x40t
    .end array-data

    .line 242
    :array_38
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x33t 0x33t 0x93t 0x40t
    .end array-data

    .line 243
    :array_39
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0x96t 0x40t
    .end array-data

    .line 244
    :array_3a
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x9at 0x99t 0x99t 0x40t
    .end array-data

    .line 245
    :array_3b
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0xcdt 0xcct 0x9ct 0x40t
    .end array-data

    .line 246
    :array_3c
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0xa0t 0x40t
    .end array-data

    .line 247
    :array_3d
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x33t 0x33t 0xa3t 0x40t
    .end array-data

    .line 248
    :array_3e
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0xa6t 0x40t
    .end array-data

    .line 249
    :array_3f
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x9at 0x99t 0xa9t 0x40t
    .end array-data

    .line 250
    :array_40
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0xcdt 0xcct 0xact 0x40t
    .end array-data

    .line 251
    :array_41
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0xb0t 0x40t
    .end array-data

    .line 252
    :array_42
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x33t 0x33t 0xb3t 0x40t
    .end array-data

    .line 253
    :array_43
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0xb6t 0x40t
    .end array-data

    .line 254
    :array_44
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x9at 0x99t 0xb9t 0x40t
    .end array-data

    .line 255
    :array_45
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0xcdt 0xcct 0xbct 0x40t
    .end array-data

    .line 256
    :array_46
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0xc0t 0x40t
    .end array-data

    .line 257
    :array_47
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x33t 0x33t 0xc3t 0x40t
    .end array-data

    .line 258
    :array_48
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0xc6t 0x40t
    .end array-data

    .line 259
    :array_49
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x9at 0x99t 0xc9t 0x40t
    .end array-data

    .line 260
    :array_4a
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0xcdt 0xcct 0xcct 0x40t
    .end array-data

    .line 261
    :array_4b
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0xd0t 0x40t
    .end array-data

    .line 262
    :array_4c
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x33t 0x33t 0xd3t 0x40t
    .end array-data

    .line 263
    :array_4d
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0xd6t 0x40t
    .end array-data

    .line 264
    :array_4e
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x9at 0x99t 0xd9t 0x40t
    .end array-data

    .line 265
    :array_4f
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0xcdt 0xcct 0xdct 0x40t
    .end array-data

    .line 266
    :array_50
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0xe0t 0x40t
    .end array-data

    .line 267
    :array_51
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x33t 0x33t 0xe3t 0x40t
    .end array-data

    .line 268
    :array_52
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0xe6t 0x40t
    .end array-data

    .line 269
    :array_53
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x9at 0x99t 0xe9t 0x40t
    .end array-data

    .line 270
    :array_54
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0xcdt 0xcct 0xect 0x40t
    .end array-data

    .line 271
    :array_55
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0xf0t 0x40t
    .end array-data

    .line 272
    :array_56
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x33t 0x33t 0xf3t 0x40t
    .end array-data

    .line 273
    :array_57
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0xf6t 0x40t
    .end array-data

    .line 274
    :array_58
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x9at 0x99t 0xf9t 0x40t
    .end array-data

    .line 275
    :array_59
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0xcdt 0xcct 0xfct 0x40t
    .end array-data

    .line 276
    :array_5a
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0x0t 0x41t
    .end array-data

    .line 277
    :array_5b
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x9at 0x99t 0x1t 0x41t
    .end array-data

    .line 278
    :array_5c
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x33t 0x33t 0x3t 0x41t
    .end array-data

    .line 279
    :array_5d
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0xcdt 0xcct 0x4t 0x41t
    .end array-data

    .line 280
    :array_5e
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0x6t 0x41t
    .end array-data

    .line 281
    :array_5f
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0x8t 0x41t
    .end array-data

    .line 282
    :array_60
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x9at 0x99t 0x9t 0x41t
    .end array-data

    .line 283
    :array_61
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x33t 0x33t 0xbt 0x41t
    .end array-data

    .line 284
    :array_62
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0xcdt 0xcct 0xct 0x41t
    .end array-data

    .line 285
    :array_63
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0xet 0x41t
    .end array-data

    .line 286
    :array_64
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0x10t 0x41t
    .end array-data
.end method

.method private computeLookUpTable(I)Ljava/nio/CharBuffer;
    .locals 17
    .parameter "strengthInd"

    .prologue
    .line 329
    move-object/from16 v0, p0

    iget-object v12, v0, Lvisidon/Lib/filters/Bilateral;->params:[[F

    aget-object v12, v12, p1

    const/4 v13, 0x0

    aget v12, v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    double-to-float v3, v12

    .line 331
    .local v3, filterStrength:F
    const/high16 v12, 0x1

    invoke-static {v12}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v5

    .line 333
    .local v5, lookUpTableBuffer:Ljava/nio/CharBuffer;
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v4

    .line 335
    .local v4, lookUpTable:[C
    const/4 v11, 0x0

    .local v11, y:I
    :goto_0
    const/16 v12, 0x100

    if-lt v11, v12, :cond_0

    .line 352
    return-object v5

    .line 337
    :cond_0
    const/4 v10, 0x0

    .local v10, x:I
    :goto_1
    const/16 v12, 0x100

    if-lt v10, v12, :cond_1

    .line 335
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 339
    :cond_1
    add-int/lit8 v12, v11, 0x1

    int-to-double v12, v12

    add-int/lit8 v14, v10, 0x1

    int-to-double v14, v14

    div-double v6, v12, v14

    .line 340
    .local v6, value:D
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 341
    .local v1, et:D
    float-to-double v12, v3

    sub-double/2addr v12, v1

    float-to-double v14, v3

    div-double v8, v12, v14

    .line 343
    .local v8, we:D
    const-wide/16 v12, 0x0

    cmpg-double v12, v8, v12

    if-gez v12, :cond_2

    .line 344
    const-wide/16 v8, 0x0

    .line 346
    :cond_2
    mul-int/lit16 v12, v11, 0x100

    add-int/2addr v12, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    div-double v13, v8, v13

    const-wide/high16 v15, 0x4031

    mul-double/2addr v13, v15

    double-to-int v13, v13

    int-to-char v13, v13

    aput-char v13, v4, v12

    .line 337
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getFilterStrength()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lvisidon/Lib/filters/Bilateral;->filterStrength:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lvisidon/Lib/filters/Bilateral;->height:F

    return v0
.end method

.method public getPixelSize()[F
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lvisidon/Lib/filters/Bilateral;->pixelSize:[F

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lvisidon/Lib/filters/Bilateral;->width:F

    return v0
.end method

.method public render()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 292
    invoke-virtual {p0}, Lvisidon/Lib/filters/Bilateral;->useFrameBuffer()V

    .line 294
    invoke-virtual {p0, v7}, Lvisidon/Lib/filters/Bilateral;->getShader(I)Lvisidon/Lib/utils/Shader;

    move-result-object v2

    .line 296
    .local v2, shader:Lvisidon/Lib/utils/Shader;
    invoke-virtual {v2}, Lvisidon/Lib/utils/Shader;->useProgram()V

    .line 298
    new-array v3, v9, [F

    .line 301
    .local v3, size:[F
    iget-object v5, p0, Lvisidon/Lib/filters/Bilateral;->pixelSize:[F

    aget v5, v5, v7

    iget v6, p0, Lvisidon/Lib/filters/Bilateral;->defaultWidth:F

    mul-float v0, v5, v6

    .line 302
    .local v0, scale:F
    iget-object v5, p0, Lvisidon/Lib/filters/Bilateral;->pixelSize:[F

    aget v5, v5, v8

    iget v6, p0, Lvisidon/Lib/filters/Bilateral;->defaultHeight:F

    mul-float v1, v5, v6

    .line 303
    .local v1, scale2:F
    iget-object v5, p0, Lvisidon/Lib/filters/Bilateral;->params:[[F

    iget v6, p0, Lvisidon/Lib/filters/Bilateral;->filterStrength:I

    aget-object v5, v5, v6

    aget v4, v5, v8

    .line 305
    .local v4, windowSize:F
    cmpl-float v5, v1, v0

    if-lez v5, :cond_0

    .line 306
    move v0, v1

    .line 308
    :cond_0
    const/high16 v5, 0x3f80

    div-float/2addr v5, v0

    mul-float/2addr v4, v5

    .line 310
    iget-object v5, p0, Lvisidon/Lib/filters/Bilateral;->pixelSize:[F

    aget v5, v5, v7

    mul-float/2addr v5, v4

    aput v5, v3, v7

    .line 311
    iget-object v5, p0, Lvisidon/Lib/filters/Bilateral;->pixelSize:[F

    aget v5, v5, v8

    mul-float/2addr v5, v4

    aput v5, v3, v8

    .line 313
    const-string v5, "uPixelSize"

    invoke-virtual {v2, v3, v5}, Lvisidon/Lib/utils/Shader;->setUniform([FLjava/lang/String;)V

    .line 315
    iget v5, p0, Lvisidon/Lib/filters/Bilateral;->height:F

    iget v6, p0, Lvisidon/Lib/filters/Bilateral;->width:F

    div-float/2addr v5, v6

    const-string v6, "uAspectRatio"

    invoke-virtual {v2, v5, v6}, Lvisidon/Lib/utils/Shader;->setUniform(FLjava/lang/String;)V

    .line 317
    invoke-virtual {p0, v7}, Lvisidon/Lib/filters/Bilateral;->getInputTextureId(I)I

    move-result v5

    const-string v6, "sOriginal"

    invoke-virtual {v2, v7, v5, v6}, Lvisidon/Lib/utils/Shader;->useTexture(IILjava/lang/String;)V

    .line 318
    const/16 v5, 0x28

    iget v6, p0, Lvisidon/Lib/filters/Bilateral;->filterStrength:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lvisidon/Lib/filters/Bilateral;->getInputTextureId(I)I

    move-result v5

    const-string v6, "sLookUp"

    invoke-virtual {v2, v9, v5, v6}, Lvisidon/Lib/utils/Shader;->useTexture(IILjava/lang/String;)V

    .line 320
    invoke-virtual {v2}, Lvisidon/Lib/utils/Shader;->draw()V

    .line 322
    return-void
.end method

.method public setFilterStrength(I)V
    .locals 0
    .parameter "filterStrength"

    .prologue
    .line 369
    iput p1, p0, Lvisidon/Lib/filters/Bilateral;->filterStrength:I

    .line 370
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .parameter "height"

    .prologue
    .line 390
    iput p1, p0, Lvisidon/Lib/filters/Bilateral;->height:F

    .line 391
    return-void
.end method

.method public setPixelSize([F)V
    .locals 0
    .parameter "pixelSize"

    .prologue
    .line 361
    iput-object p1, p0, Lvisidon/Lib/filters/Bilateral;->pixelSize:[F

    .line 362
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .parameter "width"

    .prologue
    .line 378
    iput p1, p0, Lvisidon/Lib/filters/Bilateral;->width:F

    .line 379
    return-void
.end method
