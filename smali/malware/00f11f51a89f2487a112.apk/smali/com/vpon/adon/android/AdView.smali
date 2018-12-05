.class public final Lcom/vpon/adon/android/AdView;
.super Landroid/widget/RelativeLayout;
.source "AdView.java"


# instance fields
.field private adListener:Lcom/vpon/adon/android/AdListener;

.field private adRefreshCount:Ljava/lang/Runnable;

.field private adRefreshHandler:Landroid/os/Handler;

.field private connectHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private currentAd:Lcom/vpon/adon/android/entity/Ad;

.field private currentAdDisplay:Lcom/vpon/adon/android/AdDisplay;

.field private isAutoRefreshAd:Z

.field private isLive:Z

.field private isPause:Z

.field private licenseKey:Ljava/lang/String;

.field private nextAd:Lcom/vpon/adon/android/entity/Ad;

.field private nextAdDisplay:Lcom/vpon/adon/android/AdDisplay;

.field private platform:Lcom/vpon/adon/android/AdOnPlatform;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/vpon/adon/android/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vpon/adon/android/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput-object v1, p0, Lcom/vpon/adon/android/AdView;->licenseKey:Ljava/lang/String;

    .line 19
    iput-boolean v0, p0, Lcom/vpon/adon/android/AdView;->isLive:Z

    .line 20
    iput-boolean v0, p0, Lcom/vpon/adon/android/AdView;->isPause:Z

    .line 26
    iput-object v1, p0, Lcom/vpon/adon/android/AdView;->nextAd:Lcom/vpon/adon/android/entity/Ad;

    .line 27
    iput-object v1, p0, Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;

    .line 28
    iput-object v1, p0, Lcom/vpon/adon/android/AdView;->currentAdDisplay:Lcom/vpon/adon/android/AdDisplay;

    .line 29
    iput-object v1, p0, Lcom/vpon/adon/android/AdView;->nextAdDisplay:Lcom/vpon/adon/android/AdDisplay;

    .line 30
    iput-boolean v0, p0, Lcom/vpon/adon/android/AdView;->isAutoRefreshAd:Z

    .line 112
    new-instance v0, Lcom/vpon/adon/android/AdView$1;

    invoke-direct {v0, p0}, Lcom/vpon/adon/android/AdView$1;-><init>(Lcom/vpon/adon/android/AdView;)V

    iput-object v0, p0, Lcom/vpon/adon/android/AdView;->adRefreshCount:Ljava/lang/Runnable;

    .line 54
    iput-object v1, p0, Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;

    .line 55
    iput-object v1, p0, Lcom/vpon/adon/android/AdView;->nextAd:Lcom/vpon/adon/android/entity/Ad;

    .line 56
    iput-object p1, p0, Lcom/vpon/adon/android/AdView;->context:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vpon/adon/android/AdView;->connectHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/vpon/adon/android/AdDisplay;

    invoke-direct {v0, p1, p0}, Lcom/vpon/adon/android/AdDisplay;-><init>(Landroid/content/Context;Lcom/vpon/adon/android/AdView;)V

    iput-object v0, p0, Lcom/vpon/adon/android/AdView;->currentAdDisplay:Lcom/vpon/adon/android/AdDisplay;

    .line 59
    iget-object v0, p0, Lcom/vpon/adon/android/AdView;->currentAdDisplay:Lcom/vpon/adon/android/AdDisplay;

    invoke-virtual {p0, v0}, Lcom/vpon/adon/android/AdView;->addView(Landroid/view/View;)V

    .line 60
    invoke-static {p1}, Lcom/vpon/adon/android/AdManager;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/AdManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vpon/adon/android/AdManager;->addAdView(Lcom/vpon/adon/android/AdView;)V

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/vpon/adon/android/AdView;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/vpon/adon/android/AdView;->isAutoRefreshAd:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vpon/adon/android/AdView;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/vpon/adon/android/AdView;->isLive:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vpon/adon/android/AdView;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/vpon/adon/android/AdView;->isPause:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vpon/adon/android/AdView;)Lcom/vpon/adon/android/entity/Ad;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vpon/adon/android/AdView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vpon/adon/android/AdView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vpon/adon/android/AdView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vpon/adon/android/AdView;->connectHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vpon/adon/android/AdView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vpon/adon/android/AdView;->adRefreshHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vpon/adon/android/AdView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vpon/adon/android/AdView;->adRefreshCount:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getAdError()V
    .locals 3

    .prologue
    const/16 v2, 0x78

    .line 219
    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->adListener:Lcom/vpon/adon/android/AdListener;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->adListener:Lcom/vpon/adon/android/AdListener;

    invoke-interface {v1, p0}, Lcom/vpon/adon/android/AdListener;->onFailedToRecevieAd(Lcom/vpon/adon/android/AdView;)V

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v1, v2}, Lcom/vpon/adon/android/entity/Ad;->setRefreshTime(I)V

    .line 247
    :goto_0
    return-void

    .line 235
    :cond_1
    new-instance v0, Lcom/vpon/adon/android/entity/Ad;

    invoke-direct {v0}, Lcom/vpon/adon/android/entity/Ad;-><init>()V

    .line 241
    .local v0, "nextAd":Lcom/vpon/adon/android/entity/Ad;
    invoke-virtual {v0, v2}, Lcom/vpon/adon/android/entity/Ad;->setRefreshTime(I)V

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;

    .line 245
    iput-object v0, p0, Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;

    goto :goto_0
