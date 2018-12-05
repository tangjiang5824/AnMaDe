.class public Lcom/vpon/adon/android/entity/AdRedirectPack;
.super Ljava/lang/Object;
.source "AdRedirectPack.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x648613d602e5d952L


# instance fields
.field private adId:Ljava/lang/String;

.field private cellId:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private lac:Ljava/lang/String;

.field private lat:Ljava/lang/Double;

.field private licensekey:Ljava/lang/String;

.field private location:Landroid/location/Location;

.field private lon:Ljava/lang/Double;

.field private mcc:Ljava/lang/String;

.field private mnc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public getCellId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->cellId:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getLac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->lac:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->lat:Ljava/lang/Double;

    return-object v0
.end method

.method public getLicensekey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->licensekey:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getLon()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->lon:Ljava/lang/Double;

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public setAdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "adId"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->adId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setCellId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cellId"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->cellId:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->imei:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setLac(Ljava/lang/String;)V
    .locals 0
    .param p1, "lac"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->lac:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setLat(Ljava/lang/Double;)V
    .locals 0
    .param p1, "lat"    # Ljava/lang/Double;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->lat:Ljava/lang/Double;

    .line 69
    return-void
.end method

.method public setLicensekey(Ljava/lang/String;)V
    .locals 0
    .param p1, "licensekey"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->licensekey:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->location:Landroid/location/Location;

    .line 107
    return-void
.end method

.method public setLon(Ljava/lang/Double;)V
    .locals 0
    .param p1, "lon"    # Ljava/lang/Double;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->lon:Ljava/lang/Double;

    .line 75
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->mcc:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mnc"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->mnc:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 29
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "imei"

    iget-object v3, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v2, "licensekey"

    iget-object v3, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->licensekey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v2, "adId"

    iget-object v3, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->adId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v2, "lat"

    iget-object v3, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->lat:Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v2, "lon"

    iget-object v3, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->lon:Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v2, "cellId"

    iget-object v3, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->cellId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v2, "lac"

    iget-object v3, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->lac:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v2, "mcc"

    iget-object v3, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->mcc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v2, "mnc"

    iget-object v3, p0, Lcom/vpon/adon/android/entity/AdRedirectPack;->mnc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 40
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
