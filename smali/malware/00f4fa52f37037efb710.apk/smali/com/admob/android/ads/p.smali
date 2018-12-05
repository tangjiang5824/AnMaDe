.class public final Lcom/admob/android/ads/p;
.super Ljava/lang/Object;
.source "MovieInfo.java"

# interfaces
.implements Lcom/admob/android/ads/n;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:D

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/admob/android/ads/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/p;->j:Z

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/p;->m:Ljava/util/Vector;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    const-string v1, "u"

    iget-object v2, p0, Lcom/admob/android/ads/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "t"

    iget-object v2, p0, Lcom/admob/android/ads/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "c"

    iget v2, p0, Lcom/admob/android/ads/p;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string v1, "msm"

    iget v2, p0, Lcom/admob/android/ads/p;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string v1, "s"

    iget-object v2, p0, Lcom/admob/android/ads/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "sin"

    iget-object v2, p0, Lcom/admob/android/ads/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "sd"

    iget-wide v2, p0, Lcom/admob/android/ads/p;->g:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 61
    const-string v1, "skd"

    iget-object v2, p0, Lcom/admob/android/ads/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "sku"

    iget-object v2, p0, Lcom/admob/android/ads/p;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "nosk"

    iget-boolean v2, p0, Lcom/admob/android/ads/p;->j:Z

    invoke-static {v2}, Lcom/admob/android/ads/r;->a(Z)B

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 64
    const-string v1, "rd"

    iget-object v2, p0, Lcom/admob/android/ads/p;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "ru"

    iget-object v2, p0, Lcom/admob/android/ads/p;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "b"

    iget-object v2, p0, Lcom/admob/android/ads/p;->m:Ljava/util/Vector;

    invoke-static {v2}, Lcom/admob/android/ads/AdView$a;->a(Ljava/util/Vector;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 68
    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)Z
    .locals 4

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    .line 79
    :cond_0
    const-string v0, "u"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->a:Ljava/lang/String;

    .line 80
    const-string v0, "t"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->b:Ljava/lang/String;

    .line 81
    const-string v0, "c"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/admob/android/ads/p;->c:I

    .line 82
    const-string v0, "msm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/admob/android/ads/p;->d:I

    .line 83
    const-string v0, "s"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->e:Ljava/lang/String;

    .line 84
    const-string v0, "sin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->f:Ljava/lang/String;

    .line 85
    const-string v0, "sd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/admob/android/ads/p;->g:D

    .line 86
    const-string v0, "skd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->h:Ljava/lang/String;

    .line 87
    const-string v0, "sku"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->i:Ljava/lang/String;

    .line 88
    const-string v0, "nosk"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Lcom/admob/android/ads/r;->a(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/admob/android/ads/p;->j:Z

    .line 89
    const-string v0, "rd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->k:Ljava/lang/String;

    .line 90
    const-string v0, "ru"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->l:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/p;->m:Ljava/util/Vector;

    .line 93
    const-string v0, "b"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_3

    .line 95
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 97
    if-eqz v0, :cond_1

    .line 98
    new-instance v3, Lcom/admob/android/ads/o;

    invoke-direct {v3}, Lcom/admob/android/ads/o;-><init>()V

    .line 99
    invoke-virtual {v3, v0}, Lcom/admob/android/ads/o;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_2
    iput-object v1, p0, Lcom/admob/android/ads/p;->m:Ljava/util/Vector;

    .line 107
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/admob/android/ads/p;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/p;->m:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/p;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/admob/android/ads/p;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/p;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/admob/android/ads/p;->g:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
