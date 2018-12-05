.class public Lcom/vpon/adon/android/utils/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static instance:Lcom/vpon/adon/android/utils/LocationUtil;


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private locationManager:Landroid/location/LocationManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vpon/adon/android/utils/LocationUtil;->locationManager:Landroid/location/LocationManager;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vpon/adon/android/utils/LocationUtil;->listeners:Ljava/util/List;

    .line 26
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/vpon/adon/android/utils/LocationUtil;->locationManager:Landroid/location/LocationManager;

    .line 27
    return-void
.end method

.method public static final instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/LocationUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/vpon/adon/android/utils/LocationUtil;->instance:Lcom/vpon/adon/android/utils/LocationUtil;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/vpon/adon/android/utils/LocationUtil;

    invoke-direct {v0, p0}, Lcom/vpon/adon/android/utils/LocationUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vpon/adon/android/utils/LocationUtil;->instance:Lcom/vpon/adon/android/utils/LocationUtil;

    .line 58
    :cond_0
    sget-object v0, Lcom/vpon/adon/android/utils/LocationUtil;->instance:Lcom/vpon/adon/android/utils/LocationUtil;

    return-object v0
.end method

.method private releaseLocationProvider()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vpon/adon/android/utils/LocationUtil;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method public addLocationListener(Landroid/location/LocationListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vpon/adon/android/utils/LocationUtil;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public getLocationPrivider()V
    .locals 8

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vpon/adon/android/utils/LocationUtil;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vpon/adon/android/utils/LocationUtil;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    :try_start_0
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 37
    .local v6, "criteria":Landroid/location/Criteria;
    iget-object v0, p0, Lcom/vpon/adon/android/utils/LocationUtil;->locationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "locationPrivider":Ljava/lang/String;
    iget-object v0, p0, Lcom/vpon/adon/android/utils/LocationUtil;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 39
    iget-object v0, p0, Lcom/vpon/adon/android/utils/LocationUtil;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x41200000    # 10.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v1    # "locationPrivider":Ljava/lang/String;
    .end local v6    # "criteria":Landroid/location/Criteria;
    :cond_1
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 41
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/vpon/adon/android/utils/LocationUtil;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    return-void

    .line 68
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 69
    .local v0, "listener":Landroid/location/LocationListener;
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/vpon/adon/android/utils/LocationUtil;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    return-void

    .line 75
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 76
    .local v0, "listener":Landroid/location/LocationListener;
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/vpon/adon/android/utils/LocationUtil;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    return-void

    .line 82
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 83
    .local v0, "listener":Landroid/location/LocationListener;
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/vpon/adon/android/utils/LocationUtil;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    return-void

    .line 89
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 90
    .local v0, "listener":Landroid/location/LocationListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/vpon/adon/android/utils/LocationUtil;->releaseLocationProvider()V

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/vpon/adon/android/utils/LocationUtil;->instance:Lcom/vpon/adon/android/utils/LocationUtil;

    .line 64
    return-void
.end method

.method public removeLocationListener(Landroid/location/LocationListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vpon/adon/android/utils/LocationUtil;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method
