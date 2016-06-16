.class public Lcom/chartboost/sdk/impl/ah$a;
.super Lcom/chartboost/sdk/impl/aj$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field protected b:Lcom/chartboost/sdk/impl/bl;

.field protected c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/chartboost/sdk/impl/ah;


# direct methods
.method protected constructor <init>(Lcom/chartboost/sdk/impl/ah;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/ah;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/aj$a;-><init>(Lcom/chartboost/sdk/impl/aj;Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/chartboost/sdk/impl/ah$a$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/chartboost/sdk/impl/ah$a$1;-><init>(Lcom/chartboost/sdk/impl/ah$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/ah;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->b:Lcom/chartboost/sdk/impl/bl;

    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ah$a;->a(Landroid/view/View;)V

    .line 42
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->c:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->c:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 44
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ah$a;->addView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ah$a;->addView(Landroid/view/View;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v0, v1, v1}, Lcom/chartboost/sdk/impl/ah;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z

    .line 51
    return-void
.end method

.method protected a(II)V
    .locals 7

    .prologue
    const/4 v3, -0x2

    const/high16 v6, 0x40000000    # 2.0f

    .line 55
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/impl/aj$a;->a(II)V

    .line 56
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ah;->a()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    .line 60
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/ah;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v1

    .line 61
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/ah;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/ah;

    iget v4, v4, Lcom/chartboost/sdk/impl/ah;->H:F

    invoke-virtual {v3, v2, v1, v4}, Lcom/chartboost/sdk/impl/ah;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 65
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/ah;

    if-eqz v0, :cond_1

    const-string v0, "ad-portrait"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/impl/ah;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    .line 66
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/ah;

    iget v5, v5, Lcom/chartboost/sdk/impl/ah;->H:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 67
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v4

    div-float/2addr v0, v4

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/ah;

    iget v4, v4, Lcom/chartboost/sdk/impl/ah;->H:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->b:Lcom/chartboost/sdk/impl/bl;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bl;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 73
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/ah;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ah;->b(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_1
    const-string v0, "ad-landscape"

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-super {p0}, Lcom/chartboost/sdk/impl/aj$a;->b()V

    .line 78
    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->b:Lcom/chartboost/sdk/impl/bl;

    .line 79
    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->c:Landroid/widget/ImageView;

    .line 80
    return-void
.end method
