.class public abstract Landroid/support/v4/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/AutoScrollHelper$1;,
        Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;,
        Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field private mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field private mNeedsCancel:Z

.field private mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field private final mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

.field private final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 140
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 149
    new-array v0, v5, [F

    aput v1, v0, v2

    aput v1, v0, v4

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    .line 152
    new-array v0, v5, [F

    aput v3, v0, v2

    aput v3, v0, v4

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    .line 161
    new-array v0, v5, [F

    aput v1, v0, v2

    aput v1, v0, v4

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    .line 164
    new-array v0, v5, [F

    aput v1, v0, v2

    aput v1, v0, v4

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    .line 167
    new-array v0, v5, [F

    aput v3, v0, v2

    aput v3, v0, v4

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    .line 210
    iput-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    .line 212
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 213
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x44c4e000    # 1575.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 214
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x439d8000    # 315.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 215
    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 216
    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 218
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/AutoScrollHelper;->setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 219
    invoke-virtual {p0, v3, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    const v0, 0x3e4ccccd    # 0.2f

    const v1, 0x3e4ccccd    # 0.2f

    .line 220
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 221
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 222
    sget v0, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;

    const/16 v0, 0x1f4

    .line 223
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    const/16 v0, 0x1f4

    .line 224
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 225
    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    return v0
.end method

.method static synthetic access$102(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    return p1
.end method

.method static synthetic access$200(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    return v0
.end method

.method static synthetic access$202(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    return p1
.end method

.method static synthetic access$300(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    return v0
.end method

.method static synthetic access$502(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    return p1
.end method

.method static synthetic access$600(Landroid/support/v4/widget/AutoScrollHelper;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->cancelTargetTouch()V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(III)I
    .locals 1

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(FFF)F
    .locals 1

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private cancelTargetTouch()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 677
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    .line 678
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 680
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 681
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 682
    return-void
.end method

.method private computeTargetVelocity(IFFF)F
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 539
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v0, v0, p1

    .line 540
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v1, v1, p1

    .line 541
    invoke-direct {p0, v0, p3, v1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result v0

    .line 542
    cmpl-float v1, v0, v4

    if-nez v1, :cond_0

    .line 544
    return v4

    .line 547
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget v1, v1, p1

    .line 548
    iget-object v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v2, v2, p1

    .line 549
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget v3, v3, p1

    .line 550
    mul-float/2addr v1, p4

    .line 555
    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 556
    mul-float/2addr v0, v1

    invoke-static {v0, v2, v3}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    return v0

    .line 558
    :cond_1
    neg-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0, v2, v3}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method private static constrain(FFF)F
    .locals 1

    .prologue
    .line 663
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 664
    return p2

    .line 665
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    .line 666
    return p1

    .line 668
    :cond_1
    return p0
.end method

.method private static constrain(III)I
    .locals 0

    .prologue
    .line 653
    if-gt p0, p2, :cond_0

    .line 655
    if-lt p0, p1, :cond_1

    .line 658
    return p0

    .line 654
    :cond_0
    return p2

    .line 656
    :cond_1
    return p1
.end method

.method private constrainEdgeValue(FF)F
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 624
    cmpl-float v0, p2, v2

    if-nez v0, :cond_0

    .line 625
    return v2

    .line 628
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v0, :pswitch_data_0

    .line 649
    :cond_1
    return v2

    .line 631
    :pswitch_0
    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    .line 632
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_2

    .line 634
    div-float v0, p1, p2

    sub-float v0, v3, v0

    return v0

    .line 635
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 637
    return v3

    .line 642
    :pswitch_1
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    .line 644
    neg-float v0, p2

    div-float v0, p1, v0

    return v0

    .line 628
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 607
    mul-float v0, p1, p2

    invoke-static {v0, v3, p3}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    .line 608
    invoke-direct {p0, p4, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v1

    .line 609
    sub-float v2, p2, p4

    invoke-direct {p0, v2, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v0

    .line 610
    sub-float/2addr v0, v1

    .line 612
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 613
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float v0, v0

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    neg-float v0, v0

    :goto_0
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 620
    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    return v0

    .line 614
    :cond_0
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    .line 615
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0

    .line 617
    :cond_1
    return v3
.end method

.method private requestStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    .line 535
    :goto_0
    return-void

    .line 531
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    goto :goto_0
.end method

.method private shouldAnimate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 492
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 493
    invoke-virtual {v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v2

    .line 494
    invoke-virtual {v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v1

    .line 496
    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_3

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method private startAnimating()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 504
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 508
    :goto_0
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 509
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 511
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-eqz v0, :cond_2

    .line 514
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 519
    :goto_1
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 520
    return-void

    .line 505
    :cond_1
    new-instance v0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroid/support/v4/widget/AutoScrollHelper;Landroid/support/v4/widget/AutoScrollHelper$1;)V

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 511
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v0, :cond_0

    .line 512
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_1
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    return v0
.end method

.method public isExclusive()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 456
    iget-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v2, :cond_2

    .line 460
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    .line 461
    packed-switch v2, :pswitch_data_0

    .line 485
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    if-nez v2, :cond_3

    :goto_1
    move v0, v1

    :cond_1
    return v0

    .line 457
    :cond_2
    return v1

    .line 463
    :pswitch_0
    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 464
    iput-boolean v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 467
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v2

    .line 469
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v0, v3, v4, v5}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v3

    .line 471
    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 475
    iget-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->startAnimating()V

    goto :goto_0

    .line 481
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    goto :goto_0

    .line 485
    :cond_3
    iget-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 0

    .prologue
    .line 412
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    .line 413
    return-object p0
.end method

.method public setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 0

    .prologue
    .line 354
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    .line 355
    return-object p0
.end method

.method public setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    .line 240
    return-object p0

    .line 235
    :cond_1
    if-nez p1, :cond_0

    .line 236
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    goto :goto_0
.end method

.method public setExclusive(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 0

    .prologue
    .line 263
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    .line 264
    return-object p0
.end method

.method public setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 396
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 397
    return-object p0
.end method

.method public setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 294
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 295
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 296
    return-object p0
.end method

.method public setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 312
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 313
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 314
    return-object p0
.end method

.method public setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    .line 443
    return-object p0
.end method

.method public setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    .line 428
    return-object p0
.end method

.method public setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 374
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 375
    return-object p0
.end method

.method public setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 333
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 334
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 335
    return-object p0
.end method
