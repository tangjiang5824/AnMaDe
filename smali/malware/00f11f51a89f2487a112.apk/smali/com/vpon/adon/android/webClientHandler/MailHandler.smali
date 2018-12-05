.class public Lcom/vpon/adon/android/webClientHandler/MailHandler;
.super Lcom/vpon/adon/android/webClientHandler/WebClientHandler;
.source "MailHandler.java"


# direct methods
.method public constructor <init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V
    .locals 0
    .param p1, "next"    # Lcom/vpon/adon/android/webClientHandler/WebClientHandler;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/vpon/adon/android/webClientHandler/WebClientHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    .line 19
    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Lcom/vpon/adon/android/entity/Ad;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ad"    # Lcom/vpon/adon/android/entity/Ad;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v2, "mailto:"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 26
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 27
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    const/4 v2, 0x1

    .line 32
    .end local v0    # "it":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vpon/adon/android/webClientHandler/MailHandler;->doNext(Landroid/content/Context;Lcom/vpon/adon/android/entity/Ad;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method
