.class public Lcom/vpon/adon/android/utils/CryptUtils;
.super Ljava/lang/Object;
.source "CryptUtils.java"


# static fields
.field public static algorithm:Ljava/lang/String;

.field public static provider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "RSA/NONE/NoPadding"

    sput-object v0, Lcom/vpon/adon/android/utils/CryptUtils;->algorithm:Ljava/lang/String;

    .line 32
    const-string v0, "BC"

    sput-object v0, Lcom/vpon/adon/android/utils/CryptUtils;->provider:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clickListDnc(Ljava/lang/String;Ljavax/crypto/SealedObject;)Lcom/vpon/adon/android/entity/RespClickList;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "sealedObject"    # Ljavax/crypto/SealedObject;

    .prologue
    const-string v6, "DESede"

    .line 83
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 84
    .local v3, "keybyte":[B
    const/16 v6, 0x18

    new-array v1, v6, [B

    .line 85
    .local v1, "cipherKey":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    invoke-static {v3, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "DESede"

    invoke-direct {v5, v1, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 87
    .local v5, "secretKey":Ljavax/crypto/SecretKey;
    const-string v6, "DESede"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 88
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 90
    invoke-virtual {p1, v0}, Ljavax/crypto/SealedObject;->getObject(Ljavax/crypto/Cipher;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vpon/adon/android/entity/RespClickList;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 128
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "cipherKey":[B
    .end local v3    # "keybyte":[B
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .local v4, "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :goto_0
    return-object v4

    .line 92
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 93
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 94
    new-instance v4, Lcom/vpon/adon/android/entity/RespClickList;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v6}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V

    .restart local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    goto :goto_0

    .line 95
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 97
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 98
    new-instance v4, Lcom/vpon/adon/android/entity/RespClickList;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v6}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V

    .restart local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    goto :goto_0

    .line 99
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 101
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .line 102
    new-instance v4, Lcom/vpon/adon/android/entity/RespClickList;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v6}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V

    .restart local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    goto :goto_0

    .line 103
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catch_3
    move-exception v6

    move-object v2, v6

    .line 105
    .local v2, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 106
    new-instance v4, Lcom/vpon/adon/android/entity/RespClickList;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v6}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V

    .restart local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    goto :goto_0

    .line 107
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catch_4
    move-exception v6

    move-object v2, v6

    .line 109
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .line 110
    new-instance v4, Lcom/vpon/adon/android/entity/RespClickList;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v6}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V

    .restart local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    goto :goto_0

    .line 111
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catch_5
    move-exception v6

    move-object v2, v6

    .line 113
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    .line 114
    new-instance v4, Lcom/vpon/adon/android/entity/RespClickList;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v6}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V

    .restart local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    goto :goto_0

    .line 115
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catch_6
    move-exception v6

    move-object v2, v6

    .line 117
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    new-instance v4, Lcom/vpon/adon/android/entity/RespClickList;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v6}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V

    .restart local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    goto :goto_0

    .line 119
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catch_7
    move-exception v6

    move-object v2, v6

    .line 121
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 122
    new-instance v4, Lcom/vpon/adon/android/entity/RespClickList;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v6}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V

    .restart local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    goto :goto_0

    .line 123
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catch_8
    move-exception v6

    move-object v2, v6

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    new-instance v4, Lcom/vpon/adon/android/entity/RespClickList;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v6}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V

    .restart local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    goto/16 :goto_0
.end method

