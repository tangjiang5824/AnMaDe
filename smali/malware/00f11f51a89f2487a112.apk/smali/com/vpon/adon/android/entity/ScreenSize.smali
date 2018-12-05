.class public Lcom/vpon/adon/android/entity/ScreenSize;
.super Ljava/lang/Object;
.source "ScreenSize.java"


# instance fields
.field screenHeight:I

.field screenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v0, p0, Lcom/vpon/adon/android/entity/ScreenSize;->screenWidth:I

    .line 5
    iput v0, p0, Lcom/vpon/adon/android/entity/ScreenSize;->screenHeight:I

    .line 3
    return-void
.end method


# virtual methods
.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/vpon/adon/android/entity/ScreenSize;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/vpon/adon/android/entity/ScreenSize;->screenWidth:I

    return v0
.end method

.method public setScreenHeight(I)V
    .locals 0
    .param p1, "screenHeight"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/vpon/adon/android/entity/ScreenSize;->screenHeight:I

    .line 18
    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0
    .param p1, "screenWidth"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/vpon/adon/android/entity/ScreenSize;->screenWidth:I

    .line 12
    return-void
.end method
