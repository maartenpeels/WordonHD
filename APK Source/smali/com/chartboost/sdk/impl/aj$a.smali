.class public abstract Lcom/chartboost/sdk/impl/aj$a;
.super Lcom/chartboost/sdk/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field private b:Z

.field protected f:Lcom/chartboost/sdk/impl/bk;

.field protected g:Lcom/chartboost/sdk/impl/bl;

.field final synthetic h:Lcom/chartboost/sdk/impl/aj;


# direct methods
.method protected constructor <init>(Lcom/chartboost/sdk/impl/aj;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 41
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/f$a;-><init>(Lcom/chartboost/sdk/f;Landroid/content/Context;)V

    .line 43
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/aj$a;->b:Z

    .line 45
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/aj$a;->setBackgroundColor(I)V

    .line 46
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/aj$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    new-instance v0, Lcom/chartboost/sdk/impl/bk;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/impl/bk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj$a;->f:Lcom/chartboost/sdk/impl/bk;

    .line 51
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj$a;->f:Lcom/chartboost/sdk/impl/bk;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/aj$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    const/high16 v9, 0x40000000    # 2.0f

    .line 68
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/aj$a;->b:Z

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aj$a;->d()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/aj$a;->b:Z

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj;->a()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    .line 76
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/impl/aj;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v1

    .line 77
    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/aj;->D:Lcom/chartboost/sdk/Libraries/j;

    .line 79
    :goto_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 85
    iget-object v5, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v5, v3, v1, v10}, Lcom/chartboost/sdk/impl/aj;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 86
    int-to-float v5, p1

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, p2

    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 88
    iget-object v6, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v6, Lcom/chartboost/sdk/impl/aj;->H:F

    .line 89
    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    iget v6, v6, Lcom/chartboost/sdk/impl/aj;->H:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 90
    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    iget v6, v6, Lcom/chartboost/sdk/impl/aj;->H:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 92
    iget-object v5, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    if-eqz v0, :cond_3

    const-string v6, "frame-portrait"

    :goto_2
    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/impl/aj;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v5

    .line 93
    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    iget v7, v5, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v8

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    iget v8, v8, Lcom/chartboost/sdk/impl/aj;->H:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 94
    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v6, p2, v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v7

    div-float/2addr v5, v7

    iget-object v7, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    iget v7, v7, Lcom/chartboost/sdk/impl/aj;->H:F

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 97
    iget-object v5, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v5, v4, v2, v10}, Lcom/chartboost/sdk/impl/aj;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 98
    iget-object v5, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    if-eqz v0, :cond_4

    const-string v0, "close-portrait"

    :goto_3
    invoke-virtual {v5, v0}, Lcom/chartboost/sdk/impl/aj;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    .line 100
    iget v5, v0, Landroid/graphics/Point;->x:I

    if-nez v5, :cond_5

    iget v5, v0, Landroid/graphics/Point;->y:I

    if-nez v5, :cond_5

    .line 102
    iget v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v0, v5

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v0, v5

    .line 103
    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    move v12, v5

    move v5, v0

    move v0, v12

    .line 108
    :goto_4
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v6, p1, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 109
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v5, p2, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 112
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj$a;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj$a;->g:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/bl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj$a;->f:Lcom/chartboost/sdk/impl/bk;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/bk;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 117
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj$a;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj$a;->g:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 119
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/aj;->b(Lcom/chartboost/sdk/impl/aj;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v1

    goto/16 :goto_0

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/aj;->E:Lcom/chartboost/sdk/Libraries/j;

    goto/16 :goto_1

    .line 92
    :cond_3
    const-string v6, "frame-landscape"

    goto/16 :goto_2

    .line 98
    :cond_4
    const-string v0, "close-landscape"

    goto :goto_3

    .line 105
    :cond_5
    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v5, v5

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 106
    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v6, v6

    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v6

    iget v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_4
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-super {p0}, Lcom/chartboost/sdk/f$a;->b()V

    .line 128
    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj$a;->f:Lcom/chartboost/sdk/impl/bk;

    .line 129
    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj$a;->g:Lcom/chartboost/sdk/impl/bl;

    .line 130
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/chartboost/sdk/impl/aj$a$1;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aj$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/aj$a$1;-><init>(Lcom/chartboost/sdk/impl/aj$a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj$a;->g:Lcom/chartboost/sdk/impl/bl;

    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj$a;->g:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/aj$a;->addView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj$a;->h:Lcom/chartboost/sdk/impl/aj;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aj;->c(Lcom/chartboost/sdk/impl/aj;)V

    .line 123
    return-void
.end method
