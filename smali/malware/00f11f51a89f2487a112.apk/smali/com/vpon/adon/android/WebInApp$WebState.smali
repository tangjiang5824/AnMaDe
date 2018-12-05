.class final enum Lcom/vpon/adon/android/WebInApp$WebState;
.super Ljava/lang/Enum;
.source "WebInApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpon/adon/android/WebInApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WebState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vpon/adon/android/WebInApp$WebState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUSTOMVIEW:Lcom/vpon/adon/android/WebInApp$WebState;

.field private static final synthetic ENUM$VALUES:[Lcom/vpon/adon/android/WebInApp$WebState;

.field public static final enum WEBVIEW:Lcom/vpon/adon/android/WebInApp$WebState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/vpon/adon/android/WebInApp$WebState;

    const-string v1, "CUSTOMVIEW"

    invoke-direct {v0, v1, v2}, Lcom/vpon/adon/android/WebInApp$WebState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpon/adon/android/WebInApp$WebState;->CUSTOMVIEW:Lcom/vpon/adon/android/WebInApp$WebState;

    new-instance v0, Lcom/vpon/adon/android/WebInApp$WebState;

    const-string v1, "WEBVIEW"

    invoke-direct {v0, v1, v3}, Lcom/vpon/adon/android/WebInApp$WebState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpon/adon/android/WebInApp$WebState;->WEBVIEW:Lcom/vpon/adon/android/WebInApp$WebState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vpon/adon/android/WebInApp$WebState;

    sget-object v1, Lcom/vpon/adon/android/WebInApp$WebState;->CUSTOMVIEW:Lcom/vpon/adon/android/WebInApp$WebState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vpon/adon/android/WebInApp$WebState;->WEBVIEW:Lcom/vpon/adon/android/WebInApp$WebState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vpon/adon/android/WebInApp$WebState;->ENUM$VALUES:[Lcom/vpon/adon/android/WebInApp$WebState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vpon/adon/android/WebInApp$WebState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/vpon/adon/android/WebInApp$WebState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vpon/adon/android/WebInApp$WebState;

    return-object p0
.end method

.method public static values()[Lcom/vpon/adon/android/WebInApp$WebState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/vpon/adon/android/WebInApp$WebState;->ENUM$VALUES:[Lcom/vpon/adon/android/WebInApp$WebState;

    array-length v1, v0

    new-array v2, v1, [Lcom/vpon/adon/android/WebInApp$WebState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
