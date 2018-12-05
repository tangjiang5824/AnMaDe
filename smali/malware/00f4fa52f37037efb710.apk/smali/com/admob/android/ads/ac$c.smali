.class final Lcom/admob/android/ads/ac$c;
.super Ljava/lang/Object;
.source "AdMobVideoViewNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/ac;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/ac$c;->a:Ljava/lang/ref/WeakReference;

    .line 105
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/admob/android/ads/ac$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/ac;

    .line 110
    if-nez p0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget v0, p0, Lcom/admob/android/ads/ac;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    invoke-virtual {v0}, Lcom/admob/android/ads/aa;->a()V

    goto :goto_0
.end method
