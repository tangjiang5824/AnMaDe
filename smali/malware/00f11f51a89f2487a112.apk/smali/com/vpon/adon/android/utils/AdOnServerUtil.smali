.class public Lcom/vpon/adon/android/utils/AdOnServerUtil;
.super Ljava/lang/Object;
.source "AdOnServerUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printErrorLog(I)V
    .locals 3
    .param p0, "state"    # I

    .prologue
    const-string v2, "AdOn SDK error"

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 30
    :pswitch_0
    const-string v1, "AdOn SDK error"

    const-string v1, "unKnow error"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "errorValue":Ljava/lang/String;
    const-string v1, "AdOn SDK state is "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .end local v0    # "errorValue":Ljava/lang/String;
    :goto_0
    return-void

    .line 9
    :pswitch_1
    const-string v1, "AdOn SDK error"

    const-string v1, "application is using deprecated version of sdk"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12
    :pswitch_2
    const-string v1, "AdOn SDK error"

    const-string v1, "device not support"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :pswitch_3
    const-string v1, "AdOn SDK error"

    const-string v1, "application is not sending the (Lat,Lon) pair or cellId pair to server"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 18
    :pswitch_4
    const-string v1, "AdOn SDK error"

    const-string v1, "application is using unknown license key"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 21
    :pswitch_5
    const-string v1, "AdOn SDK error"

    const-string v1, "license key is blocked administratively"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 24
    :pswitch_6
    const-string v1, "AdOn SDK error"

    const-string v1, "application is using wrong license key"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 27
    :pswitch_7
    const-string v1, "AdOn SDK error"

    const-string v1, "application is examining"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
