.class public Lcom/vpon/adon/android/webClientHandler/RedirectHandler;
.super Lcom/vpon/adon/android/webClientHandler/WebClientHandler;
.source "RedirectHandler.java"


# direct methods
.method public constructor <init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V
    .locals 0
    .param p1, "next"    # Lcom/vpon/adon/android/webClientHandler/WebClientHandler;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/vpon/adon/android/webClientHandler/WebClientHandler;-><init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V

    .line 33
    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Lcom/vpon/adon/android/entity/Ad;Ljava/lang/String;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ad"    # Lcom/vpon/adon/android/entity/Ad;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const-string v6, "redir://"

    .line 37
    const-string v5, "redir://"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    const/4 v4, 0x0

    .line 44
    .local v4, "webViewState":I
    :try_start_0
    const-string v5, "redir?t=o"

    invoke-virtual {p3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 45
    const/4 v4, 0x0

    .line 50
    :goto_0
    const-string v5, "redir://"

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v3, v5, v6

    .line 51
    .local v3, "redirUrl":Ljava/lang/String;
    packed-switch v4, :pswitch_data_0

    .line 61
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/vpon/adon/android/utils/IOUtils;->instance()Lcom/vpon/adon/android/utils/IOUtils;

    move-result-object v6

    invoke-virtual {p2}, Lcom/vpon/adon/android/entity/Ad;->getAdRedirectPack()Lcom/vpon/adon/android/entity/AdRedirectPack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vpon/adon/android/entity/AdRedirectPack;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vpon/adon/android/utils/IOUtils;->getRedirectPackCryptoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    packed-switch v4, :pswitch_data_1

    .end local v3    # "redirUrl":Ljava/lang/String;
    :goto_2
    move v5, v8

    .line 118
    .end local v4    # "webViewState":I
    :goto_3
    return v5

    .line 47
    .restart local v4    # "webViewState":I
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 53
    .restart local v3    # "redirUrl":Ljava/lang/String;
    :pswitch_0
    const-string v5, "t=o"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v3, v5, v6

    .line 54
    goto :goto_1

    .line 57
    :pswitch_1
    const-string v5, "t=i"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v3, v5, v6

    goto :goto_1

    .line 67
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    goto :goto_2

    .line 84
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "redirUrl":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 86
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_2

    .line 73
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    .restart local v3    # "redirUrl":Ljava/lang/String;
    :pswitch_3
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/vpon/adon/android/WebInApp;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "url"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v5, "adWidth"

    invoke-virtual {p2}, Lcom/vpon/adon/android/entity/Ad;->getAdWidth()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    goto :goto_2

    .line 87
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "redirUrl":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 89
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .line 90
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 92
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_2

    .line 93
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 95
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_2

    .line 96
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v5

    move-object v1, v5

    .line 98
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_2

    .line 99
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v5

    move-object v1, v5

    .line 101
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_2

    .line 102
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_6
    move-exception v5

    move-object v1, v5

    .line 104
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 105
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    move-object v1, v5

    .line 107
    .local v1, "e":Ljava/security/NoSuchProviderException;
    invoke-virtual {v1}, Ljava/security/NoSuchProviderException;->printStackTrace()V

    goto :goto_2

    .line 108
    .end local v1    # "e":Ljava/security/NoSuchProviderException;
    :catch_8
    move-exception v5

    move-object v1, v5

    .line 110
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 111
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_9
    move-exception v5

    move-object v1, v5

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "webViewState":I
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/vpon/adon/android/webClientHandler/RedirectHandler;->doNext(Landroid/content/Context;Lcom/vpon/adon/android/entity/Ad;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_3

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 65
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
