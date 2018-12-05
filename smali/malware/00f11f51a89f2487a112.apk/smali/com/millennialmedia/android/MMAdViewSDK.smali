.class public final Lcom/millennialmedia/android/MMAdViewSDK;
.super Ljava/lang/Object;
.source "MMAdViewSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdViewSDK$Log;
    }
.end annotation


# static fields
.field static final BASEURL:Ljava/lang/String; = "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"

.field public static final DEFAULT_APID:Ljava/lang/String; = "28911"

.field public static final DEFAULT_VIEWID:I = 0x711e41a1

.field static final ERR_BROKENREF:Ljava/lang/String; = "The reference to the ad view was broken."

.field static final ERR_NOACTIVITY:Ljava/lang/String; = "The ad view does not have a parent activity."

.field static final HTML:I = 0x2

.field static final IMAGE:I = 0x4

.field static final PACKAGE:I = 0x3

.field static final PREFS_NAME:Ljava/lang/String; = "MillennialMediaSettings"

.field public static final SDKLOG:Ljava/lang/String; = "MillennialMediaAdSDK"

.field public static final SDKVER:Ljava/lang/String; = "4.2.3-11.04.18.a"

.field static final VIDEO:I = 0x1

.field static connectivityManager:Landroid/net/ConnectivityManager;

.field public static logLevel:I

.field public static privateLogging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method
