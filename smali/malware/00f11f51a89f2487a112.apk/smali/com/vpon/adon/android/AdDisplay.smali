.class public final Lcom/vpon/adon/android/AdDisplay;
.super Landroid/webkit/WebView;
.source "AdDisplay.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static final vponUrl:Ljava/lang/String; = "http://www.vpon.com/v/index.jsp"


# instance fields
.field private ad:Lcom/vpon/adon/android/entity/Ad;

.field private context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vpon/adon/android/AdView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adView"    # Lcom/vpon/adon/android/AdView;

    .prologue
    const/4 v2, 0x1

    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-virtual {p0}, Lcom/vpon/adon/android/AdDisplay;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/vpon/adon/android/AdDisplay;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/vpon/adon/android/AdDisplay;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 30
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vpon/adon/android/AdDisplay;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 31
    iput-object p1, p0, Lcom/vpon/adon/android/AdDisplay;->context:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Lcom/vpon/adon/android/AdDisplay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vpon/adon/android/utils/LocationUtil;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/LocationUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vpon/adon/android/utils/LocationUtil;->addLocationListener(Landroid/location/LocationListener;)V

    .line 34
    return-void
.end method

.method private getDistanceHtml(Landroid/location/Location;)Ljava/lang/String;
    .locals 25
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 67
    const-wide v19, 0x3f91df46a2529d39L    # 0.017453292519943295

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vpon/adon/android/AdDisplay;->ad:Lcom/vpon/adon/android/entity/Ad;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vpon/adon/android/entity/Ad;->getMapLat()D

    move-result-wide v21

    mul-double v2, v19, v21

    .line 68
    .local v2, "Lat1r":D
    const-wide v19, 0x3f91df46a2529d39L    # 0.017453292519943295

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vpon/adon/android/AdDisplay;->ad:Lcom/vpon/adon/android/entity/Ad;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vpon/adon/android/entity/Ad;->getMapLon()D

    move-result-wide v21

    mul-double v6, v19, v21

    .line 69
    .local v6, "Long1r":D
    const-wide v19, 0x3f91df46a2529d39L    # 0.017453292519943295

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v21

    mul-double v4, v19, v21

    .line 70
    .local v4, "Lat2r":D
    const-wide v19, 0x3f91df46a2529d39L    # 0.017453292519943295

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v21

    mul-double v8, v19, v21

    .line 71
    .local v8, "Long2r":D
    const-wide v10, 0x40b8e30000000000L    # 6371.0

    .line 76
    .local v10, "R":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    sub-double v23, v8, v6

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    add-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->acos(D)D

    move-result-wide v19

    mul-double v12, v19, v10

    .line 77
    .local v12, "d":D
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 78
    const-string v19, "<div id=\"distance\"></div>"

    .line 110
    :goto_0
    return-object v19

    .line 84
    :cond_0
    const-wide v19, 0x408f400000000000L    # 1000.0

    mul-double v19, v19, v12

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v17, v0

    .line 86
    .local v17, "distanceMeter":I
    const/16 v19, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 87
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "<div id=\"distance\">"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "<br />"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "m"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "</div>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, "distanceHtml":Ljava/lang/String;
    move-object/from16 v19, v14

    .line 88
    goto :goto_0

    .line 90
    .end local v14    # "distanceHtml":Ljava/lang/String;
    :cond_1
    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide v15, v0

    .line 92
    .local v15, "distanceKiloMeter":D
    const-wide v19, 0x408f400000000000L    # 1000.0

    cmpl-double v19, v15, v19

    if-ltz v19, :cond_2

    .line 93
    const-string v19, "<div id=\"distance\"></div>"

    goto :goto_0

    .line 98
    :cond_2
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v18

    .line 99
    .local v18, "distanceString":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 100
    const/16 v19, 0x0

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 105
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    sub-int v19, v19, v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 106
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    sub-int v20, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 109
    :cond_4
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "<div id=\"distance\">"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "<br />"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "km"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "</div>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "distanceHtml":Ljava/lang/String;
    move-object/from16 v19, v14

    .line 110
    goto/16 :goto_0
.end method


# virtual methods
.method public displayNextAd(Lcom/vpon/adon/android/entity/Ad;Lcom/vpon/adon/android/AdView;)V
    .locals 7
    .param p1, "ad"    # Lcom/vpon/adon/android/entity/Ad;
    .param p2, "adView"    # Lcom/vpon/adon/android/AdView;

    .prologue
    const/4 v1, 0x0

    const-string v4, "AdDisplay"

    .line 40
    const-string v0, "AdDisplay"

    const-string v0, "displayNextAd"

    invoke-static {v4, v0}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "AdDisplay"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "html: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vpon/adon/android/entity/Ad;->getAdHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/vpon/adon/android/AdDisplay;->ad:Lcom/vpon/adon/android/entity/Ad;

    .line 45
    new-instance v6, Lcom/vpon/adon/android/AdDisplayWebViewClient;

    iget-object v0, p0, Lcom/vpon/adon/android/AdDisplay;->context:Landroid/content/Context;

    invoke-direct {v6, p2, p1, v0}, Lcom/vpon/adon/android/AdDisplayWebViewClient;-><init>(Lcom/vpon/adon/android/AdView;Lcom/vpon/adon/android/entity/Ad;Landroid/content/Context;)V

    .line 46
    .local v6, "adDisplayWebClient":Lcom/vpon/adon/android/AdDisplayWebViewClient;
    invoke-virtual {p0, v6}, Lcom/vpon/adon/android/AdDisplay;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 48
    invoke-virtual {p1}, Lcom/vpon/adon/android/entity/Ad;->getAdHtml()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "html":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vpon/adon/android/entity/Ad;->getAdRedirectPack()Lcom/vpon/adon/android/entity/AdRedirectPack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vpon/adon/android/entity/AdRedirectPack;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "<div id=\"distance\"></div>"

    invoke-virtual {p1}, Lcom/vpon/adon/android/entity/Ad;->getAdRedirectPack()Lcom/vpon/adon/android/entity/AdRedirectPack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vpon/adon/android/entity/AdRedirectPack;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vpon/adon/android/AdDisplay;->getDistanceHtml(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 53
    :cond_0
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/vpon/adon/android/AdDisplay;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    .line 116
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vpon/adon/android/AdDisplay;->ad:Lcom/vpon/adon/android/entity/Ad;

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/vpon/adon/android/AdDisplay;->ad:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v0}, Lcom/vpon/adon/android/entity/Ad;->getMapLat()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vpon/adon/android/AdDisplay;->ad:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v0}, Lcom/vpon/adon/android/entity/Ad;->getMapLon()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/vpon/adon/android/AdDisplay;->ad:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v0}, Lcom/vpon/adon/android/entity/Ad;->getMapLat()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vpon/adon/android/AdDisplay;->ad:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v0}, Lcom/vpon/adon/android/entity/Ad;->getMapLon()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/vpon/adon/android/AdDisplay;->ad:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v0}, Lcom/vpon/adon/android/entity/Ad;->getAdHtml()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "html":Ljava/lang/String;
    const-string v0, "<div id=\"distance\"></div>"

    .line 130
    invoke-direct {p0, p1}, Lcom/vpon/adon/android/AdDisplay;->getDistanceHtml(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 131
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/vpon/adon/android/AdDisplay;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 138
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 144
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 150
    return-void
.end method
