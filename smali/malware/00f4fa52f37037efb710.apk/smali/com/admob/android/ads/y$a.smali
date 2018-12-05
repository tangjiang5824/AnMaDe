.class public final Lcom/admob/android/ads/y$a;
.super Lcom/admob/android/ads/ad;
.source "AdMobCanvasView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/admob/android/ads/y;


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/y;Lcom/admob/android/ads/y;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/admob/android/ads/y;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    iput-object p1, p0, Lcom/admob/android/ads/y$a;->a:Lcom/admob/android/ads/y;

    .line 103
    invoke-direct {p0, p2, p3}, Lcom/admob/android/ads/ad;-><init>(Lcom/admob/android/ads/view/AdMobWebView;Ljava/lang/ref/WeakReference;)V

    .line 104
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 111
    const-string v0, "http://mm.admob.com/static/android/canvas.html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/y$a;->a:Lcom/admob/android/ads/y;

    iget-boolean v0, v0, Lcom/admob/android/ads/y;->b:Z

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string v1, "javascript:cb(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Lcom/admob/android/ads/y$a;->a:Lcom/admob/android/ads/y;

    iget-object v1, v1, Lcom/admob/android/ads/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Lcom/admob/android/ads/y$a;->a:Lcom/admob/android/ads/y;

    iget-object v1, v1, Lcom/admob/android/ads/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Lcom/admob/android/ads/y$a;->a:Lcom/admob/android/ads/y;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/admob/android/ads/y;->b:Z

    .line 121
    iget-object v1, p0, Lcom/admob/android/ads/y$a;->a:Lcom/admob/android/ads/y;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admob/android/ads/y;->loadUrl(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method
