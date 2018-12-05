.class Lcom/millennialmedia/android/MMAdViewController$6;
.super Ljava/lang/Object;
.source "MMAdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewController;->DownloadLastAd(Lcom/millennialmedia/android/MMAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewController;

.field final synthetic val$ad:Lcom/millennialmedia/android/VideoAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/VideoAd;)V
    .locals 0

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$6;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-object p2, p0, Lcom/millennialmedia/android/MMAdViewController$6;->val$ad:Lcom/millennialmedia/android/VideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1646
    new-instance v0, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$6;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;-><init>(Lcom/millennialmedia/android/MMAdViewController;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/millennialmedia/android/VideoAd;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController$6;->val$ad:Lcom/millennialmedia/android/VideoAd;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1647
    return-void
.end method
