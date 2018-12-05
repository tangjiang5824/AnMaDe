.class Lcom/vpon/adon/android/main/Test$2;
.super Ljava/lang/Object;
.source "Test.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/adon/android/main/Test;->adonRotationHoriztion(IILcom/vpon/adon/android/AdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpon/adon/android/main/Test;


# direct methods
.method constructor <init>(Lcom/vpon/adon/android/main/Test;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vpon/adon/android/main/Test$2;->this$0:Lcom/vpon/adon/android/main/Test;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 65
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 68
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 62
    return-void
.end method
