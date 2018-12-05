.class public final Lcom/vpon/adon/android/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final CA:[C

.field private static final IA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 75
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    .line 76
    const/16 v2, 0x100

    new-array v2, v2, [I

    sput-object v2, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    .line 78
    sget-object v2, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v2, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    array-length v1, v2

    .local v1, "iS":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 81
    sget-object v2, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    const/16 v3, 0x3d

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 73
    return-void

    .line 80
    :cond_0
    sget-object v2, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    sget-object v3, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    aget-char v3, v3, v0

    aput v0, v2, v3

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 14
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 465
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    move v10, v12

    .line 466
    .local v10, "sLen":I
    :goto_0
    if-nez v10, :cond_1

    .line 467
    new-array v12, v13, [B

    .line 508
    :goto_1
    return-object v12

    .end local v10    # "sLen":I
    :cond_0
    move v10, v13

    .line 465
    goto :goto_0

    .line 471
    .restart local v10    # "sLen":I
    :cond_1
    const/4 v11, 0x0

    .line 472
    .local v11, "sepCnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v10, :cond_2

    .line 477
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_4

    .line 478
    const/4 v12, 0x0

    goto :goto_1

    .line 473
    :cond_2
    sget-object v12, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    if-gez v12, :cond_3

    .line 474
    add-int/lit8 v11, v11, 0x1

    .line 472
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 481
    :cond_4
    const/4 v7, 0x0

    .line 482
    .local v7, "pad":I
    move v4, v10

    :cond_5
    :goto_3
    const/4 v12, 0x1

    if-le v4, v12, :cond_6

    sget-object v12, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    if-lez v12, :cond_7

    .line 486
    :cond_6
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 488
    .local v6, "len":I
    new-array v3, v6, [B

    .line 490
    .local v3, "dArr":[B
    const/4 v8, 0x0

    .local v8, "s":I
    const/4 v1, 0x0

    .local v1, "d":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    :goto_4
    if-lt v2, v6, :cond_8

    move-object v12, v3

    .line 508
    goto :goto_1

    .line 483
    .end local v2    # "d":I
    .end local v3    # "dArr":[B
    .end local v6    # "len":I
    .end local v8    # "s":I
    :cond_7
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_5

    .line 484
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 492
    .restart local v2    # "d":I
    .restart local v3    # "dArr":[B
    .restart local v6    # "len":I
    .restart local v8    # "s":I
    :cond_8
    const/4 v4, 0x0

    .line 493
    const/4 v5, 0x0

    .local v5, "j":I
    move v9, v8

    .end local v8    # "s":I
    .local v9, "s":I
    :goto_5
    const/4 v12, 0x4

    if-lt v5, v12, :cond_a

    .line 501
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 502
    if-ge v1, v6, :cond_9

    .line 503
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 504
    if-ge v2, v6, :cond_c

    .line 505
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_9
    move v2, v1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    move v8, v9

    .end local v9    # "s":I
    .restart local v8    # "s":I
    goto :goto_4

    .line 494
    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_a
    sget-object v12, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "s":I
    .restart local v8    # "s":I
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v0, v12, v13

    .line 495
    .local v0, "c":I
    if-ltz v0, :cond_b

    .line 496
    const/16 v12, 0x12

    mul-int/lit8 v13, v5, 0x6

    sub-int/2addr v12, v13

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 493
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "s":I
    .restart local v9    # "s":I
    goto :goto_5

    .line 498
    .end local v9    # "s":I
    .restart local v8    # "s":I
    :cond_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .end local v0    # "c":I
    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_c
    move v8, v9

    .end local v9    # "s":I
    .restart local v8    # "s":I
    goto :goto_4
.end method

.method public static final decode([B)[B
    .locals 14
    .param p0, "sArr"    # [B

    .prologue
    .line 326
    array-length v10, p0

    .line 330
    .local v10, "sLen":I
    const/4 v11, 0x0

    .line 331
    .local v11, "sepCnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v10, :cond_0

    .line 336
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_2

    .line 337
    const/4 v12, 0x0

    .line 368
    :goto_1
    return-object v12

    .line 332
    :cond_0
    sget-object v12, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    aget-byte v13, p0, v4

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    if-gez v12, :cond_1

    .line 333
    add-int/lit8 v11, v11, 0x1

    .line 331
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 339
    :cond_2
    const/4 v7, 0x0

    .line 340
    .local v7, "pad":I
    move v4, v10

    :cond_3
    :goto_2
    const/4 v12, 0x1

    if-le v4, v12, :cond_4

    sget-object v12, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    aget-byte v13, p0, v4

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    if-lez v12, :cond_5

    .line 344
    :cond_4
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 346
    .local v6, "len":I
    new-array v3, v6, [B

    .line 348
    .local v3, "dArr":[B
    const/4 v8, 0x0

    .local v8, "s":I
    const/4 v1, 0x0

    .local v1, "d":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    :goto_3
    if-lt v2, v6, :cond_6

    move-object v12, v3

    .line 368
    goto :goto_1

    .line 341
    .end local v2    # "d":I
    .end local v3    # "dArr":[B
    .end local v6    # "len":I
    .end local v8    # "s":I
    :cond_5
    aget-byte v12, p0, v4

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_3

    .line 342
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 350
    .restart local v2    # "d":I
    .restart local v3    # "dArr":[B
    .restart local v6    # "len":I
    .restart local v8    # "s":I
    :cond_6
    const/4 v4, 0x0

    .line 351
    const/4 v5, 0x0

    .local v5, "j":I
    move v9, v8

    .end local v8    # "s":I
    .local v9, "s":I
    :goto_4
    const/4 v12, 0x4

    if-lt v5, v12, :cond_8

    .line 360
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 361
    if-ge v1, v6, :cond_7

    .line 362
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 363
    if-ge v2, v6, :cond_a

    .line 364
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_7
    move v2, v1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    move v8, v9

    .end local v9    # "s":I
    .restart local v8    # "s":I
    goto :goto_3

    .line 352
    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_8
    sget-object v12, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "s":I
    .restart local v8    # "s":I
    aget-byte v13, p0, v9

    and-int/lit16 v13, v13, 0xff

    aget v0, v12, v13

    .line 353
    .local v0, "c":I
    if-ltz v0, :cond_9

    .line 354
    const/16 v12, 0x12

    mul-int/lit8 v13, v5, 0x6

    sub-int/2addr v12, v13

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 351
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "s":I
    .restart local v9    # "s":I
    goto :goto_4

    .line 356
    .end local v9    # "s":I
    .restart local v8    # "s":I
    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .end local v0    # "c":I
    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_a
    move v8, v9

    .end local v9    # "s":I
    .restart local v8    # "s":I
    goto :goto_3
.end method

.method public static final decode([C)[B
    .locals 14
    .param p0, "sArr"    # [C

    .prologue
    const/4 v13, 0x0

    .line 150
    if-eqz p0, :cond_0

    array-length v12, p0

    move v10, v12

    .line 151
    .local v10, "sLen":I
    :goto_0
    if-nez v10, :cond_1

    .line 152
    new-array v12, v13, [B

    .line 192
    :goto_1
    return-object v12

    .end local v10    # "sLen":I
    :cond_0
    move v10, v13

    .line 150
    goto :goto_0

    .line 156
    .restart local v10    # "sLen":I
    :cond_1
    const/4 v11, 0x0

    .line 157
    .local v11, "sepCnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v10, :cond_2

    .line 162
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_4

    .line 163
    const/4 v12, 0x0

    goto :goto_1

    .line 158
    :cond_2
    sget-object v12, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    aget-char v13, p0, v4

    aget v12, v12, v13

    if-gez v12, :cond_3

    .line 159
    add-int/lit8 v11, v11, 0x1

    .line 157
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 165
    :cond_4
    const/4 v7, 0x0

    .line 166
    .local v7, "pad":I
    move v4, v10

    :cond_5
    :goto_3
    const/4 v12, 0x1

    if-le v4, v12, :cond_6

    sget-object v12, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    aget-char v13, p0, v4

    aget v12, v12, v13

    if-lez v12, :cond_7

    .line 170
    :cond_6
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 172
    .local v6, "len":I
    new-array v3, v6, [B

    .line 174
    .local v3, "dArr":[B
    const/4 v8, 0x0

    .local v8, "s":I
    const/4 v1, 0x0

    .local v1, "d":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    :goto_4
    if-lt v2, v6, :cond_8

    move-object v12, v3

    .line 192
    goto :goto_1

    .line 167
    .end local v2    # "d":I
    .end local v3    # "dArr":[B
    .end local v6    # "len":I
    .end local v8    # "s":I
    :cond_7
    aget-char v12, p0, v4

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_5

    .line 168
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 176
    .restart local v2    # "d":I
    .restart local v3    # "dArr":[B
    .restart local v6    # "len":I
    .restart local v8    # "s":I
    :cond_8
    const/4 v4, 0x0

    .line 177
    const/4 v5, 0x0

    .local v5, "j":I
    move v9, v8

    .end local v8    # "s":I
    .local v9, "s":I
    :goto_5
    const/4 v12, 0x4

    if-lt v5, v12, :cond_a

    .line 185
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 186
    if-ge v1, v6, :cond_9

    .line 187
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 188
    if-ge v2, v6, :cond_c

    .line 189
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_9
    move v2, v1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    move v8, v9

    .end local v9    # "s":I
    .restart local v8    # "s":I
    goto :goto_4

    .line 178
    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_a
    sget-object v12, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "s":I
    .restart local v8    # "s":I
    aget-char v13, p0, v9

    aget v0, v12, v13

    .line 179
    .local v0, "c":I
    if-ltz v0, :cond_b

    .line 180
    const/16 v12, 0x12

    mul-int/lit8 v13, v5, 0x6

    sub-int/2addr v12, v13

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 177
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "s":I
    .restart local v9    # "s":I
    goto :goto_5

    .line 182
    .end local v9    # "s":I
    .restart local v8    # "s":I
    :cond_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .end local v0    # "c":I
    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_c
    move v8, v9

    .end local v9    # "s":I
    .restart local v8    # "s":I
    goto :goto_4
.end method

.method public static final decodeFast(Ljava/lang/String;)[B
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 524
    .local v3, "sLen":I
    if-nez v3, :cond_0

    .line 525
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 573
    .end local v3    # "sLen":I
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 527
    .restart local v3    # "sLen":I
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "sIx":I
    const/4 v0, 0x1

    sub-int v0, v3, v0

    .local v0, "eIx":I
    move v2, v1

    .line 530
    .end local v1    # "sIx":I
    .local v2, "sIx":I
    :goto_1
    if-ge v2, v0, :cond_d

    sget-object v1, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    if-ltz v1, :cond_2

    move v4, v0

    .line 534
    .end local v0    # "eIx":I
    .local v4, "eIx":I
    :goto_2
    if-lez v4, :cond_1

    sget-object v0, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    if-ltz v0, :cond_3

    .line 538
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    sub-int v0, v4, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_4

    const/4 v0, 0x2

    move v8, v0

    .line 539
    .local v8, "pad":I
    :goto_3
    sub-int v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    .line 540
    .local v0, "cCnt":I
    const/16 v1, 0x4c

    if-le v3, v1, :cond_7

    const/16 v1, 0x4c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_6

    .end local v3    # "sLen":I
    div-int/lit8 v1, v0, 0x4e

    :goto_4
    shl-int/lit8 v1, v1, 0x1

    move v10, v1

    .line 542
    .local v10, "sepCnt":I
    :goto_5
    sub-int/2addr v0, v10

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v8

    .line 543
    .local v7, "len":I
    new-array v3, v7, [B

    .line 546
    .end local v0    # "cCnt":I
    .local v3, "dArr":[B
    const/4 v1, 0x0

    .line 547
    .local v1, "d":I
    const/4 v0, 0x0

    .local v0, "cc":I
    div-int/lit8 v5, v7, 0x3

    mul-int/lit8 v5, v5, 0x3

    .local v5, "eLen":I
    move v6, v2

    .end local v2    # "sIx":I
    .local v6, "sIx":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    :goto_6
    if-lt v2, v5, :cond_8

    .line 563
    if-ge v2, v7, :cond_b

    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v5, v1

    .end local v1    # "j":I
    .local v5, "j":I
    move v9, v6

    .end local v6    # "sIx":I
    .local v9, "sIx":I
    move v1, v0

    .end local v0    # "i":I
    .end local v10    # "sepCnt":I
    .local v1, "i":I
    :goto_7
    sub-int v0, v4, v8

    if-le v9, v0, :cond_9

    .line 569
    const/16 p0, 0x10

    .local p0, "r":I
    move v0, v2

    .end local v2    # "d":I
    .local v0, "d":I
    move v2, p0

    .end local v4    # "eIx":I
    .end local p0    # "r":I
    .local v2, "r":I
    :goto_8
    if-lt v0, v7, :cond_a

    move p0, v0

    .end local v0    # "d":I
    .local p0, "d":I
    move v0, v9

    .end local v1    # "i":I
    .end local v2    # "r":I
    .end local v5    # "j":I
    .end local v9    # "sIx":I
    .local v0, "sIx":I
    :goto_9
    move-object p0, v3

    .line 573
    goto :goto_0

    .line 531
    .end local v7    # "len":I
    .end local v8    # "pad":I
    .local v0, "eIx":I
    .local v2, "sIx":I
    .local v3, "sLen":I
    .local p0, "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "sIx":I
    .local v1, "sIx":I
    move v2, v1

    .end local v1    # "sIx":I
    .restart local v2    # "sIx":I
    goto :goto_1

    .line 535
    .end local v0    # "eIx":I
    .restart local v4    # "eIx":I
    :cond_3
    add-int/lit8 v0, v4, -0x1

    .end local v4    # "eIx":I
    .restart local v0    # "eIx":I
    move v4, v0

    .end local v0    # "eIx":I
    .restart local v4    # "eIx":I
    goto :goto_2

    .line 538
    :cond_4
    const/4 v0, 0x1

    move v8, v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    move v8, v0

    goto :goto_3

    .line 540
    .end local v3    # "sLen":I
    .local v0, "cCnt":I
    .restart local v8    # "pad":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .restart local v3    # "sLen":I
    :cond_7
    const/4 v1, 0x0

    move v10, v1

    goto :goto_5

    .line 549
    .local v0, "cc":I
    .local v2, "d":I
    .local v3, "dArr":[B
    .local v5, "eLen":I
    .restart local v6    # "sIx":I
    .restart local v7    # "len":I
    .restart local v10    # "sepCnt":I
    :cond_8
    sget-object v9, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v1, v6, 0x1

    .end local v6    # "sIx":I
    .restart local v1    # "sIx":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v6, v9, v6

    shl-int/lit8 v9, v6, 0x12

    sget-object v11, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "sIx":I
    .restart local v6    # "sIx":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v1, v11, v1

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v9, v1

    sget-object v11, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v1, v6, 0x1

    .end local v6    # "sIx":I
    .restart local v1    # "sIx":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v6, v11, v6

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v9

    sget-object v11, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v9, v1, 0x1

    .end local v1    # "sIx":I
    .restart local v9    # "sIx":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v1, v11, v1

    or-int/2addr v6, v1

    .line 552
    .local v6, "i":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .local v1, "d":I
    shr-int/lit8 v11, v6, 0x10

    int-to-byte v11, v11

    aput-byte v11, v3, v2

    .line 553
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    shr-int/lit8 v11, v6, 0x8

    int-to-byte v11, v11

    aput-byte v11, v3, v1

    .line 554
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 557
    .end local v6    # "i":I
    if-lez v10, :cond_c

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x13

    if-ne v0, v2, :cond_c

    .line 558
    add-int/lit8 v2, v9, 0x2

    .line 559
    .end local v9    # "sIx":I
    .local v2, "sIx":I
    const/4 v0, 0x0

    move v6, v2

    .end local v2    # "sIx":I
    .local v6, "sIx":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    goto :goto_6

    .line 567
    .end local v0    # "cc":I
    .end local v6    # "sIx":I
    .end local v10    # "sepCnt":I
    .local v1, "i":I
    .local v5, "j":I
    .restart local v9    # "sIx":I
    :cond_9
    sget-object v0, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v6, v9, 0x1

    .end local v9    # "sIx":I
    .restart local v6    # "sIx":I
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aget v0, v0, v9

    const/16 v9, 0x12

    mul-int/lit8 v10, v5, 0x6

    sub-int/2addr v9, v10

    shl-int/2addr v0, v9

    or-int/2addr v0, v1

    .line 566
    .end local v1    # "i":I
    .local v0, "i":I
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "j":I
    .local v1, "j":I
    move v5, v1

    .end local v1    # "j":I
    .restart local v5    # "j":I
    move v9, v6

    .end local v6    # "sIx":I
    .restart local v9    # "sIx":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    goto/16 :goto_7

    .line 570
    .end local v4    # "eIx":I
    .end local p0    # "s":Ljava/lang/String;
    .local v0, "d":I
    .local v2, "r":I
    :cond_a
    add-int/lit8 p0, v0, 0x1

    .end local v0    # "d":I
    .local p0, "d":I
    shr-int v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 569
    add-int/lit8 v0, v2, -0x8

    .end local v2    # "r":I
    .local v0, "r":I
    move v2, v0

    .end local v0    # "r":I
    .restart local v2    # "r":I
    move v0, p0

    .end local p0    # "d":I
    .local v0, "d":I
    goto/16 :goto_8

    .end local v1    # "i":I
    .end local v9    # "sIx":I
    .local v0, "cc":I
    .local v2, "d":I
    .restart local v4    # "eIx":I
    .local v5, "eLen":I
    .restart local v6    # "sIx":I
    .restart local v10    # "sepCnt":I
    .local p0, "s":Ljava/lang/String;
    :cond_b
    move p0, v2

    .end local v2    # "d":I
    .local p0, "d":I
    move v0, v6

    .end local v6    # "sIx":I
    .local v0, "sIx":I
    goto/16 :goto_9

    .local v0, "cc":I
    .local v1, "d":I
    .restart local v9    # "sIx":I
    .local p0, "s":Ljava/lang/String;
    :cond_c
    move v2, v1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    move v6, v9

    .end local v9    # "sIx":I
    .restart local v6    # "sIx":I
    goto/16 :goto_6

    .end local v4    # "eIx":I
    .end local v5    # "eLen":I
    .end local v6    # "sIx":I
    .end local v7    # "len":I
    .end local v8    # "pad":I
    .end local v10    # "sepCnt":I
    .local v0, "eIx":I
    .local v2, "sIx":I
    .local v3, "sLen":I
    :cond_d
    move v4, v0

    .end local v0    # "eIx":I
    .restart local v4    # "eIx":I
    goto/16 :goto_2
.end method

.method public static final decodeFast([B)[B
    .locals 12
    .param p0, "sArr"    # [B

    .prologue
    .line 384
    array-length v3, p0

    .line 385
    .local v3, "sLen":I
    if-nez v3, :cond_0

    .line 386
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 434
    .end local v3    # "sLen":I
    .end local p0    # "sArr":[B
    :goto_0
    return-object p0

    .line 388
    .restart local v3    # "sLen":I
    .restart local p0    # "sArr":[B
    :cond_0
    const/4 v1, 0x0

    .local v1, "sIx":I
    const/4 v0, 0x1

    sub-int v0, v3, v0

    .local v0, "eIx":I
    move v2, v1

    .line 391
    .end local v1    # "sIx":I
    .local v2, "sIx":I
    :goto_1
    if-ge v2, v0, :cond_d

    sget-object v1, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    if-ltz v1, :cond_2

    move v4, v0

    .line 395
    .end local v0    # "eIx":I
    .local v4, "eIx":I
    :goto_2
    if-lez v4, :cond_1

    sget-object v0, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    if-ltz v0, :cond_3

    .line 399
    :cond_1
    aget-byte v0, p0, v4

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    sub-int v0, v4, v0

    aget-byte v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_4

    const/4 v0, 0x2

    move v8, v0

    .line 400
    .local v8, "pad":I
    :goto_3
    sub-int v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    .line 401
    .local v0, "cCnt":I
    const/16 v1, 0x4c

    if-le v3, v1, :cond_7

    const/16 v1, 0x4c

    aget-byte v1, p0, v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_6

    .end local v3    # "sLen":I
    div-int/lit8 v1, v0, 0x4e

    :goto_4
    shl-int/lit8 v1, v1, 0x1

    move v10, v1

    .line 403
    .local v10, "sepCnt":I
    :goto_5
    sub-int/2addr v0, v10

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v8

    .line 404
    .local v7, "len":I
    new-array v3, v7, [B

    .line 407
    .end local v0    # "cCnt":I
    .local v3, "dArr":[B
    const/4 v1, 0x0

    .line 408
    .local v1, "d":I
    const/4 v0, 0x0

    .local v0, "cc":I
    div-int/lit8 v5, v7, 0x3

    mul-int/lit8 v5, v5, 0x3

    .local v5, "eLen":I
    move v6, v2

    .end local v2    # "sIx":I
    .local v6, "sIx":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    :goto_6
    if-lt v2, v5, :cond_8

    .line 424
    if-ge v2, v7, :cond_b

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v5, v1

    .end local v1    # "j":I
    .local v5, "j":I
    move v9, v6

    .end local v6    # "sIx":I
    .local v9, "sIx":I
    move v1, v0

    .end local v0    # "i":I
    .end local v10    # "sepCnt":I
    .local v1, "i":I
    :goto_7
    sub-int v0, v4, v8

    if-le v9, v0, :cond_9

    .line 430
    const/16 p0, 0x10

    .local p0, "r":I
    move v0, v2

    .end local v2    # "d":I
    .local v0, "d":I
    move v2, p0

    .end local v4    # "eIx":I
    .end local p0    # "r":I
    .local v2, "r":I
    :goto_8
    if-lt v0, v7, :cond_a

    move p0, v0

    .end local v0    # "d":I
    .local p0, "d":I
    move v0, v9

    .end local v1    # "i":I
    .end local v2    # "r":I
    .end local v5    # "j":I
    .end local v9    # "sIx":I
    .local v0, "sIx":I
    :goto_9
    move-object p0, v3

    .line 434
    goto :goto_0

    .line 392
    .end local v7    # "len":I
    .end local v8    # "pad":I
    .local v0, "eIx":I
    .local v2, "sIx":I
    .local v3, "sLen":I
    .local p0, "sArr":[B
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "sIx":I
    .local v1, "sIx":I
    move v2, v1

    .end local v1    # "sIx":I
    .restart local v2    # "sIx":I
    goto :goto_1

    .line 396
    .end local v0    # "eIx":I
    .restart local v4    # "eIx":I
    :cond_3
    add-int/lit8 v0, v4, -0x1

    .end local v4    # "eIx":I
    .restart local v0    # "eIx":I
    move v4, v0

    .end local v0    # "eIx":I
    .restart local v4    # "eIx":I
    goto :goto_2

    .line 399
    :cond_4
    const/4 v0, 0x1

    move v8, v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    move v8, v0

    goto :goto_3

    .line 401
    .end local v3    # "sLen":I
    .local v0, "cCnt":I
    .restart local v8    # "pad":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .restart local v3    # "sLen":I
    :cond_7
    const/4 v1, 0x0

    move v10, v1

    goto :goto_5

    .line 410
    .local v0, "cc":I
    .local v2, "d":I
    .local v3, "dArr":[B
    .local v5, "eLen":I
    .restart local v6    # "sIx":I
    .restart local v7    # "len":I
    .restart local v10    # "sepCnt":I
    :cond_8
    sget-object v9, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v1, v6, 0x1

    .end local v6    # "sIx":I
    .restart local v1    # "sIx":I
    aget-byte v6, p0, v6

    aget v6, v9, v6

    shl-int/lit8 v9, v6, 0x12

    sget-object v11, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "sIx":I
    .restart local v6    # "sIx":I
    aget-byte v1, p0, v1

    aget v1, v11, v1

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v9, v1

    sget-object v11, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v1, v6, 0x1

    .end local v6    # "sIx":I
    .restart local v1    # "sIx":I
    aget-byte v6, p0, v6

    aget v6, v11, v6

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v9

    sget-object v11, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v9, v1, 0x1

    .end local v1    # "sIx":I
    .restart local v9    # "sIx":I
    aget-byte v1, p0, v1

    aget v1, v11, v1

    or-int/2addr v6, v1

    .line 413
    .local v6, "i":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .local v1, "d":I
    shr-int/lit8 v11, v6, 0x10

    int-to-byte v11, v11

    aput-byte v11, v3, v2

    .line 414
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    shr-int/lit8 v11, v6, 0x8

    int-to-byte v11, v11

    aput-byte v11, v3, v1

    .line 415
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 418
    .end local v6    # "i":I
    if-lez v10, :cond_c

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x13

    if-ne v0, v2, :cond_c

    .line 419
    add-int/lit8 v2, v9, 0x2

    .line 420
    .end local v9    # "sIx":I
    .local v2, "sIx":I
    const/4 v0, 0x0

    move v6, v2

    .end local v2    # "sIx":I
    .local v6, "sIx":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    goto :goto_6

    .line 428
    .end local v0    # "cc":I
    .end local v6    # "sIx":I
    .end local v10    # "sepCnt":I
    .local v1, "i":I
    .local v5, "j":I
    .restart local v9    # "sIx":I
    :cond_9
    sget-object v0, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v6, v9, 0x1

    .end local v9    # "sIx":I
    .restart local v6    # "sIx":I
    aget-byte v9, p0, v9

    aget v0, v0, v9

    const/16 v9, 0x12

    mul-int/lit8 v10, v5, 0x6

    sub-int/2addr v9, v10

    shl-int/2addr v0, v9

    or-int/2addr v0, v1

    .line 427
    .end local v1    # "i":I
    .local v0, "i":I
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "j":I
    .local v1, "j":I
    move v5, v1

    .end local v1    # "j":I
    .restart local v5    # "j":I
    move v9, v6

    .end local v6    # "sIx":I
    .restart local v9    # "sIx":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_7

    .line 431
    .end local v4    # "eIx":I
    .end local p0    # "sArr":[B
    .local v0, "d":I
    .local v2, "r":I
    :cond_a
    add-int/lit8 p0, v0, 0x1

    .end local v0    # "d":I
    .local p0, "d":I
    shr-int v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 430
    add-int/lit8 v0, v2, -0x8

    .end local v2    # "r":I
    .local v0, "r":I
    move v2, v0

    .end local v0    # "r":I
    .restart local v2    # "r":I
    move v0, p0

    .end local p0    # "d":I
    .local v0, "d":I
    goto/16 :goto_8

    .end local v1    # "i":I
    .end local v9    # "sIx":I
    .local v0, "cc":I
    .local v2, "d":I
    .restart local v4    # "eIx":I
    .local v5, "eLen":I
    .restart local v6    # "sIx":I
    .restart local v10    # "sepCnt":I
    .local p0, "sArr":[B
    :cond_b
    move p0, v2

    .end local v2    # "d":I
    .local p0, "d":I
    move v0, v6

    .end local v6    # "sIx":I
    .local v0, "sIx":I
    goto/16 :goto_9

    .local v0, "cc":I
    .local v1, "d":I
    .restart local v9    # "sIx":I
    .local p0, "sArr":[B
    :cond_c
    move v2, v1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    move v6, v9

    .end local v9    # "sIx":I
    .restart local v6    # "sIx":I
    goto/16 :goto_6

    .end local v4    # "eIx":I
    .end local v5    # "eLen":I
    .end local v6    # "sIx":I
    .end local v7    # "len":I
    .end local v8    # "pad":I
    .end local v10    # "sepCnt":I
    .local v0, "eIx":I
    .local v2, "sIx":I
    .local v3, "sLen":I
    :cond_d
    move v4, v0

    .end local v0    # "eIx":I
    .restart local v4    # "eIx":I
    goto/16 :goto_2
.end method

.method public static final decodeFast([C)[B
    .locals 12
    .param p0, "sArr"    # [C

    .prologue
    .line 207
    array-length v3, p0

    .line 208
    .local v3, "sLen":I
    if-nez v3, :cond_0

    .line 209
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 257
    .end local v3    # "sLen":I
    .end local p0    # "sArr":[C
    :goto_0
    return-object p0

    .line 211
    .restart local v3    # "sLen":I
    .restart local p0    # "sArr":[C
    :cond_0
    const/4 v1, 0x0

    .local v1, "sIx":I
    const/4 v0, 0x1

    sub-int v0, v3, v0

    .local v0, "eIx":I
    move v2, v1

    .line 214
    .end local v1    # "sIx":I
    .local v2, "sIx":I
    :goto_1
    if-ge v2, v0, :cond_d

    sget-object v1, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    aget-char v4, p0, v2

    aget v1, v1, v4

    if-ltz v1, :cond_2

    move v4, v0

    .line 218
    .end local v0    # "eIx":I
    .local v4, "eIx":I
    :goto_2
    if-lez v4, :cond_1

    sget-object v0, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    aget-char v1, p0, v4

    aget v0, v0, v1

    if-ltz v0, :cond_3

    .line 222
    :cond_1
    aget-char v0, p0, v4

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    sub-int v0, v4, v0

    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_4

    const/4 v0, 0x2

    move v8, v0

    .line 223
    .local v8, "pad":I
    :goto_3
    sub-int v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    .line 224
    .local v0, "cCnt":I
    const/16 v1, 0x4c

    if-le v3, v1, :cond_7

    const/16 v1, 0x4c

    aget-char v1, p0, v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_6

    .end local v3    # "sLen":I
    div-int/lit8 v1, v0, 0x4e

    :goto_4
    shl-int/lit8 v1, v1, 0x1

    move v10, v1

    .line 226
    .local v10, "sepCnt":I
    :goto_5
    sub-int/2addr v0, v10

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v8

    .line 227
    .local v7, "len":I
    new-array v3, v7, [B

    .line 230
    .end local v0    # "cCnt":I
    .local v3, "dArr":[B
    const/4 v1, 0x0

    .line 231
    .local v1, "d":I
    const/4 v0, 0x0

    .local v0, "cc":I
    div-int/lit8 v5, v7, 0x3

    mul-int/lit8 v5, v5, 0x3

    .local v5, "eLen":I
    move v6, v2

    .end local v2    # "sIx":I
    .local v6, "sIx":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    :goto_6
    if-lt v2, v5, :cond_8

    .line 247
    if-ge v2, v7, :cond_b

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v5, v1

    .end local v1    # "j":I
    .local v5, "j":I
    move v9, v6

    .end local v6    # "sIx":I
    .local v9, "sIx":I
    move v1, v0

    .end local v0    # "i":I
    .end local v10    # "sepCnt":I
    .local v1, "i":I
    :goto_7
    sub-int v0, v4, v8

    if-le v9, v0, :cond_9

    .line 253
    const/16 p0, 0x10

    .local p0, "r":I
    move v0, v2

    .end local v2    # "d":I
    .local v0, "d":I
    move v2, p0

    .end local v4    # "eIx":I
    .end local p0    # "r":I
    .local v2, "r":I
    :goto_8
    if-lt v0, v7, :cond_a

    move p0, v0

    .end local v0    # "d":I
    .local p0, "d":I
    move v0, v9

    .end local v1    # "i":I
    .end local v2    # "r":I
    .end local v5    # "j":I
    .end local v9    # "sIx":I
    .local v0, "sIx":I
    :goto_9
    move-object p0, v3

    .line 257
    goto :goto_0

    .line 215
    .end local v7    # "len":I
    .end local v8    # "pad":I
    .local v0, "eIx":I
    .local v2, "sIx":I
    .local v3, "sLen":I
    .local p0, "sArr":[C
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "sIx":I
    .local v1, "sIx":I
    move v2, v1

    .end local v1    # "sIx":I
    .restart local v2    # "sIx":I
    goto :goto_1

    .line 219
    .end local v0    # "eIx":I
    .restart local v4    # "eIx":I
    :cond_3
    add-int/lit8 v0, v4, -0x1

    .end local v4    # "eIx":I
    .restart local v0    # "eIx":I
    move v4, v0

    .end local v0    # "eIx":I
    .restart local v4    # "eIx":I
    goto :goto_2

    .line 222
    :cond_4
    const/4 v0, 0x1

    move v8, v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    move v8, v0

    goto :goto_3

    .line 224
    .end local v3    # "sLen":I
    .local v0, "cCnt":I
    .restart local v8    # "pad":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .restart local v3    # "sLen":I
    :cond_7
    const/4 v1, 0x0

    move v10, v1

    goto :goto_5

    .line 233
    .local v0, "cc":I
    .local v2, "d":I
    .local v3, "dArr":[B
    .local v5, "eLen":I
    .restart local v6    # "sIx":I
    .restart local v7    # "len":I
    .restart local v10    # "sepCnt":I
    :cond_8
    sget-object v9, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v1, v6, 0x1

    .end local v6    # "sIx":I
    .restart local v1    # "sIx":I
    aget-char v6, p0, v6

    aget v6, v9, v6

    shl-int/lit8 v9, v6, 0x12

    sget-object v11, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "sIx":I
    .restart local v6    # "sIx":I
    aget-char v1, p0, v1

    aget v1, v11, v1

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v9, v1

    sget-object v11, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v1, v6, 0x1

    .end local v6    # "sIx":I
    .restart local v1    # "sIx":I
    aget-char v6, p0, v6

    aget v6, v11, v6

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v9

    sget-object v11, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v9, v1, 0x1

    .end local v1    # "sIx":I
    .restart local v9    # "sIx":I
    aget-char v1, p0, v1

    aget v1, v11, v1

    or-int/2addr v6, v1

    .line 236
    .local v6, "i":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .local v1, "d":I
    shr-int/lit8 v11, v6, 0x10

    int-to-byte v11, v11

    aput-byte v11, v3, v2

    .line 237
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    shr-int/lit8 v11, v6, 0x8

    int-to-byte v11, v11

    aput-byte v11, v3, v1

    .line 238
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 241
    .end local v6    # "i":I
    if-lez v10, :cond_c

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x13

    if-ne v0, v2, :cond_c

    .line 242
    add-int/lit8 v2, v9, 0x2

    .line 243
    .end local v9    # "sIx":I
    .local v2, "sIx":I
    const/4 v0, 0x0

    move v6, v2

    .end local v2    # "sIx":I
    .local v6, "sIx":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    goto :goto_6

    .line 251
    .end local v0    # "cc":I
    .end local v6    # "sIx":I
    .end local v10    # "sepCnt":I
    .local v1, "i":I
    .local v5, "j":I
    .restart local v9    # "sIx":I
    :cond_9
    sget-object v0, Lcom/vpon/adon/android/utils/Base64;->IA:[I

    add-int/lit8 v6, v9, 0x1

    .end local v9    # "sIx":I
    .restart local v6    # "sIx":I
    aget-char v9, p0, v9

    aget v0, v0, v9

    const/16 v9, 0x12

    mul-int/lit8 v10, v5, 0x6

    sub-int/2addr v9, v10

    shl-int/2addr v0, v9

    or-int/2addr v0, v1

    .line 250
    .end local v1    # "i":I
    .local v0, "i":I
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "j":I
    .local v1, "j":I
    move v5, v1

    .end local v1    # "j":I
    .restart local v5    # "j":I
    move v9, v6

    .end local v6    # "sIx":I
    .restart local v9    # "sIx":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_7

    .line 254
    .end local v4    # "eIx":I
    .end local p0    # "sArr":[C
    .local v0, "d":I
    .local v2, "r":I
    :cond_a
    add-int/lit8 p0, v0, 0x1

    .end local v0    # "d":I
    .local p0, "d":I
    shr-int v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 253
    add-int/lit8 v0, v2, -0x8

    .end local v2    # "r":I
    .local v0, "r":I
    move v2, v0

    .end local v0    # "r":I
    .restart local v2    # "r":I
    move v0, p0

    .end local p0    # "d":I
    .local v0, "d":I
    goto/16 :goto_8

    .end local v1    # "i":I
    .end local v9    # "sIx":I
    .local v0, "cc":I
    .local v2, "d":I
    .restart local v4    # "eIx":I
    .local v5, "eLen":I
    .restart local v6    # "sIx":I
    .restart local v10    # "sepCnt":I
    .local p0, "sArr":[C
    :cond_b
    move p0, v2

    .end local v2    # "d":I
    .local p0, "d":I
    move v0, v6

    .end local v6    # "sIx":I
    .local v0, "sIx":I
    goto/16 :goto_9

    .local v0, "cc":I
    .local v1, "d":I
    .restart local v9    # "sIx":I
    .local p0, "sArr":[C
    :cond_c
    move v2, v1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    move v6, v9

    .end local v9    # "sIx":I
    .restart local v6    # "sIx":I
    goto/16 :goto_6

    .end local v4    # "eIx":I
    .end local v5    # "eLen":I
    .end local v6    # "sIx":I
    .end local v7    # "len":I
    .end local v8    # "pad":I
    .end local v10    # "sepCnt":I
    .local v0, "eIx":I
    .local v2, "sIx":I
    .local v3, "sLen":I
    :cond_d
    move v4, v0

    .end local v0    # "eIx":I
    .restart local v4    # "eIx":I
    goto/16 :goto_2
.end method

.method public static final encodeToByte([BZ)[B
    .locals 11
    .param p0, "sArr"    # [B
    .param p1, "lineSep"    # Z

    .prologue
    .line 274
    if-eqz p0, :cond_0

    array-length v0, p0

    move v8, v0

    .line 275
    .local v8, "sLen":I
    :goto_0
    if-nez v8, :cond_1

    .line 276
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 314
    .end local p0    # "sArr":[B
    .end local p1    # "lineSep":Z
    :goto_1
    return-object p0

    .line 274
    .end local v8    # "sLen":I
    .restart local p0    # "sArr":[B
    .restart local p1    # "lineSep":Z
    :cond_0
    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    .line 278
    .restart local v8    # "sLen":I
    :cond_1
    div-int/lit8 v0, v8, 0x3

    mul-int/lit8 v5, v0, 0x3

    .line 279
    .local v5, "eLen":I
    const/4 v0, 0x1

    sub-int v0, v8, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x2

    .line 280
    .local v0, "cCnt":I
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x4c

    shl-int/lit8 v1, v1, 0x1

    :goto_2
    add-int v4, v0, v1

    .line 281
    .local v4, "dLen":I
    new-array v3, v4, [B

    .line 284
    .local v3, "dArr":[B
    const/4 v2, 0x0

    .local v2, "s":I
    const/4 v1, 0x0

    .local v1, "d":I
    const/4 v0, 0x0

    .local v0, "cc":I
    move v6, v2

    .end local v2    # "s":I
    .local v6, "s":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    :goto_3
    if-lt v6, v5, :cond_4

    .line 303
    sub-int p1, v8, v5

    .line 304
    .local p1, "left":I
    if-lez p1, :cond_2

    .line 306
    aget-byte v0, p0, v5

    .end local v0    # "cc":I
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0xa

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    const/4 v1, 0x1

    sub-int v1, v8, v1

    aget-byte p0, p0, v1

    .end local p0    # "sArr":[B
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x2

    :goto_4
    or-int/2addr p0, v0

    .line 309
    .local p0, "i":I
    const/4 v0, 0x4

    sub-int v0, v4, v0

    sget-object v1, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    shr-int/lit8 v2, p0, 0xc

    aget-char v1, v1, v2

    .end local v2    # "d":I
    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 310
    const/4 v0, 0x3

    sub-int v0, v4, v0

    sget-object v1, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 311
    const/4 v0, 0x2

    sub-int v0, v4, v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    sget-object p1, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    .end local p1    # "left":I
    and-int/lit8 p0, p0, 0x3f

    aget-char p0, p1, p0

    .end local p0    # "i":I
    int-to-byte p0, p0

    :goto_5
    aput-byte p0, v3, v0

    .line 312
    const/4 p0, 0x1

    sub-int p0, v4, p0

    const/16 p1, 0x3d

    aput-byte p1, v3, p0

    :cond_2
    move-object p0, v3

    .line 314
    goto :goto_1

    .line 280
    .end local v3    # "dArr":[B
    .end local v4    # "dLen":I
    .end local v6    # "s":I
    .local v0, "cCnt":I
    .local p0, "sArr":[B
    .local p1, "lineSep":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 286
    .local v0, "cc":I
    .restart local v2    # "d":I
    .restart local v3    # "dArr":[B
    .restart local v4    # "dLen":I
    .restart local v6    # "s":I
    :cond_4
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "s":I
    .local v1, "s":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v7, v6, 0x10

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "s":I
    .restart local v6    # "s":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "s":I
    .local v7, "s":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v1

    .line 289
    .local v6, "i":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .local v1, "d":I
    sget-object v9, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    ushr-int/lit8 v10, v6, 0x12

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    int-to-byte v9, v9

    aput-byte v9, v3, v2

    .line 290
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    sget-object v9, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    ushr-int/lit8 v10, v6, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    int-to-byte v9, v9

    aput-byte v9, v3, v1

    .line 291
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    sget-object v9, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    ushr-int/lit8 v10, v6, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    int-to-byte v9, v9

    aput-byte v9, v3, v2

    .line 292
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    sget-object v9, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v9, v6

    .end local v6    # "i":I
    int-to-byte v6, v6

    aput-byte v6, v3, v1

    .line 295
    if-eqz p1, :cond_7

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x13

    if-ne v0, v1, :cond_7

    const/4 v1, 0x2

    sub-int v1, v4, v1

    if-ge v2, v1, :cond_7

    .line 296
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "d":I
    .local v0, "d":I
    const/16 v1, 0xd

    aput-byte v1, v3, v2

    .line 297
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "d":I
    .restart local v1    # "d":I
    const/16 v2, 0xa

    aput-byte v2, v3, v0

    .line 298
    const/4 v0, 0x0

    .local v0, "cc":I
    move v2, v1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    move v6, v7

    .end local v7    # "s":I
    .local v6, "s":I
    goto/16 :goto_3

    .line 306
    .end local v0    # "cc":I
    .local p1, "left":I
    :cond_5
    const/4 p0, 0x0

    goto/16 :goto_4

    .line 311
    .end local v2    # "d":I
    .local p0, "i":I
    :cond_6
    const/16 p0, 0x3d

    goto :goto_5

    .end local v6    # "s":I
    .restart local v0    # "cc":I
    .restart local v2    # "d":I
    .restart local v7    # "s":I
    .local p0, "sArr":[B
    .local p1, "lineSep":Z
    :cond_7
    move v6, v7

    .end local v7    # "s":I
    .restart local v6    # "s":I
    goto/16 :goto_3
.end method

.method public static final encodeToChar([BZ)[C
    .locals 11
    .param p0, "sArr"    # [B
    .param p1, "lineSep"    # Z

    .prologue
    .line 98
    if-eqz p0, :cond_0

    array-length v0, p0

    move v8, v0

    .line 99
    .local v8, "sLen":I
    :goto_0
    if-nez v8, :cond_1

    .line 100
    const/4 p0, 0x0

    new-array p0, p0, [C

    .line 138
    .end local p0    # "sArr":[B
    .end local p1    # "lineSep":Z
    :goto_1
    return-object p0

    .line 98
    .end local v8    # "sLen":I
    .restart local p0    # "sArr":[B
    .restart local p1    # "lineSep":Z
    :cond_0
    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    .line 102
    .restart local v8    # "sLen":I
    :cond_1
    div-int/lit8 v0, v8, 0x3

    mul-int/lit8 v5, v0, 0x3

    .line 103
    .local v5, "eLen":I
    const/4 v0, 0x1

    sub-int v0, v8, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x2

    .line 104
    .local v0, "cCnt":I
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x4c

    shl-int/lit8 v1, v1, 0x1

    :goto_2
    add-int v4, v0, v1

    .line 105
    .local v4, "dLen":I
    new-array v3, v4, [C

    .line 108
    .local v3, "dArr":[C
    const/4 v2, 0x0

    .local v2, "s":I
    const/4 v1, 0x0

    .local v1, "d":I
    const/4 v0, 0x0

    .local v0, "cc":I
    move v6, v2

    .end local v2    # "s":I
    .local v6, "s":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    :goto_3
    if-lt v6, v5, :cond_4

    .line 127
    sub-int p1, v8, v5

    .line 128
    .local p1, "left":I
    if-lez p1, :cond_2

    .line 130
    aget-byte v0, p0, v5

    .end local v0    # "cc":I
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0xa

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    const/4 v1, 0x1

    sub-int v1, v8, v1

    aget-byte p0, p0, v1

    .end local p0    # "sArr":[B
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x2

    :goto_4
    or-int/2addr p0, v0

    .line 133
    .local p0, "i":I
    const/4 v0, 0x4

    sub-int v0, v4, v0

    sget-object v1, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    shr-int/lit8 v2, p0, 0xc

    aget-char v1, v1, v2

    .end local v2    # "d":I
    aput-char v1, v3, v0

    .line 134
    const/4 v0, 0x3

    sub-int v0, v4, v0

    sget-object v1, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, v3, v0

    .line 135
    const/4 v0, 0x2

    sub-int v0, v4, v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    sget-object p1, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    .end local p1    # "left":I
    and-int/lit8 p0, p0, 0x3f

    aget-char p0, p1, p0

    .end local p0    # "i":I
    :goto_5
    aput-char p0, v3, v0

    .line 136
    const/4 p0, 0x1

    sub-int p0, v4, p0

    const/16 p1, 0x3d

    aput-char p1, v3, p0

    :cond_2
    move-object p0, v3

    .line 138
    goto :goto_1

    .line 104
    .end local v3    # "dArr":[C
    .end local v4    # "dLen":I
    .end local v6    # "s":I
    .local v0, "cCnt":I
    .local p0, "sArr":[B
    .local p1, "lineSep":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 110
    .local v0, "cc":I
    .restart local v2    # "d":I
    .restart local v3    # "dArr":[C
    .restart local v4    # "dLen":I
    .restart local v6    # "s":I
    :cond_4
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "s":I
    .local v1, "s":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v7, v6, 0x10

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "s":I
    .restart local v6    # "s":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "s":I
    .local v7, "s":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v1

    .line 113
    .local v6, "i":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .local v1, "d":I
    sget-object v9, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    ushr-int/lit8 v10, v6, 0x12

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    aput-char v9, v3, v2

    .line 114
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    sget-object v9, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    ushr-int/lit8 v10, v6, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    aput-char v9, v3, v1

    .line 115
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    sget-object v9, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    ushr-int/lit8 v10, v6, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    aput-char v9, v3, v2

    .line 116
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    sget-object v9, Lcom/vpon/adon/android/utils/Base64;->CA:[C

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v9, v6

    .end local v6    # "i":I
    aput-char v6, v3, v1

    .line 119
    if-eqz p1, :cond_7

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x13

    if-ne v0, v1, :cond_7

    const/4 v1, 0x2

    sub-int v1, v4, v1

    if-ge v2, v1, :cond_7

    .line 120
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "d":I
    .local v0, "d":I
    const/16 v1, 0xd

    aput-char v1, v3, v2

    .line 121
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "d":I
    .restart local v1    # "d":I
    const/16 v2, 0xa

    aput-char v2, v3, v0

    .line 122
    const/4 v0, 0x0

    .local v0, "cc":I
    move v2, v1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    move v6, v7

    .end local v7    # "s":I
    .local v6, "s":I
    goto/16 :goto_3

    .line 130
    .end local v0    # "cc":I
    .local p1, "left":I
    :cond_5
    const/4 p0, 0x0

    goto/16 :goto_4

    .line 135
    .end local v2    # "d":I
    .local p0, "i":I
    :cond_6
    const/16 p0, 0x3d

    goto :goto_5

    .end local v6    # "s":I
    .restart local v0    # "cc":I
    .restart local v2    # "d":I
    .restart local v7    # "s":I
    .local p0, "sArr":[B
    .local p1, "lineSep":Z
    :cond_7
    move v6, v7

    .end local v7    # "s":I
    .restart local v6    # "s":I
    goto/16 :goto_3
.end method

.method public static final encodeToString([BZ)Ljava/lang/String;
    .locals 2
    .param p0, "sArr"    # [B
    .param p1, "lineSep"    # Z

    .prologue
    .line 451
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/vpon/adon/android/utils/Base64;->encodeToChar([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
