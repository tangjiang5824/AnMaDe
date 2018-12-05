.class public final Lcom/vpon/adon/android/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static instance:Lcom/vpon/adon/android/AdManager; = null

.field public static final vponServer:Ljava/lang/String; = "service@vpon.com"


# instance fields
.field private adViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vpon/adon/android/AdView;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private lat:D

.field private lon:D

.field private respClicks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vpon/adon/android/entity/RespClick;",
            ">;"
        }
    .end annotation
.end field

.field private userLocation:Landroid/location/Location;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vpon/adon/android/AdManager;->adViews:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/vpon/adon/android/AdManager;->context:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Lcom/vpon/adon/android/utils/LocationUtil;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/LocationUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vpon/adon/android/utils/LocationUtil;->addLocationListener(Landroid/location/LocationListener;)V

    .line 55
    return-void
.end method

.method static synthetic access$0()Lcom/vpon/adon/android/AdManager;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/vpon/adon/android/AdManager;->instance:Lcom/vpon/adon/android/AdManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vpon/adon/android/AdManager;Lcom/vpon/adon/android/AdView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/vpon/adon/android/AdManager;->adRequester(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$2(Lcom/vpon/adon/android/AdManager;Lcom/vpon/adon/android/AdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Lcom/vpon/adon/android/AdManager;->errorRequester(Lcom/vpon/adon/android/AdView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vpon/adon/android/AdManager;Lcom/vpon/adon/android/AdView;Lcom/vpon/adon/android/entity/Ad;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Lcom/vpon/adon/android/AdManager;->clickRequester(Lcom/vpon/adon/android/AdView;Lcom/vpon/adon/android/entity/Ad;)V

    return-void
.end method

.method private adRequester(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;)V
    .locals 23
    .param p1, "adView"    # Lcom/vpon/adon/android/AdView;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 76
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vpon/adon/android/AdManager;->context:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vpon/adon/android/AdManager;->lat:D

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vpon/adon/android/AdManager;->lon:D

    move-wide v7, v0

    invoke-virtual/range {p1 .. p1}, Lcom/vpon/adon/android/AdView;->getLicenseKey()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/vpon/adon/android/utils/AdOnJsonUtil;->getWebviewAdReqJson(Landroid/content/Context;DDLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 77
    .local v17, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "AdManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "json: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/vpon/adon/android/AdView;->getPlatform()Lcom/vpon/adon/android/AdOnPlatform;

    move-result-object v4

    invoke-static {v4}, Lcom/vpon/adon/android/utils/AdOnUrlUtil;->getAdReqUrl(Lcom/vpon/adon/android/AdOnPlatform;)Ljava/lang/String;

    move-result-object v22

    .line 80
    .local v22, "url":Ljava/lang/String;
    invoke-static {}, Lcom/vpon/adon/android/utils/IOUtils;->instance()Lcom/vpon/adon/android/utils/IOUtils;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "2.1.1"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v22

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/vpon/adon/android/utils/IOUtils;->connectJSONServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 87
    .local v15, "httpResp":Lorg/apache/http/HttpResponse;
    const-string v4, "X-ADON-STATUS"

    invoke-interface {v15, v4}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 89
    .local v21, "reStatus":I
    if-eqz v21, :cond_0

    .line 90
    invoke-static/range {v21 .. v21}, Lcom/vpon/adon/android/utils/AdOnServerUtil;->printErrorLog(I)V

    .line 91
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V

    .line 207
    .end local v15    # "httpResp":Lorg/apache/http/HttpResponse;
    .end local v17    # "jsonObject":Lorg/json/JSONObject;
    .end local v21    # "reStatus":I
    .end local v22    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 95
    .restart local v15    # "httpResp":Lorg/apache/http/HttpResponse;
    .restart local v17    # "jsonObject":Lorg/json/JSONObject;
    .restart local v21    # "reStatus":I
    .restart local v22    # "url":Ljava/lang/String;
    :cond_0
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v14

    .line 105
    .local v14, "html":Ljava/lang/String;
    new-instance v10, Lcom/vpon/adon/android/entity/Ad;

    invoke-direct {v10}, Lcom/vpon/adon/android/entity/Ad;-><init>()V

    .line 106
    .local v10, "ad":Lcom/vpon/adon/android/entity/Ad;
    invoke-virtual {v10, v14}, Lcom/vpon/adon/android/entity/Ad;->setAdHtml(Ljava/lang/String;)V

    .line 107
    const-string v4, "X-ADON-AD_ID"

    invoke-interface {v15, v4}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/vpon/adon/android/entity/Ad;->setAdId(Ljava/lang/String;)V

    .line 108
    const-string v4, "X-ADON-AD_HEIGHT"

    invoke-interface {v15, v4}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/vpon/adon/android/entity/Ad;->setAdHeight(I)V

    .line 109
    const-string v4, "X-ADON-AD_WIDTH"

    invoke-interface {v15, v4}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/vpon/adon/android/entity/Ad;->setAdWidth(I)V

    .line 110
    const-string v4, "X-ADON-REFRESH_TIME"

    invoke-interface {v15, v4}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/vpon/adon/android/entity/Ad;->setRefreshTime(I)V

    .line 112
    const-string v4, "X-ADON-LAT"

    invoke-interface {v15, v4}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 113
    const-string v4, "X-ADON-LAT"

    invoke-interface {v15, v4}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lcom/vpon/adon/android/entity/Ad;->setMapLat(D)V

    .line 116
    :cond_1
    const-string v4, "X-ADON-LON"

    invoke-interface {v15, v4}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 117
    const-string v4, "X-ADON-LON"

    invoke-interface {v15, v4}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lcom/vpon/adon/android/entity/Ad;->setMapLon(D)V

    .line 120
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vpon/adon/android/AdManager;->context:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/vpon/adon/android/utils/PhoneStateUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 121
    .local v16, "imei":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vpon/adon/android/AdManager;->context:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/CellTowerUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vpon/adon/android/utils/CellTowerUtil;->getCellId()Ljava/lang/String;

    move-result-object v12

    .line 122
    .local v12, "cellId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vpon/adon/android/AdManager;->context:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/CellTowerUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vpon/adon/android/utils/CellTowerUtil;->getLac()Ljava/lang/String;

    move-result-object v18

    .line 123
    .local v18, "lac":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vpon/adon/android/AdManager;->context:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/CellTowerUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vpon/adon/android/utils/CellTowerUtil;->getMnc()Ljava/lang/String;

    move-result-object v20

    .line 124
    .local v20, "mnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vpon/adon/android/AdManager;->context:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/CellTowerUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vpon/adon/android/utils/CellTowerUtil;->getMcc()Ljava/lang/String;

    move-result-object v19

    .line 126
    .local v19, "mcc":Ljava/lang/String;
    new-instance v11, Lcom/vpon/adon/android/entity/AdRedirectPack;

    invoke-direct {v11}, Lcom/vpon/adon/android/entity/AdRedirectPack;-><init>()V

    .line 127
    .local v11, "adRedirectPack":Lcom/vpon/adon/android/entity/AdRedirectPack;
    invoke-virtual {v10}, Lcom/vpon/adon/android/entity/Ad;->getAdId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/vpon/adon/android/entity/AdRedirectPack;->setAdId(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v11, v12}, Lcom/vpon/adon/android/entity/AdRedirectPack;->setCellId(Ljava/lang/String;)V

    .line 129
    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vpon/adon/android/entity/AdRedirectPack;->setImei(Ljava/lang/String;)V

    .line 130
    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vpon/adon/android/entity/AdRedirectPack;->setLac(Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vpon/adon/android/AdManager;->lat:D

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/vpon/adon/android/entity/AdRedirectPack;->setLat(Ljava/lang/Double;)V

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/vpon/adon/android/AdView;->getLicenseKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/vpon/adon/android/entity/AdRedirectPack;->setLicensekey(Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vpon/adon/android/AdManager;->lon:D

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/vpon/adon/android/entity/AdRedirectPack;->setLon(Ljava/lang/Double;)V

    .line 134
    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vpon/adon/android/entity/AdRedirectPack;->setMcc(Ljava/lang/String;)V

    .line 135
    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vpon/adon/android/entity/AdRedirectPack;->setMnc(Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vpon/adon/android/AdManager;->userLocation:Landroid/location/Location;

    move-object v4, v0

    invoke-virtual {v11, v4}, Lcom/vpon/adon/android/entity/AdRedirectPack;->setLocation(Landroid/location/Location;)V

    .line 137
    invoke-virtual {v10, v11}, Lcom/vpon/adon/android/entity/Ad;->setAdRedirectPack(Lcom/vpon/adon/android/entity/AdRedirectPack;)V

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/vpon/adon/android/exception/ServiceUnavailableException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    goto/16 :goto_0

    .line 141
    .end local v10    # "ad":Lcom/vpon/adon/android/entity/Ad;
    .end local v11    # "adRedirectPack":Lcom/vpon/adon/android/entity/AdRedirectPack;
    .end local v12    # "cellId":Ljava/lang/String;
    .end local v14    # "html":Ljava/lang/String;
    .end local v15    # "httpResp":Lorg/apache/http/HttpResponse;
    .end local v16    # "imei":Ljava/lang/String;
    .end local v17    # "jsonObject":Lorg/json/JSONObject;
    .end local v18    # "lac":Ljava/lang/String;
    .end local v19    # "mcc":Ljava/lang/String;
    .end local v20    # "mnc":Ljava/lang/String;
    .end local v21    # "reStatus":I
    .end local v22    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 142
    .local v13, "e":Lorg/json/JSONException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V

    goto/16 :goto_0

    .line 146
    .end local v13    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v4

    move-object v13, v4

    .line 147
    .local v13, "e":Ljava/security/InvalidKeyException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V

    goto/16 :goto_0

    .line 151
    .end local v13    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v4

    move-object v13, v4

    .line 152
    .local v13, "e":Lorg/apache/http/ParseException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V

    goto/16 :goto_0

    .line 156
    .end local v13    # "e":Lorg/apache/http/ParseException;
    :catch_3
    move-exception v4

    move-object v13, v4

    .line 157
    .local v13, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V

    goto/16 :goto_0

    .line 161
    .end local v13    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v4

    move-object v13, v4

    .line 162
    .local v13, "e":Ljavax/crypto/NoSuchPaddingException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V

    goto/16 :goto_0

    .line 166
    .end local v13    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_5
    move-exception v4

    move-object v13, v4

    .line 167
    .local v13, "e":Ljava/security/spec/InvalidKeySpecException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V

    goto/16 :goto_0

    .line 171
    .end local v13    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_6
    move-exception v4

    move-object v13, v4

    .line 172
    .local v13, "e":Ljavax/crypto/IllegalBlockSizeException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V

    goto/16 :goto_0

    .line 176
    .end local v13    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_7
    move-exception v4

    move-object v13, v4

    .line 177
    .local v13, "e":Ljavax/crypto/BadPaddingException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V

    goto/16 :goto_0

    .line 181
    .end local v13    # "e":Ljavax/crypto/BadPaddingException;
    :catch_8
    move-exception v4

    move-object v13, v4

    .line 182
    .local v13, "e":Ljava/security/NoSuchProviderException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V

    goto/16 :goto_0

    .line 186
    .end local v13    # "e":Ljava/security/NoSuchProviderException;
    :catch_9
    move-exception v4

    move-object v13, v4

    .line 187
    .local v13, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V

    goto/16 :goto_0

    .line 191
    .end local v13    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v4

    move-object v13, v4

    .line 192
    .local v13, "e":Lcom/vpon/adon/android/exception/ServiceUnavailableException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V

    goto/16 :goto_0

    .line 196
    .end local v13    # "e":Lcom/vpon/adon/android/exception/ServiceUnavailableException;
    :catch_b
    move-exception v4

    move-object v13, v4

    .line 197
    .local v13, "e":Ljava/net/URISyntaxException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V

    goto/16 :goto_0

    .line 201
    .end local v13    # "e":Ljava/net/URISyntaxException;
    :catch_c
    move-exception v4

    move-object v13, v4

    .line 202
    .local v13, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V

    goto/16 :goto_0
.end method

.method private clickRequester(Lcom/vpon/adon/android/AdView;Lcom/vpon/adon/android/entity/Ad;)V
    .locals 11
    .param p1, "adView"    # Lcom/vpon/adon/android/AdView;
    .param p2, "currentAd"    # Lcom/vpon/adon/android/entity/Ad;

    .prologue
    .line 309
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy/MM/dd HH:mm:ss z"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 310
    .local v8, "setDateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "currentTime":Ljava/lang/String;
    iget-object v9, p0, Lcom/vpon/adon/android/AdManager;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/CellTowerUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vpon/adon/android/utils/CellTowerUtil;->getCellId()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "cellId":Ljava/lang/String;
    iget-object v9, p0, Lcom/vpon/adon/android/AdManager;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/CellTowerUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vpon/adon/android/utils/CellTowerUtil;->getLac()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "lac":Ljava/lang/String;
    iget-object v9, p0, Lcom/vpon/adon/android/AdManager;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/CellTowerUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vpon/adon/android/utils/CellTowerUtil;->getMnc()Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, "mnc":Ljava/lang/String;
    iget-object v9, p0, Lcom/vpon/adon/android/AdManager;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/CellTowerUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vpon/adon/android/utils/CellTowerUtil;->getMcc()Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "mcc":Ljava/lang/String;
    new-instance v6, Lcom/vpon/adon/android/entity/RespClick;

    invoke-direct {v6}, Lcom/vpon/adon/android/entity/RespClick;-><init>()V

    .line 318
    .local v6, "respClick":Lcom/vpon/adon/android/entity/RespClick;
    invoke-virtual {p1}, Lcom/vpon/adon/android/AdView;->getLicenseKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/vpon/adon/android/entity/RespClick;->setLicenseKey(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Lcom/vpon/adon/android/entity/Ad;->getAdId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/vpon/adon/android/entity/RespClick;->setAdId(Ljava/lang/String;)V

    .line 320
    iget-wide v9, p0, Lcom/vpon/adon/android/AdManager;->lat:D

    invoke-virtual {v6, v9, v10}, Lcom/vpon/adon/android/entity/RespClick;->setLat(D)V

    .line 321
    iget-wide v9, p0, Lcom/vpon/adon/android/AdManager;->lon:D

    invoke-virtual {v6, v9, v10}, Lcom/vpon/adon/android/entity/RespClick;->setLon(D)V

    .line 322
    invoke-virtual {v6, v0}, Lcom/vpon/adon/android/entity/RespClick;->setCellID(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v6, v3}, Lcom/vpon/adon/android/entity/RespClick;->setLac(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v6, v4}, Lcom/vpon/adon/android/entity/RespClick;->setMcc(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v6, v5}, Lcom/vpon/adon/android/entity/RespClick;->setMnc(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v6, v1}, Lcom/vpon/adon/android/entity/RespClick;->setTime(Ljava/lang/String;)V

    .line 329
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/vpon/adon/android/AdManager;->getClickFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 331
    new-instance v9, Lcom/vpon/adon/android/entity/RespClickList;

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v9, v10}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v9}, Lcom/vpon/adon/android/AdManager;->writeClickListToFile(Lcom/vpon/adon/android/entity/RespClickList;)V

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/vpon/adon/android/AdManager;->readClickListFromFile()Lcom/vpon/adon/android/entity/RespClickList;

    move-result-object v7

    .line 335
    .local v7, "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    invoke-virtual {v7}, Lcom/vpon/adon/android/entity/RespClickList;->getRespClicks()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/vpon/adon/android/AdManager;->respClicks:Ljava/util/List;

    .line 337
    iget-object v9, p0, Lcom/vpon/adon/android/AdManager;->respClicks:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v9, "respClicks size"

    iget-object v10, p0, Lcom/vpon/adon/android/AdManager;->respClicks:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-direct {p0, p1}, Lcom/vpon/adon/android/AdManager;->sendRespClicks(Lcom/vpon/adon/android/AdView;)V

    .line 344
    return-void
.end method

.method private displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V
    .locals 1
    .param p1, "adView"    # Lcom/vpon/adon/android/AdView;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "ad"    # Lcom/vpon/adon/android/entity/Ad;

    .prologue
    .line 210
    new-instance v0, Lcom/vpon/adon/android/AdManager$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/vpon/adon/android/AdManager$2;-><init>(Lcom/vpon/adon/android/AdManager;Lcom/vpon/adon/android/AdView;Lcom/vpon/adon/android/entity/Ad;)V

    .line 217
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method

.method private errorRequester(Lcom/vpon/adon/android/AdView;Ljava/lang/String;)V
    .locals 9
    .param p1, "adView"    # Lcom/vpon/adon/android/AdView;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vpon/adon/android/AdView;->getLicenseKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " generate error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/vpon/adon/android/AdManager;->context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/vpon/adon/android/AdManager;->lat:D

    iget-wide v3, p0, Lcom/vpon/adon/android/AdManager;->lon:D

    invoke-virtual {p1}, Lcom/vpon/adon/android/AdView;->getLicenseKey()Ljava/lang/String;

    move-result-object v5

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/vpon/adon/android/utils/AdOnJsonUtil;->getErrorJson(Landroid/content/Context;DDLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 238
    .local v7, "json":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/vpon/adon/android/AdView;->getPlatform()Lcom/vpon/adon/android/AdOnPlatform;

    move-result-object v0

    invoke-static {v0}, Lcom/vpon/adon/android/utils/AdOnUrlUtil;->getAdErrorUrl(Lcom/vpon/adon/android/AdOnPlatform;)Ljava/lang/String;

    move-result-object v8

    .line 239
    .local v8, "url":Ljava/lang/String;
    invoke-static {}, Lcom/vpon/adon/android/utils/IOUtils;->instance()Lcom/vpon/adon/android/utils/IOUtils;

    move-result-object v0

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.1.1"

    invoke-virtual {v0, v1, v8, v2}, Lcom/vpon/adon/android/utils/IOUtils;->connectJSONServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/vpon/adon/android/exception/ServiceUnavailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    goto :goto_0

    .line 285
    :catch_1
    move-exception v0

    goto :goto_0

    .line 281
    :catch_2
    move-exception v0

    goto :goto_0

    .line 277
    :catch_3
    move-exception v0

    goto :goto_0

    .line 273
    :catch_4
    move-exception v0

    goto :goto_0

    .line 269
    :catch_5
    move-exception v0

    goto :goto_0

    .line 265
    :catch_6
    move-exception v0

    goto :goto_0

    .line 261
    :catch_7
    move-exception v0

    goto :goto_0

    .line 257
    :catch_8
    move-exception v0

    goto :goto_0

    .line 253
    :catch_9
    move-exception v0

    goto :goto_0

    .line 249
    :catch_a
    move-exception v0

    goto :goto_0

    .line 245
    :catch_b
    move-exception v0

    goto :goto_0

    .line 241
    :catch_c
    move-exception v0

    goto :goto_0
.end method

.method private getClickFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vpon/adon/android/AdManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appDataFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static instance(Landroid/content/Context;)Lcom/vpon/adon/android/AdManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 534
    sget-object v0, Lcom/vpon/adon/android/AdManager;->instance:Lcom/vpon/adon/android/AdManager;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Lcom/vpon/adon/android/AdManager;

    invoke-direct {v0, p0}, Lcom/vpon/adon/android/AdManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vpon/adon/android/AdManager;->instance:Lcom/vpon/adon/android/AdManager;

    .line 537
    :cond_0
    sget-object v0, Lcom/vpon/adon/android/AdManager;->instance:Lcom/vpon/adon/android/AdManager;

    return-object v0
.end method

.method private readClickListFromFile()Lcom/vpon/adon/android/entity/RespClickList;
    .locals 8

    .prologue
    .line 486
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/vpon/adon/android/AdManager;->getClickFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 492
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 494
    .local v5, "sealedObject":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 495
    const-string v6, "adManger"

    const-string v7, "sealedObject null"

    invoke-static {v6, v7}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_0
    const-string v6, "http://www.vpon.com/v/index.jsp88623698333service@vpon.com"

    check-cast v5, Ljavax/crypto/SealedObject;

    .end local v5    # "sealedObject":Ljava/lang/Object;
    invoke-static {v6, v5}, Lcom/vpon/adon/android/utils/CryptUtils;->clickListDnc(Ljava/lang/String;Ljavax/crypto/SealedObject;)Lcom/vpon/adon/android/entity/RespClickList;
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 515
    .local v4, "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    if-eqz v3, :cond_3

    .line 517
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    move-object v2, v3

    .line 524
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :cond_1
    :goto_0
    return-object v4

    .line 498
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 500
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    .line 501
    new-instance v4, Lcom/vpon/adon/android/entity/RespClickList;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v6}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 515
    .restart local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    if-eqz v2, :cond_1

    .line 517
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 518
    :catch_1
    move-exception v0

    .line 520
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 502
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 504
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 505
    new-instance v4, Lcom/vpon/adon/android/entity/RespClickList;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v6}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 515
    .restart local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    if-eqz v2, :cond_1

    .line 517
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 518
    :catch_3
    move-exception v0

    .line 520
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 506
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catch_4
    move-exception v6

    move-object v0, v6

    .line 508
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 509
    new-instance v4, Lcom/vpon/adon/android/entity/RespClickList;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v6}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 515
    .restart local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    if-eqz v2, :cond_1

    .line 517
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    .line 518
    :catch_5
    move-exception v0

    .line 520
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 510
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catch_6
    move-exception v6

    move-object v0, v6

    .line 512
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 513
    new-instance v4, Lcom/vpon/adon/android/entity/RespClickList;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v6}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 515
    .restart local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    if-eqz v2, :cond_1

    .line 517
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_0

    .line 518
    :catch_7
    move-exception v0

    .line 520
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 514
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catchall_0
    move-exception v6

    .line 515
    :goto_5
    if-eqz v2, :cond_2

    .line 517
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 523
    :cond_2
    :goto_6
    throw v6

    .line 518
    :catch_8
    move-exception v0

    .line 520
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 518
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    :catch_9
    move-exception v0

    .line 520
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 514
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .end local v4    # "respClickList":Lcom/vpon/adon/android/entity/RespClickList;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_5

    .line 510
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_a
    move-exception v6

    move-object v0, v6

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 506
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v6

    move-object v0, v6

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 502
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_c
    move-exception v6

    move-object v0, v6

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 498
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v6

    move-object v0, v6

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_1
.end method

.method private sendRespClicks(Lcom/vpon/adon/android/AdView;)V
    .locals 15
    .param p1, "adView"    # Lcom/vpon/adon/android/AdView;

    .prologue
    .line 349
    const-string v0, "AdMAnager"

    const-string v1, "sendRespClicks"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const/4 v11, 0x0

    .line 355
    .local v11, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    iget-object v0, p0, Lcom/vpon/adon/android/AdManager;->context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/vpon/adon/android/AdManager;->lat:D

    iget-wide v3, p0, Lcom/vpon/adon/android/AdManager;->lon:D

    invoke-virtual/range {p1 .. p1}, Lcom/vpon/adon/android/AdView;->getLicenseKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/vpon/adon/android/AdManager;->respClicks:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/vpon/adon/android/utils/AdOnJsonUtil;->getClickJson(Landroid/content/Context;DDLjava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v10

    .line 357
    .local v10, "json":Lorg/json/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lcom/vpon/adon/android/AdView;->getPlatform()Lcom/vpon/adon/android/AdOnPlatform;

    move-result-object v0

    invoke-static {v0}, Lcom/vpon/adon/android/utils/AdOnUrlUtil;->getAdClickUrl(Lcom/vpon/adon/android/AdOnPlatform;)Ljava/lang/String;

    move-result-object v14

    .line 361
    .local v14, "url":Ljava/lang/String;
    invoke-static {}, Lcom/vpon/adon/android/utils/IOUtils;->instance()Lcom/vpon/adon/android/utils/IOUtils;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Lcom/vpon/adon/android/exception/ServiceUnavailableException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 363
    .local v9, "instance":Lcom/vpon/adon/android/utils/IOUtils;
    if-nez v9, :cond_1

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_1
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 444
    .end local v9    # "instance":Lcom/vpon/adon/android/utils/IOUtils;
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v14    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 440
    .restart local v9    # "instance":Lcom/vpon/adon/android/utils/IOUtils;
    .restart local v10    # "json":Lorg/json/JSONObject;
    .restart local v14    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 441
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 368
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    .line 370
    .local v13, "strJson":Ljava/lang/String;
    const-string v0, "2.1.1"

    invoke-virtual {v9, v13, v14, v0}, Lcom/vpon/adon/android/utils/IOUtils;->connectJSONServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 372
    .local v8, "httpResp":Lorg/apache/http/HttpResponse;
    const-string v0, "X-ADON-STATUS"

    invoke-interface {v8, v0}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 373
    .local v12, "reStatus":I
    const-string v0, "AdMAnager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reStatus: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    if-ltz v12, :cond_2

    .line 376
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vpon/adon/android/AdManager;->respClicks:Ljava/util/List;

    .line 379
    :cond_2
    new-instance v0, Lcom/vpon/adon/android/entity/RespClickList;

    iget-object v1, p0, Lcom/vpon/adon/android/AdManager;->respClicks:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/vpon/adon/android/entity/RespClickList;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/vpon/adon/android/AdManager;->writeClickListToFile(Lcom/vpon/adon/android/entity/RespClickList;)V

    .line 380
    const-string v0, "respClicks size"

    iget-object v1, p0, Lcom/vpon/adon/android/AdManager;->respClicks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Lcom/vpon/adon/android/exception/ServiceUnavailableException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_3
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 440
    :catch_1
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 381
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "httpResp":Lorg/apache/http/HttpResponse;
    .end local v9    # "instance":Lcom/vpon/adon/android/utils/IOUtils;
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v12    # "reStatus":I
    .end local v13    # "strJson":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_4
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 440
    :catch_3
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 385
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_5
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    .line 440
    :catch_5
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v7    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_6
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_0

    .line 440
    :catch_7
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 393
    .end local v7    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_7
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto/16 :goto_0

    .line 440
    :catch_9
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 397
    .end local v7    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v0

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_8
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    goto/16 :goto_0

    .line 440
    :catch_b
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 401
    .end local v7    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v0

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_9
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_0

    .line 440
    :catch_d
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 405
    .end local v7    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v0

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_a
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    goto/16 :goto_0

    .line 440
    :catch_f
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 409
    .end local v7    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v0

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_b
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11

    goto/16 :goto_0

    .line 440
    :catch_11
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 413
    .end local v7    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v0

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_c
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_13

    goto/16 :goto_0

    .line 440
    :catch_13
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 417
    .end local v7    # "e":Ljava/io/IOException;
    :catch_14
    move-exception v0

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_d
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_15

    goto/16 :goto_0

    .line 440
    :catch_15
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 421
    .end local v7    # "e":Ljava/io/IOException;
    :catch_16
    move-exception v0

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_e
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_17

    goto/16 :goto_0

    .line 440
    :catch_17
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 425
    .end local v7    # "e":Ljava/io/IOException;
    :catch_18
    move-exception v0

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_f
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_19

    goto/16 :goto_0

    .line 440
    :catch_19
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 429
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v0

    .line 437
    if-eqz v11, :cond_0

    .line 438
    :try_start_10
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1b

    goto/16 :goto_0

    .line 440
    :catch_1b
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 435
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 437
    if-eqz v11, :cond_3

    .line 438
    :try_start_11
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1c

    .line 443
    :cond_3
    :goto_1
    throw v0

    .line 440
    :catch_1c
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private writeClickListToFile(Lcom/vpon/adon/android/entity/RespClickList;)V
    .locals 8
    .param p1, "respClickList"    # Lcom/vpon/adon/android/entity/RespClickList;

    .prologue
    .line 447
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/vpon/adon/android/AdManager;->getClickFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    .local v1, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 449
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    const/4 v2, 0x0

    .line 451
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 452
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 455
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    const-string v7, "http://www.vpon.com/v/index.jsp88623698333service@vpon.com"

    .line 454
    invoke-static {v7, p1}, Lcom/vpon/adon/android/utils/CryptUtils;->clickListEnc(Ljava/lang/String;Lcom/vpon/adon/android/entity/RespClickList;)Ljavax/crypto/SealedObject;

    move-result-object v6

    .line 459
    .local v6, "sealedObject":Ljavax/crypto/SealedObject;
    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 460
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 471
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 476
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 483
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .end local v6    # "sealedObject":Ljavax/crypto/SealedObject;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 465
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 471
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 476
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 477
    :catch_1
    move-exception v0

    .line 479
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 472
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 473
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 476
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_0

    .line 477
    :catch_3
    move-exception v0

    .line 479
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 474
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 476
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 481
    :goto_2
    throw v7

    .line 477
    :catch_4
    move-exception v0

    .line 479
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 466
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    move-object v0, v7

    .line 468
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 471
    :try_start_c
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 476
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_0

    .line 477
    :catch_6
    move-exception v0

    .line 479
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 472
    :catch_7
    move-exception v0

    .line 473
    :try_start_e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 476
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_0

    .line 477
    :catch_8
    move-exception v0

    .line 479
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 474
    :catchall_1
    move-exception v7

    .line 476
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 481
    :goto_4
    throw v7

    .line 477
    :catch_9
    move-exception v0

    .line 479
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 469
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v7

    .line 471
    :goto_5
    :try_start_11
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 476
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 482
    :goto_6
    throw v7

    .line 472
    :catch_a
    move-exception v0

    .line 473
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 476
    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_6

    .line 477
    :catch_b
    move-exception v0

    .line 479
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 474
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v7

    .line 476
    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    .line 481
    :goto_7
    throw v7

    .line 477
    :catch_c
    move-exception v0

    .line 479
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 477
    .end local v0    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v0

    .line 479
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "sealedObject":Ljavax/crypto/SealedObject;
    :catch_e
    move-exception v0

    .line 473
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 476
    :try_start_17
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 477
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catch_f
    move-exception v0

    .line 479
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    goto/16 :goto_0

    .line 474
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_4
    move-exception v7

    .line 476
    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .line 481
    :goto_8
    throw v7

    .line 477
    :catch_10
    move-exception v0

    .line 479
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 477
    .end local v0    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v0

    .line 479
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    goto/16 :goto_0

    .line 469
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "sealedObject":Ljavax/crypto/SealedObject;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_6
    move-exception v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_5

    .line 466
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_12
    move-exception v7

    move-object v0, v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catch_13
    move-exception v7

    move-object v0, v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 463
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_14
    move-exception v7

    move-object v0, v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catch_15
    move-exception v7

    move-object v0, v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    goto/16 :goto_1
.end method


# virtual methods
.method addAdView(Lcom/vpon/adon/android/AdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/vpon/adon/android/AdView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vpon/adon/android/AdManager;->adViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/vpon/adon/android/AdManager;->userLocation:Landroid/location/Location;

    .line 549
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vpon/adon/android/AdManager;->lat:D

    .line 550
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vpon/adon/android/AdManager;->lon:D

    .line 552
    const-string v0, "SDK lat"

    iget-wide v1, p0, Lcom/vpon/adon/android/AdManager;->lat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v0, "SDK lon"

    iget-wide v1, p0, Lcom/vpon/adon/android/AdManager;->lon:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 562
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 568
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 574
    return-void
.end method

.method performAdRequester(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;)V
    .locals 2
    .param p1, "adView"    # Lcom/vpon/adon/android/AdView;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 62
    new-instance v0, Lcom/vpon/adon/android/AdManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vpon/adon/android/AdManager$1;-><init>(Lcom/vpon/adon/android/AdManager;Lcom/vpon/adon/android/AdView;Landroid/os/Handler;)V

    .line 70
    .local v0, "adRequester":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 71
    return-void
.end method

.method performClickRequester(Lcom/vpon/adon/android/AdView;Lcom/vpon/adon/android/entity/Ad;)V
    .locals 2
    .param p1, "adView"    # Lcom/vpon/adon/android/AdView;
    .param p2, "currentAd"    # Lcom/vpon/adon/android/entity/Ad;

    .prologue
    .line 297
    new-instance v0, Lcom/vpon/adon/android/AdManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/vpon/adon/android/AdManager$4;-><init>(Lcom/vpon/adon/android/AdManager;Lcom/vpon/adon/android/AdView;Lcom/vpon/adon/android/entity/Ad;)V

    .line 305
    .local v0, "clickRequester":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 306
    return-void
.end method

.method performErrorRequester(Lcom/vpon/adon/android/AdView;Ljava/lang/String;)V
    .locals 2
    .param p1, "adView"    # Lcom/vpon/adon/android/AdView;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v0, Lcom/vpon/adon/android/AdManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/vpon/adon/android/AdManager$3;-><init>(Lcom/vpon/adon/android/AdManager;Lcom/vpon/adon/android/AdView;Ljava/lang/String;)V

    .line 229
    .local v0, "errorRequester":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 230
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    sput-object v0, Lcom/vpon/adon/android/AdManager;->instance:Lcom/vpon/adon/android/AdManager;

    .line 543
    return-void
.end method
