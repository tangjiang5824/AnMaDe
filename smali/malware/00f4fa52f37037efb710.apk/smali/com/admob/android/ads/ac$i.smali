.class public final Lcom/admob/android/ads/ac$i;
.super Ljava/lang/Object;
.source "AdMobVideoViewNative.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
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

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/ac;Z)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/ac$i;->a:Ljava/lang/ref/WeakReference;

    .line 134
    iput-boolean p2, p0, Lcom/admob/android/ads/ac$i;->b:Z

    .line 135
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/admob/android/ads/ac$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/ac;

    .line 140
    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-boolean v1, p0, Lcom/admob/android/ads/ac$i;->b:Z

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, v0, Lcom/admob/android/ads/ac;->f:Lcom/admob/android/ads/d;

    const-string v2, "skip"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/admob/android/ads/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 148
    :cond_1
    invoke-virtual {v0}, Lcom/admob/android/ads/ac;->c()V

    goto :goto_0
.end method
