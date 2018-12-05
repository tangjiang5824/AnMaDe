.class public final enum Lcom/vpon/adon/android/AdOnPlatform;
.super Ljava/lang/Enum;
.source "AdOnPlatform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vpon/adon/android/AdOnPlatform;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CN:Lcom/vpon/adon/android/AdOnPlatform;

.field private static final synthetic ENUM$VALUES:[Lcom/vpon/adon/android/AdOnPlatform;

.field public static final enum TW:Lcom/vpon/adon/android/AdOnPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/vpon/adon/android/AdOnPlatform;

    const-string v1, "TW"

    invoke-direct {v0, v1, v2}, Lcom/vpon/adon/android/AdOnPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpon/adon/android/AdOnPlatform;->TW:Lcom/vpon/adon/android/AdOnPlatform;

    new-instance v0, Lcom/vpon/adon/android/AdOnPlatform;

    const-string v1, "CN"

    invoke-direct {v0, v1, v3}, Lcom/vpon/adon/android/AdOnPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpon/adon/android/AdOnPlatform;->CN:Lcom/vpon/adon/android/AdOnPlatform;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vpon/adon/android/AdOnPlatform;

    sget-object v1, Lcom/vpon/adon/android/AdOnPlatform;->TW:Lcom/vpon/adon/android/AdOnPlatform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vpon/adon/android/AdOnPlatform;->CN:Lcom/vpon/adon/android/AdOnPlatform;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vpon/adon/android/AdOnPlatform;->ENUM$VALUES:[Lcom/vpon/adon/android/AdOnPlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vpon/adon/android/AdOnPlatform;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/vpon/adon/android/AdOnPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vpon/adon/android/AdOnPlatform;

    return-object p0
.end method

.method public static values()[Lcom/vpon/adon/android/AdOnPlatform;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/vpon/adon/android/AdOnPlatform;->ENUM$VALUES:[Lcom/vpon/adon/android/AdOnPlatform;

    array-length v1, v0

    new-array v2, v1, [Lcom/vpon/adon/android/AdOnPlatform;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