.method public static clickListEnc(Ljava/lang/String;Lcom/vpon/adon/android/entity/RespClickList;)Ljavax/crypto/SealedObject;
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "respClickList"    # Lcom/vpon/adon/android/entity/RespClickList;

    .prologue
    const-string v7, "DESede"

    .line 37
    const/4 v4, 0x0

    .line 41
    .local v4, "sealedObject":Ljavax/crypto/SealedObject;
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 42
    .local v3, "keybyte":[B
    const/16 v7, 0x18

    new-array v1, v7, [B

    .line 43
    .local v1, "cipherKey":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    invoke-static {v3, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "DESede"

    invoke-direct {v6, v1, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 45
    .local v6, "secretKey":Ljavax/crypto/SecretKey;
    const-string v7, "DESede"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 46
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 48
    new-instance v5, Ljavax/crypto/SealedObject;

    invoke-direct {v5, p1, v0}, Ljavax/crypto/SealedObject;-><init>(Ljava/io/Serializable;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .end local v4    # "sealedObject":Ljavax/crypto/SealedObject;
    .local v5, "sealedObject":Ljavax/crypto/SealedObject;
    move-object v4, v5

    .line 73
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "cipherKey":[B
    .end local v3    # "keybyte":[B
    .end local v5    # "sealedObject":Ljavax/crypto/SealedObject;
    .end local v6    # "secretKey":Ljavax/crypto/SecretKey;
    .restart local v4    # "sealedObject":Ljavax/crypto/SealedObject;
    :goto_0
    return-object v4

    .line 50
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 52
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 55
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 58
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_3
    move-exception v7

    move-object v2, v7

    .line 61
    .local v2, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v7

    move-object v2, v7

    .line 64
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v7

    move-object v2, v7

    .line 67
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v7

    move-object v2, v7

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static decTripleDES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "strBaseEncData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x18

    const/4 v7, 0x0

    const-string v10, "UTF-8"

    const-string v9, "DESede"

    .line 148
    const-string v6, "UTF-8"

    invoke-virtual {p0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 149
    .local v3, "keybyte":[B
    new-array v1, v8, [B

    .line 150
    .local v1, "cipherKey":[B
    invoke-static {v3, v7, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "DESede"

    invoke-direct {v2, v1, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 153
    .local v2, "deskey":Ljavax/crypto/SecretKey;
    const-string v6, "DESede"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 154
    .local v0, "c2":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 156
    invoke-static {p1}, Lcom/vpon/adon/android/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 157
    .local v4, "oriData":[B
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 163
    .local v5, "strDecData":Ljava/lang/String;
    return-object v5
.end method

.method public static decryptData([BLjavax/crypto/Cipher;)[B
    .locals 5
    .param p0, "encrypedData"    # [B
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const/16 v0, 0x100

    .line 207
    .local v0, "blockSize":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 209
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 210
    .local v1, "j":I
    :goto_0
    array-length v3, p0

    mul-int v4, v1, v0

    sub-int/2addr v3, v4

    if-gtz v3, :cond_0

    .line 214
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 211
    :cond_0
    mul-int v3, v1, v0

    invoke-virtual {p1, p0, v3, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static encTripleDES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "plainText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x18

    const/4 v7, 0x0

    const-string v9, "DESede"

    .line 133
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 134
    .local v4, "keybyte":[B
    new-array v1, v8, [B

    .line 135
    .local v1, "cipherKey":[B
    invoke-static {v4, v7, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "DESede"

    invoke-direct {v2, v1, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 138
    .local v2, "deskey":Ljavax/crypto/SecretKey;
    const-string v6, "DESede"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 139
    .local v0, "c1":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 142
    .local v3, "encData":[B
    invoke-static {v3, v7}, Lcom/vpon/adon/android/utils/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "strBaseEncData":Ljava/lang/String;
    return-object v5
.end method

.method public static encryptData([BLjavax/crypto/Cipher;)[B
    .locals 5
    .param p0, "data"    # [B
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x35

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 192
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0xf5

    .line 194
    .local v0, "blockSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-lt v1, v4, :cond_0

    .line 202
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 195
    :cond_0
    array-length v4, p0

    sub-int/2addr v4, v1

    if-gt v4, v0, :cond_1

    .line 196
    array-length v4, p0

    sub-int v3, v4, v1

    .line 200
    .local v3, "thisBlockSize":I
    :goto_1
    invoke-virtual {p1, p0, v1, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 194
    add-int/2addr v1, v0

    goto :goto_0

    .line 198
    .end local v3    # "thisBlockSize":I
    :cond_1
    move v3, v0

    .restart local v3    # "thisBlockSize":I
    goto :goto_1
.end method

.method public static getRsaDecryptCipher(Ljava/security/PrivateKey;)Ljavax/crypto/Cipher;
    .locals 3
    .param p0, "priKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 185
    sget-object v1, Lcom/vpon/adon/android/utils/CryptUtils;->algorithm:Ljava/lang/String;

    sget-object v2, Lcom/vpon/adon/android/utils/CryptUtils;->provider:Ljava/lang/String;

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 186
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 187
    return-object v0
.end method

.method public static getRsaEncryptCipher(Ljava/security/PublicKey;)Ljavax/crypto/Cipher;
    .locals 3
    .param p0, "pubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 179
    sget-object v1, Lcom/vpon/adon/android/utils/CryptUtils;->algorithm:Ljava/lang/String;

    sget-object v2, Lcom/vpon/adon/android/utils/CryptUtils;->provider:Ljava/lang/String;

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 180
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 181
    return-object v0
.end method

.method public static getRsaPriKey([B)Ljava/security/PrivateKey;
    .locals 3
    .param p0, "encodedPrivateKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 173
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 174
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 175
    .local v1, "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2
.end method

.method public static getRsaPubKey([B)Ljava/security/PublicKey;
    .locals 3
    .param p0, "encodedPublicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 167
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 168
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 169
    .local v1, "pubKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2
.end method
