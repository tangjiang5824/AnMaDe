.class Lcom/vpon/adon/android/AdManager$2;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/adon/android/AdManager;->displayNextAd(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;Lcom/vpon/adon/android/entity/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpon/adon/android/AdManager;

.field private final synthetic val$ad:Lcom/vpon/adon/android/entity/Ad;

.field private final synthetic val$adView:Lcom/vpon/adon/android/AdView;


# direct methods
.method constructor <init>(Lcom/vpon/adon/android/AdManager;Lcom/vpon/adon/android/AdView;Lcom/vpon/adon/android/entity/Ad;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vpon/adon/android/AdManager$2;->this$0:Lcom/vpon/adon/android/AdManager;

    iput-object p2, p0, Lcom/vpon/adon/android/AdManager$2;->val$adView:Lcom/vpon/adon/android/AdView;

    iput-object p3, p0, Lcom/vpon/adon/android/AdManager$2;->val$ad:Lcom/vpon/adon/android/entity/Ad;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/vpon/adon/android/AdManager$2;->val$adView:Lcom/vpon/adon/android/AdView;

    iget-object v1, p0, Lcom/vpon/adon/android/AdManager$2;->val$ad:Lcom/vpon/adon/android/entity/Ad;

    invoke-virtual {v0, v1}, Lcom/vpon/adon/android/AdView;->displayNextAd(Lcom/vpon/adon/android/entity/Ad;)V

    .line 215
    return-void
.end method
