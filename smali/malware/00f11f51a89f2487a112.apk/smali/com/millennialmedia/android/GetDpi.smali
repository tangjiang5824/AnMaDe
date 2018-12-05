.class public final Lcom/millennialmedia/android/GetDpi;
.super Ljava/lang/Object;
.source "GetDpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDpi(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const-string v0, "160"

    return-object v0
.end method