.end method


# virtual methods
.method displayNextAd(Lcom/vpon/adon/android/entity/Ad;)V
    .locals 4
    .param p1, "ad"    # Lcom/vpon/adon/android/entity/Ad;

    .prologue
    .line 177
    const-string v2, "AdView"

    const-string v3, "displayNextAd"

    invoke-static {v2, v3}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    if-nez p1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/vpon/adon/android/AdView;->getAdError()V

    .line 213
    :goto_0
    return-void

    .line 191
    :cond_0
    iput-object p1, p0, Lcom/vpon/adon/android/AdView;->nextAd:Lcom/vpon/adon/android/entity/Ad;

    .line 198
    :try_start_0
    new-instance v2, Lcom/vpon/adon/android/AdDisplay;

    iget-object v3, p0, Lcom/vpon/adon/android/AdView;->context:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/vpon/adon/android/AdDisplay;-><init>(Landroid/content/Context;Lcom/vpon/adon/android/AdView;)V

    iput-object v2, p0, Lcom/vpon/adon/android/AdView;->nextAdDisplay:Lcom/vpon/adon/android/AdDisplay;

    .line 199
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/vpon/adon/android/AdView;->nextAd:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v2}, Lcom/vpon/adon/android/entity/Ad;->getAdWidth()I

    move-result v2

    iget-object v3, p0, Lcom/vpon/adon/android/AdView;->nextAd:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v3}, Lcom/vpon/adon/android/entity/Ad;->getAdHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 200
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 201
    iget-object v2, p0, Lcom/vpon/adon/android/AdView;->nextAdDisplay:Lcom/vpon/adon/android/AdDisplay;

    invoke-virtual {v2, v1}, Lcom/vpon/adon/android/AdDisplay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v2, p0, Lcom/vpon/adon/android/AdView;->nextAdDisplay:Lcom/vpon/adon/android/AdDisplay;

    iget-object v3, p0, Lcom/vpon/adon/android/AdView;->nextAd:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v2, v3, p0}, Lcom/vpon/adon/android/AdDisplay;->displayNextAd(Lcom/vpon/adon/android/entity/Ad;Lcom/vpon/adon/android/AdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/vpon/adon/android/AdView;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/vpon/adon/android/AdManager;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/AdManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/vpon/adon/android/AdManager;->performErrorRequester(Lcom/vpon/adon/android/AdView;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/vpon/adon/android/AdView;->getAdError()V

    goto :goto_0
.end method

.method public getLicenseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/vpon/adon/android/AdView;->licenseKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Lcom/vpon/adon/android/AdOnPlatform;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/vpon/adon/android/AdView;->platform:Lcom/vpon/adon/android/AdOnPlatform;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "2.1.1"

    return-object v0
.end method

.method onRecivedAd()V
    .locals 4

    .prologue
    const-string v3, "width"

    .line 255
    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->currentAdDisplay:Lcom/vpon/adon/android/AdDisplay;

    invoke-virtual {p0, v1}, Lcom/vpon/adon/android/AdView;->removeView(Landroid/view/View;)V

    .line 256
    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->nextAd:Lcom/vpon/adon/android/entity/Ad;

    iput-object v1, p0, Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;

    .line 257
    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->nextAdDisplay:Lcom/vpon/adon/android/AdDisplay;

    iput-object v1, p0, Lcom/vpon/adon/android/AdView;->currentAdDisplay:Lcom/vpon/adon/android/AdDisplay;

    .line 259
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v1}, Lcom/vpon/adon/android/entity/Ad;->getAdWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v2}, Lcom/vpon/adon/android/entity/Ad;->getAdHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 260
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 262
    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->currentAdDisplay:Lcom/vpon/adon/android/AdDisplay;

    invoke-virtual {p0, v1, v0}, Lcom/vpon/adon/android/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    const-string v1, "width"

    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v1}, Lcom/vpon/adon/android/entity/Ad;->getAdWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "width"

    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v1}, Lcom/vpon/adon/android/entity/Ad;->getAdHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vpon/adon/android/utils/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->adListener:Lcom/vpon/adon/android/AdListener;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->adListener:Lcom/vpon/adon/android/AdListener;

    invoke-interface {v1, p0}, Lcom/vpon/adon/android/AdListener;->onRecevieAd(Lcom/vpon/adon/android/AdView;)V

    .line 269
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    const/4 v0, 0x0

    .line 276
    sparse-switch p1, :sswitch_data_0

    .line 290
    :goto_0
    return-void

    .line 279
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vpon/adon/android/AdView;->isLive:Z

    goto :goto_0

    .line 283
    :sswitch_1
    iput-boolean v0, p0, Lcom/vpon/adon/android/AdView;->isLive:Z

    goto :goto_0

    .line 287
    :sswitch_2
    iput-boolean v0, p0, Lcom/vpon/adon/android/AdView;->isLive:Z

    goto :goto_0

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public pauseAdAutoRefresh()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vpon/adon/android/AdView;->isPause:Z

    .line 144
    return-void
