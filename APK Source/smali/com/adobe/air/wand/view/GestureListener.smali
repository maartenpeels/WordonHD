.class public Lcom/adobe/air/wand/view/GestureListener;
.super Ljava/lang/Object;
.source "GestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/view/GestureListener$TouchPoint;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GestureListener"

.field private static final MAX_TOUCH_POINTS:I = 0x2

.field private static final MM_PER_INCH:F = 25.4f

.field private static final _FP_GESTURE_PAN_THRESHOLD_MM:F = 3.0f

.field private static final _FP_GESTURE_ROTATION_THRESHOLD_DEGREES:F = 15.0f

.field private static final _FP_GESTURE_SWIPE_PRIMARY_AXIS_MIN_MM:F = 10.0f

.field private static final _FP_GESTURE_SWIPE_SECONDARY_AXIS_MAX_MM:F = 5.0f

.field private static final _FP_GESTURE_ZOOM_PER_AXIS_THRESHOLD_MM:F = 3.0f

.field private static final _FP_GESTURE_ZOOM_THRESHOLD_MM:F = 8.0f

.field public static final kGestureAll:I = 0x8

.field public static final kGestureBegin:I = 0x2

.field public static final kGestureEnd:I = 0x4

.field public static final kGesturePan:I = 0x1

.field public static final kGestureRotate:I = 0x2

.field public static final kGestureSwipe:I = 0x4

.field public static final kGestureTap:I = 0x3

.field public static final kGestureUpdate:I = 0x1

.field public static final kGestureZoom:I

.field private static screenPPI:I


# instance fields
.field private mCheckForSwipe:Z

.field private mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

.field private mCouldBeTwoFingerTap:I

.field private mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

.field private mInPanTransformGesture:Z

.field private mInRotateTransformGesture:Z

.field private mInZoomTransformGesture:Z

.field private mInZoomTransformGestureX:Z

.field private mInZoomTransformGestureY:Z

.field private mPreviousAbsoluteRotation:F

.field private mPreviousPanLocX:F

.field private mPreviousPanLocY:F

.field private mPreviousRotateLocX:F

.field private mPreviousRotateLocY:F

.field private mPreviousZoomLocX:F

.field private mPreviousZoomLocY:F

