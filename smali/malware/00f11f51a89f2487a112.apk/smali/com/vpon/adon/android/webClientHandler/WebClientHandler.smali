.class public abstract Lcom/vpon/adon/android/webClientHandler/WebClientHandler;
.super Ljava/lang/Object;
.source "WebClientHandler.java"


# instance fields
.field protected next:Lcom/vpon/adon/android/webClientHandler/WebClientHandler;


# direct methods
.method public constructor <init>(Lcom/vpon/adon/android/webClientHandler/WebClientHandler;)V
    .locals 0
    .param p1, "next"    # Lcom/vpon/adon/android/webClientHandler/WebClientHandler;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/vpon/adon/android/webClientHandler/WebClientHandler;->next:Lcom/vpon/adon/android/webClientHandler/WebClientHandler;

    .line 19
    return-void
.end method


# virtual methods
.method public doNext(Landroid/content/Context;Lcom/vpon/adon/android/entity/Ad;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ad"    # Lcom/vpon/adon/android/entity/Ad;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vpon/adon/android/webClientHandler/WebClientHandler;->next:Lcom/vpon/adon/android/webClientHandler/WebClientHandler;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/vpon/adon/android/webClientHandler/WebClientHandler;->next:Lcom/vpon/adon/android/webClientHandler/WebClientHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vpon/adon/android/webClientHandler/WebClientHandler;->handle(Landroid/content/Context;Lcom/vpon/adon/android/entity/Ad;Ljava/lang/String;)Z

    move-result v0

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract handle(Landroid/content/Context;Lcom/vpon/adon/android/entity/Ad;Ljava/lang/String;)Z
.end method
