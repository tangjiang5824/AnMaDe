.class public Lcom/admob/android/ads/InterstitialAd$c;
.super Ljava/lang/Object;
.source "TestLog.java"

# interfaces
.implements Lcom/admob/android/ads/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Lcom/admob/android/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/admob/android/ads/InterstitialAd;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/admob/android/ads/InterstitialAd$c;->a:Lcom/admob/android/ads/InterstitialAd;

    .line 112
    return-void
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15
    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    move v0, v2

    :goto_0
    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$c;->a:Lcom/admob/android/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$c;->a:Lcom/admob/android/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/admob/android/ads/InterstitialAd;->c()V

    .line 126
    :cond_0
    return-void
.end method

.method public final a(Lcom/admob/android/ads/j;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$c;->a:Lcom/admob/android/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$c;->a:Lcom/admob/android/ads/InterstitialAd;

    invoke-static {v0, p1}, Lcom/admob/android/ads/InterstitialAd;->a(Lcom/admob/android/ads/InterstitialAd;Lcom/admob/android/ads/j;)V

    .line 134
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$c;->a:Lcom/admob/android/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/admob/android/ads/InterstitialAd;->a()V

    .line 136
    :cond_0
    return-void
.end method