.field private mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/wand/view/CompanionView;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousAbsoluteRotation:F

    .line 61
    iput-boolean v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    .line 62
    iput-boolean v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    .line 63
    iput-boolean v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    .line 64
    iput-boolean v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    .line 65
    iput-boolean v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    .line 67
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocX:F

    .line 68
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocY:F

    .line 69
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocX:F

    .line 70
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocY:F

    .line 71
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocX:F

    .line 72
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocY:F

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    .line 84
    iput v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    .line 136
    iput-object p2, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    .line 138
    new-array v0, v3, [Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    iput-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    move v0, v1

    .line 139
    :goto_0
    if-ge v0, v3, :cond_0

    .line 141
    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    new-instance v2, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-direct {v2, p0}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;-><init>(Lcom/adobe/air/wand/view/GestureListener;)V

    aput-object v2, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-direct {v0, p0}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;-><init>(Lcom/adobe/air/wand/view/GestureListener;)V

    iput-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 146
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    .line 147
    return-void
.end method

.method private endPanGesture()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 281
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    if-eqz v0, :cond_0

    .line 287
    const/4 v1, 0x4

    .line 297
    iget v4, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocX:F

    .line 298
    iget v5, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocY:F

    .line 300
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    move v3, v2

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    goto :goto_0
.end method

.method private endRotateGesture()V
    .locals 11

    .prologue
    const/4 v2, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 227
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x4

    .line 243
    iget v4, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocX:F

    .line 244
    iget v5, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocY:F

    .line 246
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v3, 0x1

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    goto :goto_0
.end method

.method private endZoomGesture()V
    .locals 11

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 259
    const/4 v1, 0x4

    .line 269
    iget v4, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocX:F

    .line 270
    iget v5, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocY:F

    .line 272
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v3, 0x1

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 273
    iput-boolean v2, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    .line 274
    iput-boolean v2, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    .line 275
    iput-boolean v2, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    goto :goto_0
.end method

.method private getRotation(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F
    .locals 10

    .prologue
    const-wide v8, 0x4066800000000000L    # 180.0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 793
    const/4 v0, 0x0

    .line 794
    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v1

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v2

    if-ne v1, v2, :cond_0

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v1

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 797
    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v0

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v2

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    div-double/2addr v0, v6

    .line 799
    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v2

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v4

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    mul-double/2addr v2, v8

    div-double/2addr v2, v6

    .line 801
    sub-double v0, v2, v0

    double-to-float v0, v0

    .line 804
    :cond_0
    return v0
.end method

.method private isPanGesture(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 818
    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v0

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 819
    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 821
    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v2

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 822
    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v3

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 824
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 825
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 826
    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 831
    cmpl-float v6, v0, v7

    if-ltz v6, :cond_0

    cmpl-float v6, v2, v7

    if-gez v6, :cond_1

    :cond_0
    cmpg-float v0, v0, v7

    if-gtz v0, :cond_5

    cmpg-float v0, v2, v7

    if-gtz v0, :cond_5

    :cond_1
    cmpl-float v0, v1, v7

    if-ltz v0, :cond_2

    cmpl-float v0, v3, v7

    if-gez v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v7

    if-gtz v0, :cond_5

    cmpg-float v0, v3, v7

    if-gtz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    if-nez v0, :cond_4

    const/high16 v0, 0x40400000    # 3.0f

    sget v1, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x41cb3333    # 25.4f

    div-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_5

    .line 839
    :cond_4
    const/4 v0, 0x1

    .line 841
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public endTwoFingerGesture()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 213
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 222
    :goto_0
    return v0

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/wand/view/GestureListener;->endRotateGesture()V

    .line 221
    invoke-direct {p0}, Lcom/adobe/air/wand/view/GestureListener;->endPanGesture()V

    move v0, v2

    .line 222
    goto :goto_0
.end method

.method public getCheckForSwipe()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    return v0
.end method

.method public getCouldBeTwoFingerTap()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    return v0
.end method

.method public getDownTouchPoint(I)Lcom/adobe/air/wand/view/GestureListener$TouchPoint;
    .locals 1

    .prologue
    .line 156
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v0, v0, p1

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayStartNewTransformGesture()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    .line 195
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    .line 196
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    .line 197
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    .line 198
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    .line 199
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 846
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 25

    .prologue
    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 672
    const/4 v2, 0x1

    .line 753
    :goto_0
    return v2

    .line 676
    :cond_0
    const/4 v2, 0x1

    .line 677
    const/4 v4, 0x0

    .line 679
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    .line 680
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    .line 682
    const/high16 v5, 0x3f800000    # 1.0f

    .line 683
    const/high16 v8, 0x3f800000    # 1.0f

    .line 684
    const/4 v10, 0x0

    .line 685
    const/4 v11, 0x0

    .line 686
    const/4 v12, 0x0

    .line 688
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v3

    float-to-double v13, v3

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v3

    float-to-double v15, v3

    .line 690
    sub-double/2addr v15, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    .line 691
    const-wide/16 v17, 0x0

    .line 692
    const-wide/16 v19, 0x0

    .line 693
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v3, v9, :cond_a

    .line 695
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v9

    sub-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move v0, v3

    float-to-double v0, v0

    move-wide/from16 v17, v0

    .line 696
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v9

    sub-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move v0, v3

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v23, v19

    move-wide/from16 v19, v17

    move-wide/from16 v17, v23

    .line 699
    :goto_1
    const-wide/16 v21, 0x0

    cmpl-double v3, v13, v21

    if-eqz v3, :cond_6

    .line 701
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    move v3, v0

    if-nez v3, :cond_1

    const-wide v13, 0x4039666660000000L    # 25.399999618530273

    mul-double/2addr v13, v15

    sget v3, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-double v15, v3

    div-double/2addr v13, v15

    const-wide/high16 v15, 0x4020000000000000L    # 8.0

    cmpl-double v3, v13, v15

    if-lez v3, :cond_5

    .line 703
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    move v3, v0

    if-nez v3, :cond_9

    .line 705
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    .line 706
    const/4 v2, 0x2

    move v3, v2

    .line 711
    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v2, v9, :cond_4

    .line 713
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v2

    const/4 v9, 0x0

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v2

    const/4 v9, 0x0

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    move v2, v0

    if-nez v2, :cond_2

    const-wide v13, 0x4039666660000000L    # 25.399999618530273

    mul-double v13, v13, v19

    sget v2, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-double v15, v2

    div-double/2addr v13, v15

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    cmpl-double v2, v13, v15

    if-lez v2, :cond_8

    .line 716
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v5

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 717
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    .line 720
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v5

    const/4 v9, 0x0

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    const/4 v9, 0x0

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    move v5, v0

    if-nez v5, :cond_3

    const-wide v13, 0x4039666660000000L    # 25.399999618530273

    mul-double v13, v13, v17

    sget v5, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-double v15, v5

    div-double/2addr v13, v15

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    cmpl-double v5, v13, v15

    if-lez v5, :cond_7

    .line 723
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v8

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 724
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    move v9, v5

    move v8, v2

    .line 739
    :goto_4
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocX:F

    .line 740
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocY:F

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    move-object v2, v0

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 745
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 729
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    move v9, v2

    move v8, v2

    .line 733
    goto :goto_4

    .line 750
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 753
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    move v9, v8

    move v8, v2

    goto :goto_4

    :cond_8
    move v2, v5

    goto :goto_3

    :cond_9
    move v3, v2

    goto/16 :goto_2

    :cond_a
    move-wide/from16 v23, v19

    move-wide/from16 v19, v17

    move-wide/from16 v17, v23

    goto/16 :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/adobe/air/wand/view/GestureListener;->endZoomGesture()V

    .line 661
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 763
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    .line 778
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocX:F

    iget v5, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocY:F

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 20

    .prologue
    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 338
    const/4 v5, 0x1

    .line 576
    :goto_0
    return v5

    .line 349
    :cond_0
    const/high16 v11, 0x3f800000    # 1.0f

    .line 350
    const/high16 v12, 0x3f800000    # 1.0f

    .line 351
    const/4 v13, 0x0

    .line 352
    const/4 v14, 0x0

    .line 353
    const/4 v15, 0x0

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 364
    const/4 v5, 0x1

    .line 366
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v9, v6, v7

    .line 367
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v10, v6, v7

    .line 372
    const/4 v6, 0x2

    move v0, v6

    new-array v0, v0, [Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    move-object/from16 v16, v0

    .line 374
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 376
    new-instance v7, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v8

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;-><init>(Lcom/adobe/air/wand/view/GestureListener;FFI)V

    aput-object v7, v16, v6

    .line 374
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 379
    :cond_1
    const/4 v6, 0x0

    aget-object v6, v16, v6

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {v6}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v17

    .line 380
    const/4 v6, 0x1

    aget-object v6, v16, v6

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {v6}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v18

    .line 382
    if-ltz v17, :cond_6

    const/4 v6, 0x2

    move/from16 v0, v17

    move v1, v6

    if-ge v0, v1, :cond_6

    if-ltz v18, :cond_6

    const/4 v6, 0x2

    move/from16 v0, v18

    move v1, v6

    if-ge v0, v1, :cond_6

    .line 388
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    move v6, v0

    if-nez v6, :cond_4

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    move-object v6, v0

    aget-object v6, v6, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    move-object v7, v0

    aget-object v7, v7, v18

    const/4 v8, 0x0

    aget-object v8, v16, v8

    const/16 v19, 0x1

    aget-object v19, v16, v19

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/air/wand/view/GestureListener;->getRotation(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v6

    .line 402
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x43340000    # 180.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_10

    .line 404
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_7

    const/high16 v7, 0x43b40000    # 360.0f

    sub-float v6, v7, v6

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v6, v7

    :goto_2
    move v8, v6

    .line 410
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    move v6, v0

    if-nez v6, :cond_2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x41700000    # 15.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 412
    :cond_2
    const/4 v7, 0x2

    .line 413
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    move v6, v0

    if-nez v6, :cond_3

    .line 415
    const/4 v5, 0x2

    .line 416
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    .line 417
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/wand/view/GestureListener;->mPreviousAbsoluteRotation:F

    :cond_3
    move v6, v5

    .line 420
    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousAbsoluteRotation:F

    move v5, v0

    sub-float v5, v8, v5

    .line 425
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v19, 0x43340000    # 180.0f

    cmpl-float v13, v13, v19

    if-lez v13, :cond_f

    .line 427
    const/4 v13, 0x0

    cmpl-float v13, v5, v13

    if-lez v13, :cond_8

    const/high16 v13, 0x43b40000    # 360.0f

    sub-float v5, v13, v5

    const/high16 v13, -0x40800000    # -1.0f

    mul-float/2addr v5, v13

    :goto_4
    move v13, v5

    .line 432
    :goto_5
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/wand/view/GestureListener;->mPreviousAbsoluteRotation:F

    .line 433
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocX:F

    .line 434
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocY:F

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    move-object v5, v0

    const/4 v8, 0x1

    invoke-virtual/range {v5 .. v15}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 440
    const/4 v5, 0x0

    move v13, v5

    move v5, v6

    .line 448
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    move v6, v0

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    move v6, v0

    if-nez v6, :cond_6

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    move-object v6, v0

    aget-object v6, v6, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    move-object v7, v0

    aget-object v7, v7, v18

    const/4 v8, 0x0

    aget-object v8, v16, v8

    const/4 v14, 0x1

    aget-object v14, v16, v14

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/air/wand/view/GestureListener;->isPanGesture(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 456
    const/4 v7, 0x1

    .line 457
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    move v6, v0

    if-nez v6, :cond_5

    .line 459
    const/4 v5, 0x2

    .line 460
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    :cond_5
    move v6, v5

    .line 463
    const/high16 v5, -0x40800000    # -1.0f

    mul-float v14, v5, p3

    .line 464
    const/high16 v5, -0x40800000    # -1.0f

    mul-float v15, v5, p4

    .line 465
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocX:F

    .line 466
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocY:F

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    move-object v5, v0

    const/4 v8, 0x1

    invoke-virtual/range {v5 .. v15}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 576
    :cond_6
    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 404
    :cond_7
    const/high16 v7, 0x43b40000    # 360.0f

    add-float/2addr v6, v7

    goto/16 :goto_2

    .line 427
    :cond_8
    const/high16 v13, 0x43b40000    # 360.0f

    add-float/2addr v5, v13

    goto :goto_4

    .line 479
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/adobe/air/wand/view/GestureListener;->endPanGesture()V

    .line 483
    const/4 v5, 0x0

    aget-object v5, v16, v5

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {v5}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v5

    const/4 v6, 0x0

    aget-object v6, v16, v6

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {v6}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v6

    const/4 v7, 0x0

    aget-object v7, v16, v7

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {v7}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v7

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/air/wand/view/GestureListener;->setDownTouchPoint(FFI)V

    .line 484
    const/4 v5, 0x1

    aget-object v5, v16, v5

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {v5}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v5

    const/4 v6, 0x1

    aget-object v6, v16, v6

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {v6}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v6

    const/4 v7, 0x1

    aget-object v7, v16, v7

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {v7}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v7

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/air/wand/view/GestureListener;->setDownTouchPoint(FFI)V

    goto :goto_6

    .line 494
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 496
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 498
    if-ltz v5, :cond_6

    const/4 v6, 0x2

    if-ge v5, v6, :cond_6

    .line 506
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    move v6, v0

    if-eqz v6, :cond_6

    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 514
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    move-object v7, v0

    aget-object v7, v7, v5

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {v7}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v7

    sub-float/2addr v6, v7

    .line 515
    const/4 v7, 0x0

    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    move-object v8, v0

    aget-object v5, v8, v5

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {v5}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v5

    sub-float v5, v7, v5

    .line 519
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x41cb3333    # 25.4f

    mul-float/2addr v7, v8

    sget v8, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x41200000    # 10.0f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_c

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x41cb3333    # 25.4f

    mul-float/2addr v7, v8

    sget v8, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x40a00000    # 5.0f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_c

    .line 521
    const/4 v5, 0x1

    .line 522
    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    const/high16 v6, 0x3f800000    # 1.0f

    .line 523
    :goto_7
    const/4 v7, 0x0

    move v15, v7

    move v14, v6

    .line 537
    :goto_8
    if-eqz v5, :cond_6

    .line 541
    const/16 v6, 0x8

    .line 542
    const/4 v7, 0x4

    .line 545
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 546
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    move-object v5, v0

    const/4 v8, 0x1

    invoke-virtual/range {v5 .. v15}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 550
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    goto/16 :goto_6

    .line 522
    :cond_b
    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_7

    .line 525
    :cond_c
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x41cb3333    # 25.4f

    mul-float/2addr v7, v8

    sget v8, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x41200000    # 10.0f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_e

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x41cb3333    # 25.4f

    mul-float/2addr v6, v7

    sget v7, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x40a00000    # 5.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_e

    .line 527
    const/4 v6, 0x1

    .line 528
    const/4 v7, 0x0

    .line 529
    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-lez v5, :cond_d

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_9
    move v15, v5

    move v14, v7

    move v5, v6

    goto :goto_8

    :cond_d
    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_9

    .line 534
    :cond_e
    const/4 v5, 0x0

    goto :goto_8

    :cond_f
    move v13, v5

    goto/16 :goto_5

    :cond_10
    move v8, v6

    goto/16 :goto_3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 584
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 600
    .line 602
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move v0, v11

    .line 623
    :goto_0
    return v0

    .line 605
    :cond_0
    const/16 v1, 0x8

    .line 606
    const/4 v2, 0x3

    .line 610
    iget v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v11, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {v0}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v0, v4

    div-float v4, v0, v7

    .line 614
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {v0}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v0, v5

    div-float v5, v0, v7

    .line 617
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 620
    iput v3, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    :cond_1
    move v0, v11

    .line 623
    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckForSwipe(Z)V
    .locals 0

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    .line 209
    return-void
.end method

.method public setCouldBeTwoFingerTap(I)V
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    .line 180
    return-void
.end method

.method public setDownTouchPoint(FFI)V
    .locals 1

    .prologue
    .line 171
    if-ltz p3, :cond_0

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v0, v0, p3

    # invokes: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->assign(FFI)V
    invoke-static {v0, p1, p2, p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$000(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;FFI)V

    .line 175
    :cond_0
    return-void
.end method

.method public setSecondaryPointOfTwoFingerTap(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/adobe/air/wand/view/GestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    .line 190
    return-void
.end method
