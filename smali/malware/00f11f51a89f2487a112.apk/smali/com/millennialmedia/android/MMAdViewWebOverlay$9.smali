.class Lcom/millennialmedia/android/MMAdViewWebOverlay$9;
.super Landroid/os/Handler;
.source "MMAdViewWebOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdViewWebOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$9;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 551
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 557
    :goto_0
    return-void

    .line 554
    :pswitch_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$9;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$100(Lcom/millennialmedia/android/MMAdViewWebOverlay;Z)V

    goto :goto_0

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
