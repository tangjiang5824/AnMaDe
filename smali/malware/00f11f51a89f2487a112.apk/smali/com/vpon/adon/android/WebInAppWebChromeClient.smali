.class final Lcom/vpon/adon/android/WebInAppWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebInAppWebChromeClient.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$vpon$adon$android$WebInApp$WebState:[I


# instance fields
.field private button:Landroid/widget/Button;

.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mainView:Landroid/widget/RelativeLayout;

.field private webState:Lcom/vpon/adon/android/WebInApp$WebState;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$vpon$adon$android$WebInApp$WebState()[I
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->$SWITCH_TABLE$com$vpon$adon$android$WebInApp$WebState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/vpon/adon/android/WebInApp$WebState;->values()[Lcom/vpon/adon/android/WebInApp$WebState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/vpon/adon/android/WebInApp$WebState;->CUSTOMVIEW:Lcom/vpon/adon/android/WebInApp$WebState;

    invoke-virtual {v1}, Lcom/vpon/adon/android/WebInApp$WebState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/vpon/adon/android/WebInApp$WebState;->WEBVIEW:Lcom/vpon/adon/android/WebInApp$WebState;

    invoke-virtual {v1}, Lcom/vpon/adon/android/WebInApp$WebState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->$SWITCH_TABLE$com$vpon$adon$android$WebInApp$WebState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/webkit/WebView;Landroid/widget/Button;)V
    .locals 0
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "mainView"    # Landroid/widget/RelativeLayout;
    .param p3, "webView"    # Landroid/webkit/WebView;
    .param p4, "button"    # Landroid/widget/Button;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->customView:Landroid/view/View;

    .line 31
    iput-object p2, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->mainView:Landroid/widget/RelativeLayout;

    .line 32
    iput-object p3, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->webView:Landroid/webkit/WebView;

    .line 33
    iput-object p4, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->button:Landroid/widget/Button;

    .line 34
    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 38
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "getDefaultVideoPoster"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    .prologue
    .line 44
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "getVideoLoadingProgressView"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "getVisitedHistory"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public isCustomViewState()Z
    .locals 3

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "isCustomView":Z
    invoke-static {}, Lcom/vpon/adon/android/WebInAppWebChromeClient;->$SWITCH_TABLE$com$vpon$adon$android$WebInApp$WebState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->webState:Lcom/vpon/adon/android/WebInApp$WebState;

    invoke-virtual {v2}, Lcom/vpon/adon/android/WebInApp$WebState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 217
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    .line 213
    :pswitch_0
    const/4 v0, 0x1

    .line 214
    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 56
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onCloseWindow"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onConsoleMessage"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 67
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onConsoleMessage"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dialog"    # Z
    .param p3, "userGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 74
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onCreateWindow"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onCustomViewHidden()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 207
    :cond_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "currentQuota"    # J
    .param p5, "estimatedSize"    # J
    .param p7, "totalUsedQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 84
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 86
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onExceededDatabaseQuota"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 99
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onGeolocationPermissionShowPrompt"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onHideCustomView()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onHideCustomView"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 106
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 111
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onJsAlert"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 118
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onJsBeforeUnlod"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 125
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onJsConfirm"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 133
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onJsPrompt"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public onJsTimeout()Z
    .locals 2

    .prologue
    .line 140
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onJsTimeOut"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 148
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onProgressChanged"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2
    .param p1, "spaceNeeded"    # J
    .param p3, "totalUsedQuota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 154
    const-wide/16 v0, 0x0

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 156
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onReachedMaxAppCacheSize"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 164
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 170
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .prologue
    .line 175
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onRecieveTouchIconUrl"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 181
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onRequestFocus"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    const/4 v4, 0x4

    const/4 v3, -0x1

    .line 187
    const-string v0, "AdOnWebChromeClient"

    const-string v1, "onShowCustomView"

    invoke-static {v0, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->customView:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->mainView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->customView:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iput-object p2, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 192
    sget-object v0, Lcom/vpon/adon/android/WebInApp$WebState;->CUSTOMVIEW:Lcom/vpon/adon/android/WebInApp$WebState;

    iput-object v0, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->webState:Lcom/vpon/adon/android/WebInApp$WebState;

    .line 193
    iget-object v0, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->button:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    return-void
.end method

.method public setWebState(Lcom/vpon/adon/android/WebInApp$WebState;)V
    .locals 0
    .param p1, "webState"    # Lcom/vpon/adon/android/WebInApp$WebState;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/vpon/adon/android/WebInAppWebChromeClient;->webState:Lcom/vpon/adon/android/WebInApp$WebState;

    .line 225
    return-void
.end method
