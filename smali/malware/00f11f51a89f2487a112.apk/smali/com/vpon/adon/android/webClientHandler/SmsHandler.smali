.class public Lcom/vpon/adon/android/webClientHandler/SmsHandler;
.super Lcom/vpon/adon/android/webClientHandler/WebClientHandler;
.source "SmsHandler.java"


# direct methods
.method public constructor <init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V
    .locals 0
    .param p1, "next"    # Lcom/vpon/adon/android/webClientHandler/WebClientHandler;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/vpon/adon/android/webClientHandler/WebClientHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    .line 21
    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Lcom/vpon/adon/android/entity/Ad;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ad"    # Lcom/vpon/adon/android/entity/Ad;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "android.intent.action.SENDTO"

    .line 26
    const-string v5, "sms://"

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 28
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 29
    .local v4, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    invoke-direct {v0, v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "body="

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "smsInfo":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 36
    aget-object v5, v2, v8

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 38
    aget-object v5, v2, v8

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v3, v5, v7

    .line 39
    .local v3, "smsRecevicer":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "smsto:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 42
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.SENDTO"

    invoke-direct {v0, v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 44
    .restart local v0    # "intent":Landroid/content/Intent;
    aget-object v1, v2, v7

    .line 45
    .local v1, "smsBody":Ljava/lang/String;
    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v5, "sms_body"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .end local v1    # "smsBody":Ljava/lang/String;
    .end local v3    # "smsRecevicer":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v5, v7

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "smsInfo":[Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/vpon/adon/android/webClientHandler/SmsHandler;->doNext(Landroid/content/Context;Lcom/vpon/adon/android/entity/Ad;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0
.end method
