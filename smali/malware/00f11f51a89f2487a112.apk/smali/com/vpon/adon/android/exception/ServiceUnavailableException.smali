.class public Lcom/vpon/adon/android/exception/ServiceUnavailableException;
.super Ljava/lang/Exception;
.source "ServiceUnavailableException.java"


# static fields
.field private static final serialVersionUID:J = 0x4899985b3e848172L


# instance fields
.field private final msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/vpon/adon/android/exception/ServiceUnavailableException;->msg:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vpon/adon/android/exception/ServiceUnavailableException;->msg:Ljava/lang/String;

    return-object v0
.end method
