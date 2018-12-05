.class public Lcom/vpon/adon/android/main/Test;
.super Landroid/app/Activity;
.source "Test.java"


# instance fields
.field adListener:Lcom/vpon/adon/android/AdListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lcom/vpon/adon/android/main/Test$1;

    invoke-direct {v0, p0}, Lcom/vpon/adon/android/main/Test$1;-><init>(Lcom/vpon/adon/android/main/Test;)V

    iput-object v0, p0, Lcom/vpon/adon/android/main/Test;->adListener:Lcom/vpon/adon/android/AdListener;

    .line 15
    return-void
.end method


# virtual methods
.method public adonRotationHoriztion(IILcom/vpon/adon/android/AdView;)V
    .locals 10
    .param p1, "beganDegree"    # I
    .param p2, "endDegree"    # I
    .param p3, "view"    # Lcom/vpon/adon/android/AdView;

    .prologue
    .line 53
    const/high16 v7, 0x43200000    # 160.0f

    .line 54
    .local v7, "centerX":F
    const/high16 v8, 0x41c00000    # 24.0f

    .line 55
    .local v8, "centerY":F
    const/high16 v9, -0x3e400000    # -24.0f

    .line 57
    .local v9, "zDepth":F
    new-instance v0, Lcom/vpon/adon/android/main/Rotate3dAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    const/high16 v3, 0x43200000    # 160.0f

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v5, -0x3e400000    # -24.0f

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/vpon/adon/android/main/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 58
    .local v0, "rotation":Lcom/vpon/adon/android/main/Rotate3dAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/vpon/adon/android/main/Rotate3dAnimation;->setDuration(J)V

    .line 59
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vpon/adon/android/main/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 60
    new-instance v1, Lcom/vpon/adon/android/main/Test$2;

    invoke-direct {v1, p0}, Lcom/vpon/adon/android/main/Test$2;-><init>(Lcom/vpon/adon/android/main/Test;)V

    invoke-virtual {v0, v1}, Lcom/vpon/adon/android/main/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 70
    invoke-virtual {p3, v0}, Lcom/vpon/adon/android/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 25
    invoke-virtual {p0, v1}, Lcom/vpon/adon/android/main/Test;->setContentView(Landroid/view/View;)V

    .line 27
    new-instance v0, Lcom/vpon/adon/android/AdView;

    invoke-direct {v0, p0}, Lcom/vpon/adon/android/AdView;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "adView":Lcom/vpon/adon/android/AdView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/vpon/adon/android/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget-object v2, p0, Lcom/vpon/adon/android/main/Test;->adListener:Lcom/vpon/adon/android/AdListener;

    invoke-virtual {v0, v2}, Lcom/vpon/adon/android/AdView;->setAdListener(Lcom/vpon/adon/android/AdListener;)V

    .line 30
    const-string v2, "ff80808129da8c680129ee69174a0008"

    sget-object v3, Lcom/vpon/adon/android/AdOnPlatform;->TW:Lcom/vpon/adon/android/AdOnPlatform;

    invoke-virtual {v0, v2, v3, v4}, Lcom/vpon/adon/android/AdView;->setLicenseKey(Ljava/lang/String;Lcom/vpon/adon/android/AdOnPlatform;Z)V

    .line 35
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 36
    return-void
.end method
