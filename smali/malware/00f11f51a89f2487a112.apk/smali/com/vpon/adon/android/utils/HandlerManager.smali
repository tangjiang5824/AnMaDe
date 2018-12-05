.class public final Lcom/vpon/adon/android/utils/HandlerManager;
.super Ljava/lang/Object;
.source "HandlerManager.java"


# static fields
.field private static handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static clearHandler()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/vpon/adon/android/utils/HandlerManager;->handler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method public static crtHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/vpon/adon/android/utils/HandlerManager;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/vpon/adon/android/utils/HandlerManager;->handler:Landroid/os/Handler;

    .line 19
    :cond_0
    sget-object v0, Lcom/vpon/adon/android/utils/HandlerManager;->handler:Landroid/os/Handler;

    return-object v0
.end method
