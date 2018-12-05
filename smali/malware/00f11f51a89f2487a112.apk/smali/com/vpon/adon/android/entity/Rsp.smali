.class public Lcom/vpon/adon/android/entity/Rsp;
.super Ljava/lang/Object;
.source "Rsp.java"


# instance fields
.field private status:I

.field private ts:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/vpon/adon/android/entity/Rsp;->status:I

    return v0
.end method

.method public getTs()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/vpon/adon/android/entity/Rsp;->ts:I

    return v0
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/vpon/adon/android/entity/Rsp;->status:I

    .line 12
    return-void
.end method

.method public setTs(I)V
    .locals 0
    .param p1, "ts"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/vpon/adon/android/entity/Rsp;->ts:I

    .line 18
    return-void
.end method
