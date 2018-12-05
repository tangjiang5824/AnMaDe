.class Lcom/millennialmedia/android/BasicCachedAd;
.super Ljava/lang/Object;
.source "BasicCachedAd.java"


# instance fields
.field contentUrl:Ljava/lang/String;

.field deferredViewStart:J

.field downloaded:Z

.field expiration:Ljava/util/Date;

.field id:Ljava/lang/String;

.field type:I

.field views:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/millennialmedia/android/BasicCachedAd;->id:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method parseJSON(Ljava/lang/String;)V
    .locals 0
    .param p1, "JSONString"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method
