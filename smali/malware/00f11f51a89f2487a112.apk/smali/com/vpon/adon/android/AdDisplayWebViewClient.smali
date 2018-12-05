.class final Lcom/vpon/adon/android/AdDisplayWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdDisplayWebViewClient.java"


# instance fields
.field private ad:Lcom/vpon/adon/android/entity/Ad;

.field private adView:Lcom/vpon/adon/android/AdView;

.field private context:Landroid/content/Context;

.field private firstCallBack:Z


# direct methods
.method public constructor <init>(Lcom/vpon/adon/android/AdView;Lcom/vpon/adon/android/entity/Ad;Landroid/content/Context;)V
    .locals 2
    .param p1, "adView"    # Lcom/vpon/adon/android/AdView;
    .param p2, "ad"    # Lcom/vpon/adon/android/entity/Ad;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "AdDisplayWebViewClient"

    .line 18
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vpon/adon/android/AdDisplayWebViewClient;->firstCallBack:Z

    .line 19
    const-string v0, "AdDisplayWebViewClient"

    const-string v0, "AdDisplayWebViewClient"

    invoke-static {v1, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/vpon/adon/android/AdDisplayWebViewClient;->adView:Lcom/vpon/adon/android/AdView;

    .line 21
    iput-object p2, p0, Lcom/vpon/adon/android/AdDisplayWebViewClient;->ad:Lcom/vpon/adon/android/entity/Ad;

    .line 22
    iput-object p3, p0, Lcom/vpon/adon/android/AdDisplayWebViewClient;->context:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "AdDisplayWebViewClient"

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-boolean v0, p0, Lcom/vpon/adon/android/AdDisplayWebViewClient;->firstCallBack:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/vpon/adon/android/AdDisplayWebViewClient;->adView:Lcom/vpon/adon/android/AdView;

    invoke-virtual {v0}, Lcom/vpon/adon/android/AdView;->onRecivedAd()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpon/adon/android/AdDisplayWebViewClient;->firstCallBack:Z

    .line 39
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 47
    iget-object v1, p0, Lcom/vpon/adon/android/AdDisplayWebViewClient;->ad:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v1}, Lcom/vpon/adon/android/entity/Ad;->getClickStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v0, Lcom/vpon/adon/android/webClientHandler/TelHandler;

    new-instance v1, Lcom/vpon/adon/android/webClientHandler/SmsHandler;

    new-instance v2, Lcom/vpon/adon/android/webClientHandler/MailHandler;

    new-instance v3, Lcom/vpon/adon/android/webClientHandler/AndroidMarketHandler;

    new-instance v4, Lcom/vpon/adon/android/webClientHandler/WebAndMapHandler;

    new-instance v5, Lcom/vpon/adon/android/webClientHandler/RedirectHandler;

    invoke-direct {v5, v6}, Lcom/vpon/adon/android/webClientHandler/RedirectHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v4, v5}, Lcom/vpon/adon/android/webClientHandler/WebAndMapHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v3, v4}, Lcom/vpon/adon/android/webClientHandler/AndroidMarketHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v2, v3}, Lcom/vpon/adon/android/webClientHandler/MailHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v1, v2}, Lcom/vpon/adon/android/webClientHandler/SmsHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v0, v1}, Lcom/vpon/adon/android/webClientHandler/TelHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    .line 52
    .local v0, "handler":Lcom/vpon/adon/android/webClientHandler/WebClientHandler;
    iget-object v1, p0, Lcom/vpon/adon/android/AdDisplayWebViewClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vpon/adon/android/AdDisplayWebViewClient;->ad:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v0, v1, v2, p2}, Lcom/vpon/adon/android/webClientHandler/WebClientHandler;->doNext(Landroid/content/Context;Lcom/vpon/adon/android/entity/Ad;Ljava/lang/String;)Z

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 55
    .end local v0    # "handler":Lcom/vpon/adon/android/webClientHandler/WebClientHandler;
    :cond_0
    iget-object v1, p0, Lcom/vpon/adon/android/AdDisplayWebViewClient;->ad:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v1}, Lcom/vpon/adon/android/entity/Ad;->setClicked()V

    .line 57
    iget-object v1, p0, Lcom/vpon/adon/android/AdDisplayWebViewClient;->adView:Lcom/vpon/adon/android/AdView;

    invoke-virtual {v1}, Lcom/vpon/adon/android/AdView;->performAdManagerAddClickResp()V

    .line 59
    new-instance v0, Lcom/vpon/adon/android/webClientHandler/TelHandler;

    new-instance v1, Lcom/vpon/adon/android/webClientHandler/SmsHandler;

    new-instance v2, Lcom/vpon/adon/android/webClientHandler/MailHandler;

    new-instance v3, Lcom/vpon/adon/android/webClientHandler/AndroidMarketHandler;

    new-instance v4, Lcom/vpon/adon/android/webClientHandler/WebAndMapHandler;

    new-instance v5, Lcom/vpon/adon/android/webClientHandler/RedirectHandler;

    invoke-direct {v5, v6}, Lcom/vpon/adon/android/webClientHandler/RedirectHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v4, v5}, Lcom/vpon/adon/android/webClientHandler/WebAndMapHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v3, v4}, Lcom/vpon/adon/android/webClientHandler/AndroidMarketHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v2, v3}, Lcom/vpon/adon/android/webClientHandler/MailHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v1, v2}, Lcom/vpon/adon/android/webClientHandler/SmsHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v0, v1}, Lcom/vpon/adon/android/webClientHandler/TelHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    .line 61
    .restart local v0    # "handler":Lcom/vpon/adon/android/webClientHandler/WebClientHandler;
    iget-object v1, p0, Lcom/vpon/adon/android/AdDisplayWebViewClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vpon/adon/android/AdDisplayWebViewClient;->ad:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v0, v1, v2, p2}, Lcom/vpon/adon/android/webClientHandler/WebClientHandler;->doNext(Landroid/content/Context;Lcom/vpon/adon/android/entity/Ad;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
