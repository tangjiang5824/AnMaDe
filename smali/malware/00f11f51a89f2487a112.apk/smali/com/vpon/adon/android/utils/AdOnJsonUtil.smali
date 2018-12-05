.class public Lcom/vpon/adon/android/utils/AdOnJsonUtil;
.super Ljava/lang/Object;
.source "AdOnJsonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClickJson(Landroid/content/Context;DDLjava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "licenseKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "DD",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/vpon/adon/android/entity/RespClick;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 95
    .local p6, "respClicks":Ljava/util/List;, "Ljava/util/List<Lcom/vpon/adon/android/entity/RespClick;>;"
    invoke-static/range {p0 .. p5}, Lcom/vpon/adon/android/utils/AdOnJsonUtil;->getWebviewAdReqJson(Landroid/content/Context;DDLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 98
    .local v3, "json":Lorg/json/JSONObject;
    const-string v4, "method"

    const-string v5, "adClick"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 101
    .local v2, "jClicks":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .end local p0    # "context":Landroid/content/Context;
    .local v0, "i":I
    :goto_0
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 116
    const-string v4, "adClickItemList"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    return-object v3

    .line 103
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 104
    .local v1, "jClick":Lorg/json/JSONObject;
    const-string v4, "adId"

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vpon/adon/android/entity/RespClick;

    invoke-virtual {p0}, Lcom/vpon/adon/android/entity/RespClick;->getAdId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v4, "licensekey"

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vpon/adon/android/entity/RespClick;

    invoke-virtual {p0}, Lcom/vpon/adon/android/entity/RespClick;->getLicenseKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v4, "clickAt"

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vpon/adon/android/entity/RespClick;

    invoke-virtual {p0}, Lcom/vpon/adon/android/entity/RespClick;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v4, "lat"

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vpon/adon/android/entity/RespClick;

    invoke-virtual {p0}, Lcom/vpon/adon/android/entity/RespClick;->getLat()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v4, "lon"

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vpon/adon/android/entity/RespClick;

    invoke-virtual {p0}, Lcom/vpon/adon/android/entity/RespClick;->getLon()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v4, "cellId"

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vpon/adon/android/entity/RespClick;

    invoke-virtual {p0}, Lcom/vpon/adon/android/entity/RespClick;->getCellID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v4, "lac"

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vpon/adon/android/entity/RespClick;

    invoke-virtual {p0}, Lcom/vpon/adon/android/entity/RespClick;->getLac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v4, "mcc"

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vpon/adon/android/entity/RespClick;

    invoke-virtual {p0}, Lcom/vpon/adon/android/entity/RespClick;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v4, "mnc"

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vpon/adon/android/entity/RespClick;

    invoke-virtual {p0}, Lcom/vpon/adon/android/entity/RespClick;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static getErrorJson(Landroid/content/Context;DDLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "licenseKey"    # Ljava/lang/String;
    .param p6, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd HH:mm:ss z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "setDateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "currentTime":Ljava/lang/String;
    invoke-static/range {p0 .. p5}, Lcom/vpon/adon/android/utils/AdOnJsonUtil;->getWebviewAdReqJson(Landroid/content/Context;DDLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 84
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "method"

    const-string v4, "sdkError"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v3, "error"

    invoke-virtual {v1, v3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v3, "errorAt"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    return-object v1
.end method

.method public static getWebviewAdReqJson(Landroid/content/Context;DDLjava/lang/String;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "licenseKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lcom/vpon/adon/android/utils/PhoneStateUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "imei":Ljava/lang/String;
    invoke-static {p0}, Lcom/vpon/adon/android/utils/PhoneStateUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcom/vpon/adon/android/utils/PhoneStateUtils;->getSdkOsVersion()Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "deviceOsVersion":Ljava/lang/String;
    invoke-static {p0}, Lcom/vpon/adon/android/utils/PhoneStateUtils;->getScreenSize(Landroid/content/Context;)Lcom/vpon/adon/android/entity/ScreenSize;

    move-result-object v7

    .line 29
    .local v7, "screenSize":Lcom/vpon/adon/android/entity/ScreenSize;
    invoke-static {p0}, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/CellTowerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vpon/adon/android/utils/CellTowerUtil;->getCellId()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "cellId":Ljava/lang/String;
    invoke-static {p0}, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/CellTowerUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vpon/adon/android/utils/CellTowerUtil;->getLac()Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, "lac":Ljava/lang/String;
    invoke-static {p0}, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/CellTowerUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vpon/adon/android/utils/CellTowerUtil;->getMnc()Ljava/lang/String;

    move-result-object v6

    .line 32
    .local v6, "mnc":Ljava/lang/String;
    invoke-static {p0}, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/CellTowerUtil;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/vpon/adon/android/utils/CellTowerUtil;->getMcc()Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, "mcc":Ljava/lang/String;
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local p0, "json":Lorg/json/JSONObject;
    const-string v8, "method"

    const-string v9, "webviewAdReq"

    invoke-virtual {p0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v8, "imei"

    invoke-virtual {p0, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v3, "licensekey"

    .end local v3    # "imei":Ljava/lang/String;
    invoke-virtual {p0, v3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string p5, "screenHeight"

    .end local p5    # "licenseKey":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/vpon/adon/android/entity/ScreenSize;->getScreenHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string p5, "screenWidth"

    invoke-virtual {v7}, Lcom/vpon/adon/android/entity/ScreenSize;->getScreenWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string p5, "sdkName"

    const-string v3, "Android"

    invoke-virtual {p0, p5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string p5, "sdkVersion"

    const-string v3, "2.1.1"

    invoke-virtual {p0, p5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string p5, "deviceName"

    invoke-virtual {p0, p5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string p5, "deviceOsName"

    const-string v1, "Anodrid"

    .end local v1    # "deviceName":Ljava/lang/String;
    invoke-virtual {p0, p5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string p5, "deviceOsVersion"

    invoke-virtual {p0, p5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string p5, "SDK"

    const-string v1, "Using real location gps address"

    invoke-static {p5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string p5, "lat"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string p5, "lon"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string p5, "SDK"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "lat":D
    invoke-static {p5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string p1, "SDK"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string p1, "cellId"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string p1, "lac"

    invoke-virtual {p0, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string p1, "mcc"

    invoke-virtual {p0, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string p1, "mnc"

    invoke-virtual {p0, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string p1, "ts"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    return-object p0
.end method
