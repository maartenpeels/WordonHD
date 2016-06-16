.class public final Lcom/chartboost/sdk/impl/ap;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final a:Ljava/lang/CharSequence;

.field private static l:Landroid/os/Handler;


# instance fields
.field private b:Landroid/widget/RelativeLayout;

.field private c:Lcom/chartboost/sdk/impl/ao;

.field private d:Lcom/chartboost/sdk/impl/ao;

.field private e:Lcom/chartboost/sdk/impl/bl;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/chartboost/sdk/impl/al;

.field private h:Lcom/chartboost/sdk/impl/bh;

.field private i:Lcom/chartboost/sdk/impl/ai;

.field private j:Z

.field private k:Z

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/lang/Runnable;

.field private o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "00:00"

    sput-object v0, Lcom/chartboost/sdk/impl/ap;->a:Ljava/lang/CharSequence;

    .line 59
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/ap;->l:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ap;->j:Z

    .line 56
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ap;->k:Z

    .line 267
    new-instance v0, Lcom/chartboost/sdk/impl/ap$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ap$2;-><init>(Lcom/chartboost/sdk/impl/ap;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ap;->m:Ljava/lang/Runnable;

    .line 273
    new-instance v0, Lcom/chartboost/sdk/impl/ap$3;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ap$3;-><init>(Lcom/chartboost/sdk/impl/ap;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ap;->n:Ljava/lang/Runnable;

    .line 332
    new-instance v0, Lcom/chartboost/sdk/impl/ap$4;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ap$4;-><init>(Lcom/chartboost/sdk/impl/ap;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ap;->o:Ljava/lang/Runnable;

    .line 63
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    .line 64
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ap;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/ai;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v6, -0x2

    const/high16 v11, 0x41200000    # 10.0f

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 68
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ap;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ai;->g()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ap;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 71
    mul-float v3, v2, v11

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 74
    new-instance v4, Lcom/chartboost/sdk/impl/bh;

    invoke-direct {v4, v0}, Lcom/chartboost/sdk/impl/bh;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    .line 75
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v4

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/ai$a;->a(Landroid/view/View;)V

    .line 76
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    iget-object v5, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {p0, v5, v4}, Lcom/chartboost/sdk/impl/ap;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/chartboost/sdk/impl/ap;->b:Landroid/widget/RelativeLayout;

    .line 84
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "video-click-button"

    invoke-virtual {v1, v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Lcom/chartboost/sdk/impl/ao;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/ao;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    .line 86
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v1, v10}, Lcom/chartboost/sdk/impl/ao;->setVisibility(I)V

    .line 89
    new-instance v1, Lcom/chartboost/sdk/impl/ap$1;

    invoke-direct {v1, p0, v0}, Lcom/chartboost/sdk/impl/ap$1;-><init>(Lcom/chartboost/sdk/impl/ap;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    .line 98
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Lcom/chartboost/sdk/impl/bl;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->z:Lcom/chartboost/sdk/Libraries/j;

    .line 102
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    const-string v5, "video-click-button"

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/ai;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v4

    .line 103
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 105
    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v6

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 106
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v1, v6}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 107
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v4, v1}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 110
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v1, v4, v5}, Lcom/chartboost/sdk/impl/ao;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v4, v4

    mul-float v5, v11, v2

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v1, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ap;->b:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    :cond_0
    new-instance v1, Lcom/chartboost/sdk/impl/ao;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/ao;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->d:Lcom/chartboost/sdk/impl/ao;

    .line 119
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->d:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v1, v10}, Lcom/chartboost/sdk/impl/ao;->setVisibility(I)V

    .line 120
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x42020000    # 32.5f

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v1, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 123
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ap;->b:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ap;->d:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->d:Lcom/chartboost/sdk/impl/ao;

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Lcom/chartboost/sdk/impl/ao;->setGravity(I)V

    .line 125
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->d:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/chartboost/sdk/impl/ao;->setPadding(IIII)V

    .line 127
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->f:Landroid/widget/TextView;

    .line 128
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->f:Landroid/widget/TextView;

    const/4 v4, 0x2

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 130
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->f:Landroid/widget/TextView;

    sget-object v4, Lcom/chartboost/sdk/impl/ap;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v9, v9, v3, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 132
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 135
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v9, v9}, Landroid/widget/TextView;->measure(II)V

    .line 136
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 138
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ap;->f:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->d:Lcom/chartboost/sdk/impl/ao;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ap;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Lcom/chartboost/sdk/impl/ao;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v1, Lcom/chartboost/sdk/impl/al;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/al;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->g:Lcom/chartboost/sdk/impl/al;

    .line 143
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->g:Lcom/chartboost/sdk/impl/al;

    invoke-virtual {v0, v10}, Lcom/chartboost/sdk/impl/al;->setVisibility(I)V

    .line 144
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    mul-float v1, v11, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ap;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v9, v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 147
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->d:Lcom/chartboost/sdk/impl/ao;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ap;->g:Lcom/chartboost/sdk/impl/al;

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/ao;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bh;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 151
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bh;->getId()I

    move-result v1

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 152
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bh;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 153
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bh;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 154
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/ap;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ap;->a()V

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ap;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ap;->d(Z)V

    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/ao;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/al;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->g:Lcom/chartboost/sdk/impl/al;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/ao;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->d:Lcom/chartboost/sdk/impl/ao;

    return-object v0
