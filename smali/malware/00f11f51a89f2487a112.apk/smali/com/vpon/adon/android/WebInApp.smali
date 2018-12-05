.class public Lcom/vpon/adon/android/WebInApp;
.super Landroid/app/Activity;
.source "WebInApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpon/adon/android/WebInApp$WebState;
    }
.end annotation


# instance fields
.field private adOnWebChromeClient:Lcom/vpon/adon/android/WebInAppWebChromeClient;

.field private button:Landroid/widget/Button;

.field private customView:Landroid/view/View;

.field private mainView:Landroid/widget/RelativeLayout;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vpon/adon/android/WebInApp;)Lcom/vpon/adon/android/WebInAppWebChromeClient;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vpon/adon/android/WebInApp;->adOnWebChromeClient:Lcom/vpon/adon/android/WebInAppWebChromeClient;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/vpon/adon/android/WebInApp;->requestWindowFeature(I)Z

    .line 38
    invoke-virtual {p0}, Lcom/vpon/adon/android/WebInApp;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x400

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 39
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-direct {v9, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/vpon/adon/android/WebInApp;->mainView:Landroid/widget/RelativeLayout;

    .line 40
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->mainView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v9}, Lcom/vpon/adon/android/WebInApp;->setContentView(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lcom/vpon/adon/android/WebInApp;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 45
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v9, "url"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Lcom/vpon/adon/android/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/vpon/adon/android/WebInApp;->finish()V

    .line 51
    :cond_0
    new-instance v7, Landroid/widget/ProgressBar;

    invoke-direct {v7, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 52
    .local v7, "progressBar":Landroid/widget/ProgressBar;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v6, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xd

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54
    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->mainView:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 57
    new-instance v9, Landroid/webkit/WebView;

    invoke-direct {v9, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/vpon/adon/android/WebInApp;->webView:Landroid/webkit/WebView;

    .line 58
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->webView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 59
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->webView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 60
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->webView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 61
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->webView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 62
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->webView:Landroid/webkit/WebView;

    invoke-virtual {v9, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 63
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->mainView:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/vpon/adon/android/WebInApp;->webView:Landroid/webkit/WebView;

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    const-string v9, "adWidth"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, "adWidth":I
    const-string v3, ""

    .line 68
    .local v3, "buttonImagePath":Ljava/lang/String;
    const/16 v9, 0x1e0

    if-ne v0, v9, :cond_1

    .line 69
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0x4b

    const/16 v10, 0x4b

    invoke-direct {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v5, "buttonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const-string v3, "/close75.png"

    .line 76
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 77
    .local v4, "buttonImageStream":Ljava/io/InputStream;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 79
    .local v2, "buttonImageDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/vpon/adon/android/WebInApp;->button:Landroid/widget/Button;

    .line 80
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->button:Landroid/widget/Button;

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->button:Landroid/widget/Button;

    invoke-virtual {v9, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->button:Landroid/widget/Button;

    new-instance v10, Lcom/vpon/adon/android/WebInApp$1;

    invoke-direct {v10, p0}, Lcom/vpon/adon/android/WebInApp$1;-><init>(Lcom/vpon/adon/android/WebInApp;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->mainView:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/vpon/adon/android/WebInApp;->button:Landroid/widget/Button;

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance v9, Lcom/vpon/adon/android/WebInAppWebChromeClient;

    iget-object v10, p0, Lcom/vpon/adon/android/WebInApp;->customView:Landroid/view/View;

    iget-object v11, p0, Lcom/vpon/adon/android/WebInApp;->mainView:Landroid/widget/RelativeLayout;

    iget-object v12, p0, Lcom/vpon/adon/android/WebInApp;->webView:Landroid/webkit/WebView;

    iget-object v13, p0, Lcom/vpon/adon/android/WebInApp;->button:Landroid/widget/Button;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/vpon/adon/android/WebInAppWebChromeClient;-><init>(Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/webkit/WebView;Landroid/widget/Button;)V

    iput-object v9, p0, Lcom/vpon/adon/android/WebInApp;->adOnWebChromeClient:Lcom/vpon/adon/android/WebInAppWebChromeClient;

    .line 95
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->adOnWebChromeClient:Lcom/vpon/adon/android/WebInAppWebChromeClient;

    sget-object v10, Lcom/vpon/adon/android/WebInApp$WebState;->WEBVIEW:Lcom/vpon/adon/android/WebInApp$WebState;

    invoke-virtual {v9, v10}, Lcom/vpon/adon/android/WebInAppWebChromeClient;->setWebState(Lcom/vpon/adon/android/WebInApp$WebState;)V

    .line 96
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->webView:Landroid/webkit/WebView;

    iget-object v10, p0, Lcom/vpon/adon/android/WebInApp;->adOnWebChromeClient:Lcom/vpon/adon/android/WebInAppWebChromeClient;

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 97
    iget-object v9, p0, Lcom/vpon/adon/android/WebInApp;->webView:Landroid/webkit/WebView;

    new-instance v10, Lcom/vpon/adon/android/WebInAppWebClient;

    invoke-direct {v10, p0}, Lcom/vpon/adon/android/WebInAppWebClient;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 98
    return-void

    .line 72
    .end local v2    # "buttonImageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "buttonImageStream":Ljava/io/InputStream;
    .end local v5    # "buttonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0x32

    const/16 v10, 0x32

    invoke-direct {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73
    .restart local v5    # "buttonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const-string v3, "/close50.png"

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 119
    :goto_0
    return v2

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/vpon/adon/android/WebInApp;->adOnWebChromeClient:Lcom/vpon/adon/android/WebInAppWebChromeClient;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/vpon/adon/android/WebInApp;->adOnWebChromeClient:Lcom/vpon/adon/android/WebInAppWebChromeClient;

    invoke-virtual {v0}, Lcom/vpon/adon/android/WebInAppWebChromeClient;->onCustomViewHidden()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/vpon/adon/android/WebInApp;->adOnWebChromeClient:Lcom/vpon/adon/android/WebInAppWebChromeClient;

    invoke-virtual {v0}, Lcom/vpon/adon/android/WebInAppWebChromeClient;->isCustomViewState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/vpon/adon/android/WebInApp;->adOnWebChromeClient:Lcom/vpon/adon/android/WebInAppWebChromeClient;

    sget-object v1, Lcom/vpon/adon/android/WebInApp$WebState;->WEBVIEW:Lcom/vpon/adon/android/WebInApp$WebState;

    invoke-virtual {v0, v1}, Lcom/vpon/adon/android/WebInAppWebChromeClient;->setWebState(Lcom/vpon/adon/android/WebInApp$WebState;)V

    .line 110
    iget-object v0, p0, Lcom/vpon/adon/android/WebInApp;->mainView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vpon/adon/android/WebInApp;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/vpon/adon/android/WebInApp;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/vpon/adon/android/WebInApp;->button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/vpon/adon/android/WebInApp;->finish()V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
