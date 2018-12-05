.class public Lcom/vpon/adon/android/entity/RespClickList;
.super Ljava/lang/Object;
.source "RespClickList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x35f473d7b9d8210fL


# instance fields
.field private respClicks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vpon/adon/android/entity/RespClick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vpon/adon/android/entity/RespClick;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "respClicks":Ljava/util/List;, "Ljava/util/List<Lcom/vpon/adon/android/entity/RespClick;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vpon/adon/android/entity/RespClickList;->respClicks:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/vpon/adon/android/entity/RespClickList;->respClicks:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public getRespClicks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vpon/adon/android/entity/RespClick;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vpon/adon/android/entity/RespClickList;->respClicks:Ljava/util/List;

    return-object v0
.end method

.method public setRespClicks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vpon/adon/android/entity/RespClick;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "respClicks":Ljava/util/List;, "Ljava/util/List<Lcom/vpon/adon/android/entity/RespClick;>;"
    iput-object p1, p0, Lcom/vpon/adon/android/entity/RespClickList;->respClicks:Ljava/util/List;

    .line 22
    return-void
.end method
