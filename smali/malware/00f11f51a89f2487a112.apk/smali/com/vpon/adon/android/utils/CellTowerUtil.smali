.class public Lcom/vpon/adon/android/utils/CellTowerUtil;
.super Ljava/lang/Object;
.source "CellTowerUtil.java"


# static fields
.field private static instance:Lcom/vpon/adon/android/utils/CellTowerUtil;


# instance fields
.field private cellId:Ljava/lang/String;

.field private lac:Ljava/lang/String;

.field private mcc:Ljava/lang/String;

.field private mnc:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_0
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 23
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 25
    .local v3, "telephoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "networkOperator":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vpon/adon/android/utils/CellTowerUtil;->mcc:Ljava/lang/String;

    .line 28
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vpon/adon/android/utils/CellTowerUtil;->mnc:Ljava/lang/String;

    .line 30
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 31
    .local v1, "gsmCellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vpon/adon/android/utils/CellTowerUtil;->cellId:Ljava/lang/String;

    .line 32
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vpon/adon/android/utils/CellTowerUtil;->lac:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1    # "gsmCellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .end local v2    # "networkOperator":Ljava/lang/String;
    .end local v3    # "telephoneManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public static instance(Landroid/content/Context;)Lcom/vpon/adon/android/utils/CellTowerUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance:Lcom/vpon/adon/android/utils/CellTowerUtil;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/vpon/adon/android/utils/CellTowerUtil;

    invoke-direct {v0, p0}, Lcom/vpon/adon/android/utils/CellTowerUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance:Lcom/vpon/adon/android/utils/CellTowerUtil;

    .line 44
    :cond_0
    sget-object v0, Lcom/vpon/adon/android/utils/CellTowerUtil;->instance:Lcom/vpon/adon/android/utils/CellTowerUtil;

    return-object v0
.end method


# virtual methods
.method public getCellId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vpon/adon/android/utils/CellTowerUtil;->cellId:Ljava/lang/String;

    return-object v0
.end method

.method public getLac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vpon/adon/android/utils/CellTowerUtil;->lac:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vpon/adon/android/utils/CellTowerUtil;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vpon/adon/android/utils/CellTowerUtil;->mnc:Ljava/lang/String;

    return-object v0
.end method
