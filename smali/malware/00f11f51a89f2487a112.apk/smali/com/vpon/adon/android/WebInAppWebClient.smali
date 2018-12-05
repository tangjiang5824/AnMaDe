.class final Lcom/vpon/adon/android/WebInAppWebClient;
.super Landroid/webkit/WebViewClient;
.source "WebInAppWebClient.java"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/vpon/adon/android/WebInAppWebClient;->activity:Landroid/app/Activity;

    .line 13
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 17
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 21
    new-instance v0, Lcom/vpon/adon/android/webClientHandler/TelHandler;

    new-instance v1, Lcom/vpon/adon/android/webClientHandler/SmsHandler;

    new-instance v2, Lcom/vpon/adon/android/webClientHandler/MailHandler;

    new-instance v3, Lcom/vpon/adon/android/webClientHandler/AndroidMarketHandler;

    new-instance v4, Lcom/vpon/adon/android/webClientHandler/GoogleMapHandler;

    new-instance v5, Lcom/vpon/adon/android/webClientHandler/YoutubeHandler;

    invoke-direct {v5, v6}, Lcom/vpon/adon/android/webClientHandler/YoutubeHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v4, v5}, Lcom/vpon/adon/android/webClientHandler/GoogleMapHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v3, v4}, Lcom/vpon/adon/android/webClientHandler/AndroidMarketHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v2, v3}, Lcom/vpon/adon/android/webClientHandler/MailHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v1, v2}, Lcom/vpon/adon/android/webClientHandler/SmsHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    invoke-direct {v0, v1}, Lcom/vpon/adon/android/webClientHandler/TelHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    .line 22
    .local v0, "handler":Lcom/vpon/adon/android/webClientHandler/WebClientHandler;
    iget-object v1, p0, Lcom/vpon/adon/android/WebInAppWebClient;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v6, p2}, Lcom/vpon/adon/android/webClientHandler/WebClientHandler;->handle(Landroid/content/Context;Lcom/vpon/adon/android/entity/Ad;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