.end method

.method private d(Z)V
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ap;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/ap;->a(ZZ)V

    .line 209
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/bl;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    return-object v0
.end method

.method static synthetic f(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/bh;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    return-object v0
.end method

.method static synthetic g(Lcom/chartboost/sdk/impl/ap;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/chartboost/sdk/impl/ap;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/chartboost/sdk/impl/ap;->l:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    .line 303
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ap;->b(Z)V

    .line 304
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ao;->setBackgroundColor(I)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->d:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ao;->setBackgroundColor(I)V

    .line 318
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/bh$a;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 374
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/bh$a;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 375
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/bh$a;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 376
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/bh$a;->a(Landroid/net/Uri;)V

    .line 377
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 244
    sget-object v0, Lcom/chartboost/sdk/impl/ap;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    sget-object v0, Lcom/chartboost/sdk/impl/ap;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    if-eqz p1, :cond_2

    .line 247
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ap;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ao;->setVisibility(I)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->g:Lcom/chartboost/sdk/impl/al;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/al;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->d:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ao;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 264
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ap;->j:Z

    .line 265
    return-void

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->clearAnimation()V

    .line 256
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/ao;->setVisibility(I)V

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->d:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->clearAnimation()V

    .line 259
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->g:Lcom/chartboost/sdk/impl/al;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/al;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->d:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/ao;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected a(ZZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 212
    sget-object v0, Lcom/chartboost/sdk/impl/ap;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    sget-object v0, Lcom/chartboost/sdk/impl/ap;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ap;->j:Z

    if-eq p1, v0, :cond_0

    .line 221
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ap;->j:Z

    .line 223
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ap;->j:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 224
    :goto_1
    if-eqz p2, :cond_4

    const-wide/16 v1, 0x64

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 226
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 227
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/ap;->k:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/impl/ao;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ao;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    if-eqz v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v1, v5}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->g:Lcom/chartboost/sdk/impl/al;

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/impl/al;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->d:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/impl/ao;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->d:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ao;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/ap;->j:Z

    if-eqz v1, :cond_5

    .line 238
    sget-object v0, Lcom/chartboost/sdk/impl/ap;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 223
    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_1

    .line 224
    :cond_4
    const-wide/16 v1, 0xc8

    goto :goto_2

    .line 240
    :cond_5
    sget-object v1, Lcom/chartboost/sdk/impl/ap;->l:Landroid/os/Handler;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ap;->n:Ljava/lang/Runnable;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b()Lcom/chartboost/sdk/impl/bh$a;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v1, -0x1

    .line 285
    if-eqz p1, :cond_2

    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ap;->setBackgroundColor(I)V

    .line 286
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 287
    if-nez p1, :cond_0

    .line 288
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bh;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 289
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bh;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 290
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bh;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 291
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bh;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    if-eqz p1, :cond_3

    const/4 v1, 0x3

    :goto_1
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ao;->setGravity(I)V

    .line 297
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->requestLayout()V

    .line 299
    :cond_1
    return-void

    .line 285
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v1, v3

    .line 296
    goto :goto_1
.end method

.method public c()Lcom/chartboost/sdk/impl/al;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->g:Lcom/chartboost/sdk/impl/al;

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    return-void

    .line 329
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->c:Lcom/chartboost/sdk/impl/ao;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ao;->setVisibility(I)V

    .line 323
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ap;->k:Z

    .line 324
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 326
    :cond_1
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 380
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    sget-object v0, Lcom/chartboost/sdk/impl/ap;->l:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/ap$5;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ap$5;-><init>(Lcom/chartboost/sdk/impl/ap;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bh$a;->a()V

    .line 389
    sget-object v0, Lcom/chartboost/sdk/impl/ap;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    sget-object v0, Lcom/chartboost/sdk/impl/ap;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 391
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bh$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/bh$a;->d()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/ai;->n:I

    .line 396
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bh$a;->b()V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bl;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bl;->postInvalidate()V

    .line 402
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/ap;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bh$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/bh$a;->d()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/ai;->n:I

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bh$a;->b()V

    .line 409
    sget-object v0, Lcom/chartboost/sdk/impl/ap;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bh;->setVisibility(I)V

    .line 417
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ap;->invalidate()V

    .line 419
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bh$a;->e()Z

    move-result v0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/bh$a;->c()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/ai;->n:I

    .line 191
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai$a;->e()V

    .line 193
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 173
    sget-object v0, Lcom/chartboost/sdk/impl/ap;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->t()V

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/bh$a;->c()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/ai;->o:I

    .line 198
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ai$a;->a(Z)V

    .line 199
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 179
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->h:Lcom/chartboost/sdk/impl/bh;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bh$a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->G:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/chartboost/sdk/impl/ap;->j:Z

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    :cond_0
    invoke-direct {p0, v3}, Lcom/chartboost/sdk/impl/ap;->d(Z)V

    move v0, v3

    .line 185
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 164
    :cond_0
    if-eqz p1, :cond_1

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ap;->a(Z)V

    .line 168
    :cond_1
    return-void
.end method