.end method

.method performAdManagerAddClickResp()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vpon/adon/android/AdView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vpon/adon/android/AdManager;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v0, p0, v1}, Lcom/vpon/adon/android/AdManager;->performClickRequester(Lcom/vpon/adon/android/AdView;Lcom/vpon/adon/android/entity/Ad;)V

    .line 163
    return-void
.end method

.method performAdManagerErrorRequester(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vpon/adon/android/AdView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vpon/adon/android/AdManager;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/AdManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/vpon/adon/android/AdManager;->performErrorRequester(Lcom/vpon/adon/android/AdView;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public refreshAd()V
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpon/adon/android/AdView;->isAutoRefreshAd:Z

    .line 106
    iget-object v0, p0, Lcom/vpon/adon/android/AdView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vpon/adon/android/AdManager;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->connectHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Lcom/vpon/adon/android/AdManager;->performAdRequester(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;)V

    .line 107
    return-void
.end method

.method public restartAdAutoRefresh()V
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/vpon/adon/android/AdView;->isAutoRefreshAd:Z

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpon/adon/android/AdView;->isPause:Z

    .line 155
    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/vpon/adon/android/AdListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vpon/adon/android/AdListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/vpon/adon/android/AdView;->adListener:Lcom/vpon/adon/android/AdListener;

    .line 98
    return-void
.end method

.method public setLicenseKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "licenseKey"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/vpon/adon/android/AdView;->licenseKey:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setLicenseKey(Ljava/lang/String;Lcom/vpon/adon/android/AdOnPlatform;Z)V
    .locals 2
    .param p1, "licenseKey"    # Ljava/lang/String;
    .param p2, "platform"    # Lcom/vpon/adon/android/AdOnPlatform;
    .param p3, "autoRefreshAd"    # Z

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vpon/adon/android/AdView;->licenseKey:Ljava/lang/String;

    .line 78
    iput-boolean p3, p0, Lcom/vpon/adon/android/AdView;->isAutoRefreshAd:Z

    .line 79
    iput-object p2, p0, Lcom/vpon/adon/android/AdView;->platform:Lcom/vpon/adon/android/AdOnPlatform;

    .line 82
    iget-object v0, p0, Lcom/vpon/adon/android/AdView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vpon/adon/android/AdManager;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->connectHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Lcom/vpon/adon/android/AdManager;->performAdRequester(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;)V

    .line 84
    iget-object v0, p0, Lcom/vpon/adon/android/AdView;->adRefreshHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vpon/adon/android/AdView;->adRefreshHandler:Landroid/os/Handler;

    .line 86
    iget-object v0, p0, Lcom/vpon/adon/android/AdView;->adRefreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vpon/adon/android/AdView;->adRefreshCount:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    :cond_0
    return-void
.end method
