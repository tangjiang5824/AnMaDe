.class public Lcom/vpon/adon/android/utils/AdOnUrlUtil;
.super Ljava/lang/Object;
.source "AdOnUrlUtil.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$vpon$adon$android$AdOnPlatform:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$vpon$adon$android$AdOnPlatform()[I
    .locals 3

    .prologue
    .line 8
    sget-object v0, Lcom/vpon/adon/android/utils/AdOnUrlUtil;->$SWITCH_TABLE$com$vpon$adon$android$AdOnPlatform:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/vpon/adon/android/AdOnPlatform;->values()[Lcom/vpon/adon/android/AdOnPlatform;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/vpon/adon/android/AdOnPlatform;->CN:Lcom/vpon/adon/android/AdOnPlatform;

    invoke-virtual {v1}, Lcom/vpon/adon/android/AdOnPlatform;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/vpon/adon/android/AdOnPlatform;->TW:Lcom/vpon/adon/android/AdOnPlatform;

    invoke-virtual {v1}, Lcom/vpon/adon/android/AdOnPlatform;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/vpon/adon/android/utils/AdOnUrlUtil;->$SWITCH_TABLE$com$vpon$adon$android$AdOnPlatform:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdClickUrl(Lcom/vpon/adon/android/AdOnPlatform;)Ljava/lang/String;
    .locals 6
    .param p0, "platform"    # Lcom/vpon/adon/android/AdOnPlatform;

    .prologue
    const-string v5, "SDK"

    .line 53
    const-string v2, "http://tw.ad.adon.vpon.com/api/webviewAdClick"

    .line 54
    .local v2, "twAdClickUrl":Ljava/lang/String;
    const-string v1, "http://cn.ad.adon.vpon.com/api/webviewAdClick"

    .line 55
    .local v1, "cnAdClickUrl":Ljava/lang/String;
    const-string v0, "http://beta.vpon.com/api/api/webviewAdClick"

    .line 61
    .local v0, "betaAdClickUrl":Ljava/lang/String;
    invoke-static {}, Lcom/vpon/adon/android/utils/AdOnUrlUtil;->$SWITCH_TABLE$com$vpon$adon$android$AdOnPlatform()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/vpon/adon/android/AdOnPlatform;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 67
    const-string v3, "SDK"

    const-string v3, "AdOnUrlUtil Config: unknown platform!!"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v3, "SDK"

    const-string v3, "Please check with engineer."

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    .line 70
    :goto_0
    return-object v3

    :pswitch_0
    move-object v3, v2

    .line 63
    goto :goto_0

    :pswitch_1
    move-object v3, v1

    .line 65
    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAdErrorUrl(Lcom/vpon/adon/android/AdOnPlatform;)Ljava/lang/String;
    .locals 6
    .param p0, "platform"    # Lcom/vpon/adon/android/AdOnPlatform;

    .prologue
    const-string v5, "SDK"

    .line 32
    const-string v2, "http://tw.ad.adon.vpon.com/api/webviewSdkError"

    .line 33
    .local v2, "twSdkErrorUrl":Ljava/lang/String;
    const-string v1, "http://cn.ad.adon.vpon.com/api/swebviewSdkError"

    .line 34
    .local v1, "cnSdkErrorUrl":Ljava/lang/String;
    const-string v0, "http://beta.vpon.com/api/api/webviewSdkError"

    .line 40
    .local v0, "betaSdkErrorUrl":Ljava/lang/String;
    invoke-static {}, Lcom/vpon/adon/android/utils/AdOnUrlUtil;->$SWITCH_TABLE$com$vpon$adon$android$AdOnPlatform()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/vpon/adon/android/AdOnPlatform;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 46
    const-string v3, "SDK"

    const-string v3, "AdOnUrlUtil Config: unknown platform!!"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v3, "SDK"

    const-string v3, "Please check with engineer."

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 48
    :goto_0
    return-object v3

    :pswitch_0
    move-object v3, v2

    .line 42
    goto :goto_0

    :pswitch_1
    move-object v3, v1

    .line 44
    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAdReqUrl(Lcom/vpon/adon/android/AdOnPlatform;)Ljava/lang/String;
    .locals 6
    .param p0, "platform"    # Lcom/vpon/adon/android/AdOnPlatform;

    .prologue
    const-string v5, "SDK"

    .line 11
    const-string v2, "http://tw.ad.adon.vpon.com/api/webviewAdReq"

    .line 12
    .local v2, "twAdReqUrl":Ljava/lang/String;
    const-string v1, "http://cn.ad.adon.vpon.com/api/webviewAdReq"

    .line 13
    .local v1, "cnAdReqUrl":Ljava/lang/String;
    const-string v0, "http://beta.vpon.com/api/api/webviewAdReq"

    .line 19
    .local v0, "betaAdReqUrl":Ljava/lang/String;
    invoke-static {}, Lcom/vpon/adon/android/utils/AdOnUrlUtil;->$SWITCH_TABLE$com$vpon$adon$android$AdOnPlatform()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/vpon/adon/android/AdOnPlatform;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 25
    const-string v3, "SDK"

    const-string v3, "AdOnUrlUtil Config: unknown platform!!"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-string v3, "SDK"

    const-string v3, "Please check with engineer."

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 27
    :goto_0
    return-object v3

    :pswitch_0
    move-object v3, v2

    .line 21
    goto :goto_0

    :pswitch_1
    move-object v3, v1

    .line 23
    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
