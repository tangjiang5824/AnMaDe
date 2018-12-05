.class Lcom/vpon/adon/android/main/Test$1;
.super Ljava/lang/Object;
.source "Test.java"

# interfaces
.implements Lcom/vpon/adon/android/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpon/adon/android/main/Test;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpon/adon/android/main/Test;


# direct methods
.method constructor <init>(Lcom/vpon/adon/android/main/Test;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vpon/adon/android/main/Test$1;->this$0:Lcom/vpon/adon/android/main/Test;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToRecevieAd(Lcom/vpon/adon/android/AdView;)V
    .locals 2
    .param p1, "adView"    # Lcom/vpon/adon/android/AdView;

    .prologue
    .line 47
    const-string v0, "adListenr"

    const-string v1, "OnFailesToRecevieAd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public onRecevieAd(Lcom/vpon/adon/android/AdView;)V
    .locals 2
    .param p1, "adView"    # Lcom/vpon/adon/android/AdView;

    .prologue
    .line 42
    const-string v0, "adListenr"

    const-string v1, "OnRecevieAd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method
