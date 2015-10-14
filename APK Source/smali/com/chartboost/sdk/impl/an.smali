.class public abstract Lcom/chartboost/sdk/impl/an;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/an$2;,
        Lcom/chartboost/sdk/impl/an$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/chartboost/sdk/impl/ai;

.field private b:Lcom/chartboost/sdk/impl/ao;

.field private c:Lcom/chartboost/sdk/impl/an$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ai;

    .line 35
    sget-object v0, Lcom/chartboost/sdk/impl/an$a;->b:Lcom/chartboost/sdk/impl/an$a;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/an;->c:Lcom/chartboost/sdk/impl/an$a;

    .line 36
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/an;->a(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 76
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/an;->setGravity(I)V

    .line 80
    new-instance v1, Lcom/chartboost/sdk/impl/ao;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/ao;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/an;->b:Lcom/chartboost/sdk/impl/ao;

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->b:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ao;->a(I)V

    .line 82
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->b:Lcom/chartboost/sdk/impl/ao;

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ao;->setBackgroundColor(I)V

    .line 83
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->b:Lcom/chartboost/sdk/impl/ao;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/an;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/an;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void
.end method

.method private a(ZJ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 96
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ai;

    iput-boolean p1, v0, Lcom/chartboost/sdk/impl/ai;->t:Z

    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    new-instance v0, Lcom/chartboost/sdk/impl/an$1;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/an$1;-><init>(Lcom/chartboost/sdk/impl/an;Z)V

    .line 109
    if-eqz p1, :cond_3

    .line 110
    invoke-virtual {p0, v6}, Lcom/chartboost/sdk/impl/an;->setVisibility(I)V

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(FLandroid/content/Context;)F

    move-result v1

    .line 113
    const/4 v2, 0x0

    .line 114
    sget-object v3, Lcom/chartboost/sdk/impl/an$2;->a:[I

    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->c:Lcom/chartboost/sdk/impl/an$a;

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/an$a;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move-object v1, v2

    .line 128
    :goto_1
    invoke-virtual {v1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    if-eqz p1, :cond_c

    move v2, v6

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/an;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->h:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 116
    :pswitch_0
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_4

    neg-float v3, v1

    :goto_3
    if-eqz p1, :cond_5

    move v1, v5

    :goto_4
    invoke-direct {v2, v5, v5, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v1, v2

    .line 117
    goto :goto_1

    :cond_4
    move v3, v5

    .line 116
    goto :goto_3

    :cond_5
    neg-float v1, v1

    goto :goto_4

    .line 119
    :pswitch_1
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_7

    move v3, v1

    :goto_5
    if-eqz p1, :cond_6

    move v1, v5

    :cond_6
    invoke-direct {v2, v5, v5, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v1, v2

    .line 120
    goto :goto_1

    :cond_7
    move v3, v5

    .line 119
    goto :goto_5

    .line 122
    :pswitch_2
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_8

    neg-float v3, v1

    :goto_6
    if-eqz p1, :cond_9

    move v1, v5

    :goto_7
    invoke-direct {v2, v3, v1, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v1, v2

    .line 123
    goto :goto_1

    :cond_8
    move v3, v5

    .line 122
    goto :goto_6

    :cond_9
    neg-float v1, v1

    goto :goto_7

    .line 125
    :pswitch_3
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_b

    move v3, v1

    :goto_8
    if-eqz p1, :cond_a

    move v1, v5

    :cond_a
    invoke-direct {v2, v3, v1, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v1, v2

    goto :goto_1

    :cond_b
    move v3, v5

    goto :goto_8

    .line 129
    :cond_c
    const/4 v2, 0x1

    goto :goto_2

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected abstract a()Landroid/view/View;
.end method

.method public a(Lcom/chartboost/sdk/impl/an$a;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the given side cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/chartboost/sdk/impl/an;->c:Lcom/chartboost/sdk/impl/an$a;

    .line 43
    const/4 v0, 0x0

    .line 45
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/an;->setClickable(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->b()I

    move-result v1

    .line 49
    sget-object v2, Lcom/chartboost/sdk/impl/an$2;->a:[I

    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->c:Lcom/chartboost/sdk/impl/an$a;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/an$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 72
    :goto_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/an;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void

    .line 51
    :pswitch_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->b:Lcom/chartboost/sdk/impl/ao;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/ao;->b(I)V

    goto :goto_0

    .line 56
    :pswitch_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 58
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->b:Lcom/chartboost/sdk/impl/ao;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/ao;->b(I)V

    goto :goto_0

    .line 61
    :pswitch_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->b:Lcom/chartboost/sdk/impl/ao;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/ao;->b(I)V

    goto :goto_0

    .line 66
    :pswitch_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->b:Lcom/chartboost/sdk/impl/ao;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/ao;->b(I)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 92
    const-wide/16 v0, 0xfa

    invoke-direct {p0, p1, v0, v1}, Lcom/chartboost/sdk/impl/an;->a(ZJ)V

    .line 93
    return-void
.end method

.method protected abstract b()I
.end method
