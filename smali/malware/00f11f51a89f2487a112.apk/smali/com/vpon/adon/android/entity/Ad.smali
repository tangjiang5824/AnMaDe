.class public Lcom/vpon/adon/android/entity/Ad;
.super Lcom/vpon/adon/android/entity/Rsp;
.source "Ad.java"


# instance fields
.field private adHeight:I

.field private adHtml:Ljava/lang/String;

.field private adId:Ljava/lang/String;

.field private adRedirectPack:Lcom/vpon/adon/android/entity/AdRedirectPack;

.field private adWidth:I

.field private bClick:Z

.field private distance:I

.field private mapLat:D

.field private mapLon:D

.field private refreshTime:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Lcom/vpon/adon/android/entity/Rsp;-><init>()V

    .line 5
    iput v1, p0, Lcom/vpon/adon/android/entity/Ad;->adWidth:I

    .line 6
    iput v1, p0, Lcom/vpon/adon/android/entity/Ad;->adHeight:I

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/vpon/adon/android/entity/Ad;->distance:I

    .line 13
    iput-boolean v1, p0, Lcom/vpon/adon/android/entity/Ad;->bClick:Z

    .line 3
    return-void
.end method


# virtual methods
.method public getAdHeight()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/vpon/adon/android/entity/Ad;->adHeight:I

    return v0
.end method

.method public getAdHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vpon/adon/android/entity/Ad;->adHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vpon/adon/android/entity/Ad;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdRedirectPack()Lcom/vpon/adon/android/entity/AdRedirectPack;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vpon/adon/android/entity/Ad;->adRedirectPack:Lcom/vpon/adon/android/entity/AdRedirectPack;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/vpon/adon/android/entity/Ad;->adWidth:I

    return v0
.end method

.method public getClickStatus()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/vpon/adon/android/entity/Ad;->bClick:Z

    return v0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/vpon/adon/android/entity/Ad;->distance:I

    return v0
.end method

.method public getMapLat()D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/vpon/adon/android/entity/Ad;->mapLat:D

    return-wide v0
.end method

.method public getMapLon()D
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/vpon/adon/android/entity/Ad;->mapLon:D

    return-wide v0
.end method

.method public getRefreshTime()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/vpon/adon/android/entity/Ad;->refreshTime:I

    return v0
.end method

.method public setAdHeight(I)V
    .locals 0
    .param p1, "adHeight"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/vpon/adon/android/entity/Ad;->adHeight:I

    .line 37
    return-void
.end method

.method public setAdHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "adHtml"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/vpon/adon/android/entity/Ad;->adHtml:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setAdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "adId"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vpon/adon/android/entity/Ad;->adId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setAdRedirectPack(Lcom/vpon/adon/android/entity/AdRedirectPack;)V
    .locals 0
    .param p1, "adRedirectPack"    # Lcom/vpon/adon/android/entity/AdRedirectPack;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vpon/adon/android/entity/Ad;->adRedirectPack:Lcom/vpon/adon/android/entity/AdRedirectPack;

    .line 85
    return-void
.end method

.method public setAdWidth(I)V
    .locals 0
    .param p1, "adWidth"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/vpon/adon/android/entity/Ad;->adWidth:I

    .line 29
    return-void
.end method

.method public setClicked()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vpon/adon/android/entity/Ad;->bClick:Z

    .line 89
    return-void
.end method

.method public setDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/vpon/adon/android/entity/Ad;->distance:I

    .line 77
    return-void
.end method

.method public setMapLat(D)V
    .locals 0
    .param p1, "mapLat"    # D

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/vpon/adon/android/entity/Ad;->mapLat:D

    .line 53
    return-void
.end method

.method public setMapLon(D)V
    .locals 0
    .param p1, "mapLon"    # D

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/vpon/adon/android/entity/Ad;->mapLon:D

    .line 45
    return-void
.end method

.method public setRefreshTime(I)V
    .locals 0
    .param p1, "refreshTime"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/vpon/adon/android/entity/Ad;->refreshTime:I

    .line 69
    return-void
.end method
