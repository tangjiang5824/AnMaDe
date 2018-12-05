.class public Lcom/vpon/adon/android/entity/RespClick;
.super Ljava/lang/Object;
.source "RespClick.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6228f545ecfd97dfL


# instance fields
.field private adId:Ljava/lang/String;

.field private cellID:Ljava/lang/String;

.field private clickType:I

.field private lac:Ljava/lang/String;

.field private lat:D

.field private licenseKey:Ljava/lang/String;

.field private lon:D

.field private mcc:Ljava/lang/String;

.field private mnc:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vpon/adon/android/entity/RespClick;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public getCellID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vpon/adon/android/entity/RespClick;->cellID:Ljava/lang/String;

    return-object v0
.end method

.method public getClickType()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/vpon/adon/android/entity/RespClick;->clickType:I

    return v0
.end method

.method public getLac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vpon/adon/android/entity/RespClick;->lac:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/vpon/adon/android/entity/RespClick;->lat:D

    return-wide v0
.end method

.method public getLicenseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vpon/adon/android/entity/RespClick;->licenseKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/vpon/adon/android/entity/RespClick;->lon:D

    return-wide v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vpon/adon/android/entity/RespClick;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vpon/adon/android/entity/RespClick;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public getStrMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vpon/adon/android/entity/RespClick;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vpon/adon/android/entity/RespClick;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setAdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "adId"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/vpon/adon/android/entity/RespClick;->adId:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setCellID(Ljava/lang/String;)V
    .locals 0
    .param p1, "cellID"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vpon/adon/android/entity/RespClick;->cellID:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setClickType(I)V
    .locals 0
    .param p1, "clickType"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/vpon/adon/android/entity/RespClick;->clickType:I

    .line 114
    return-void
.end method

.method public setLac(Ljava/lang/String;)V
    .locals 0
    .param p1, "lac"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vpon/adon/android/entity/RespClick;->lac:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setLat(D)V
    .locals 0
    .param p1, "lat"    # D

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/vpon/adon/android/entity/RespClick;->lat:D

    .line 42
    return-void
.end method

.method public setLicenseKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "licenseKey"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vpon/adon/android/entity/RespClick;->licenseKey:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setLon(D)V
    .locals 0
    .param p1, "lon"    # D

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/vpon/adon/android/entity/RespClick;->lon:D

    .line 50
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/vpon/adon/android/entity/RespClick;->mcc:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mnc"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vpon/adon/android/entity/RespClick;->mnc:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setStrMcc(Ljava/lang/String;)V
    .locals 0
    .param p1, "strMcc"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vpon/adon/android/entity/RespClick;->mcc:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/vpon/adon/android/entity/RespClick;->time:Ljava/lang/String;

    .line 98
    return-void
.end method
