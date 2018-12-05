.class public Lcom/vpon/adon/android/webClientHandler/WebAndMapHandler;
.super Lcom/vpon/adon/android/webClientHandler/WebClientHandler;
.source "WebAndMapHandler.java"


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
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ad"    # Lcom/vpon/adon/android/entity/Ad;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const-string v3, "&t=o"

    .line 26
    const-string v3, "http://"

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    :try_start_0
    const-string v3, "&t=o"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    const-string v3, "&t=o"

    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object p3, v3, v4

    .line 32
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 33
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 54
    :goto_1
    return v3

    .line 35
    :cond_1
    if-eqz p2, :cond_0

    .line 36
    const-string v3, "&t=i"

    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object p3, v3, v4

    .line 37
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/vpon/adon/android/WebInApp;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "url"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v3, "adWidth"

    invoke-virtual {p2}, Lcom/vpon/adon/android/entity/Ad;->getAdWidth()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 46
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 47
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/vpon/adon/android/webClientHandler/WebAndMapHandler;->doNext(Landroid/content/Context;Lcom/vpon/adon/android/entity/Ad;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1
.end method
