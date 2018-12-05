.class public Lcom/vpon/adon/android/utils/PhoneStateUtils;
.super Ljava/lang/Object;
.source "PhoneStateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v0, ""

    .line 49
    .local v0, "androidId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    return-object v0
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-string v0, ""

    .line 35
    .local v0, "deviceName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/vpon/adon/android/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    const-string v0, ""

    goto :goto_0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const-string v1, ""

    .line 17
    .local v1, "imei":Ljava/lang/String;
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 18
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 25
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    invoke-static {v1}, Lcom/vpon/adon/android/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-static {p0}, Lcom/vpon/adon/android/utils/PhoneStateUtils;->getWifiAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 29
    :cond_0
    return-object v1

    .line 20
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    const-string v1, ""

    goto :goto_0
.end method

.method public static getScreenSize(Landroid/content/Context;)Lcom/vpon/adon/android/entity/ScreenSize;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    new-instance v2, Lcom/vpon/adon/android/entity/ScreenSize;

    invoke-direct {v2}, Lcom/vpon/adon/android/entity/ScreenSize;-><init>()V

    .line 83
    .local v2, "screenSize":Lcom/vpon/adon/android/entity/ScreenSize;
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 85
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 84
    check-cast v3, Landroid/view/WindowManager;

    .line 86
    .local v3, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v4}, Lcom/vpon/adon/android/entity/ScreenSize;->setScreenWidth(I)V

    .line 88
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v4}, Lcom/vpon/adon/android/entity/ScreenSize;->setScreenHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "windowManager":Landroid/view/WindowManager;
    :goto_0
    return-object v2

    .line 89
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSdkOsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    const-string v0, ""

    .line 70
    .local v0, "deviceOsVersion":Ljava/lang/String;
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const-string v0, ""

    goto :goto_0
.end method

.method public static getWifiAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-string v1, ""

    .line 57
    .local v1, "macAddress":Ljava/lang/String;
    :try_start_0
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 58
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const-string v1, ""

    goto :goto_0
.end method
